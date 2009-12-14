;;; ---------------------------------------------------------------------------------------------------------------------
;;; ---------------------------------------------- ENGINE ---------------------------------------------------------------
;;; ---------------------------------------------------------------------------------------------------------------------

;;**************
;;* DEFCLASSES *
;;**************

(defclass MAIN::Result
	(is-a USER)
	(single-slot value
		(type INSTANCE))
	(single-slot quantity
		(type INTEGER))
)

(defmodule MAIN (export ?ALL))

;;**************
;;* GLOBALS *
;;**************

(defglobal ?*answer* = 0)

;;****************
;;* DEFTEMPLATE *
;;****************

(deftemplate recommendation
  (slot person)
  (multislot offer)
	(slot is_final)
)


;;************
;;* MESSAGES *
;;************

(defmessage-handler Offer print()
  (printout t "----------------------------------" crlf)
  (format t "Offer: %s%n" ?self:title) 
	(format t "Price: %f%n" ?self:rent)
  (printout t crlf)
  (format t "Score: %f%n" ?self:score)
  (printout t crlf)
)


;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction question (?question $?allowed-values)
	(progn$ (?var ?allowed-values) (lowcase ?var))
	(format t "%s? (%s) " ?question (implode$ ?allowed-values))
	(bind ?answer (read))
	(if (lexemep ?answer) 
	    then (bind ?answer (lowcase ?answer)))
	(while (not (member ?answer ?allowed-values)) do
	    (format t "%s? " ?question)
	    (bind ?answer (read))
	    (if (lexemep ?answer) 
		then (bind ?answer (lowcase ?answer))))
	?answer
)
 
(deffunction ask-question (?question $?allowed-values)
    (format t "%s? (%s) " ?question (implode$ ?allowed-values))
    (bind ?response (read))
    ?response
)


(deffunction ask-open-question (?question)
	(format t "%s? " ?question)
	(bind ?question (read))
	?question
)

; Function for printing final results
(deffunction print-proposals ($?offers)
 ; multifieldp is to check if the field is a multifield
 ; (printout t (multifieldp $offers) crlf)
  (bind ?i 1)
	(while (<= ?i (length$ ?offers))
	  do
	    (bind ?curr (nth$ ?i ?offers)) ; get item from array
	    (printout t (send ?curr print)) ; call message print on ?curr
	    (bind ?i (+ ?i 1)) ; i+=1
	)
)


(deffunction ask-number (?question ?range-start ?range-end)
	(format t "%s? [%d, %d] " ?question ?range-start ?range-end)
	(bind ?response (read))
	(while (not(and(> ?response ?range-start)(< ?response ?range-end))) do
		(format t "%s? [%d, %d] " ?question ?range-start ?range-end)
		(bind ?response (read))
	)
	?response
)

(deffunction yes-or-no (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE 
       else FALSE))

(deffunction tree-state (?question)
   (bind ?response (ask-question ?question yes no dontcare y n x))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE) 
   (if (or (eq ?response no) (eq ?response n))    
       then FALSE)
   NULL)
   
 


;;;*********
;;;* RULES *
;;;*********

;;;---------------------------------------------------
;;;- Presentation stuff and the start of the sequence
;;;--------------------------------------------------

(defrule start
	(declare (salience 10))
	=>
	(printout t "------------------------------------------" crlf)
  (printout t "------ Expert system to find a house -----" crlf)
  (printout t "------------------------------------------" crlf)
  (printout t crlf)
  ;;;go to module personal-questions
  (focus personal-questions)
)

;;;-------------------------------------------------------------------------
;;;- after the personal questions we are going to output the recommendations
;;;-------------------------------------------------------------------------

(defrule your-recommendation-is
  (declare (salience 10))
  ?recommendation <- (recommendation (is_final ok) (offer $?offers))
  =>
	(modify ?recommendation (is_final print))
  ;;;go to module output
	(focus output)
)

;;;------------------------------------------
;;;- defining the personal questions module
;;;------------------------------------------

(defmodule personal-questions "Module to know the needs of our user"
	(import MAIN ?ALL)
	(export ?ALL)
  
)

(defrule your-name "Find out our name"
	(not (object (is-a Person)))
	=>
	(bind ?firstname (ask-open-question "What is your firstname"))
  (bind ?surname (ask-open-question "What is your surname"))
  ;;;create an instance of Person
	(bind ?user (make-instance user of Person))
  ;;;add this to our instance of Person
	(send ?user put-firstname ?firstname)
  (send ?user put-surname ?surname)
  ;;;insert this Person into recommendation
	(assert (recommendation (person ?user)))
  ;;;add facts that our first and surname are ok
	(assert (Person firstname ok))
  (assert (Person surname ok))
  (assert (Person complete ok))
)

;;;-----------------------------------------------------------------------
;;;- run our queries on the gathered information and the available houses-
;;;-----------------------------------------------------------------------

(defrule start-house-queries
	(Person complete ok)
	=>
	(focus house-queries)
)

;;;-------------------------------------------------------------
;;;- define a new module that imports our data that we gathered-
;;;-------------------------------------------------------------



(defmodule house-queries "Module that gathers information about the searched house"
	(import MAIN ?ALL)
	(import personal-questions ?ALL)
	(export ?ALL)
)



;;; Get our maximum budget
(defrule house-max-budget
	(not (Person budget ?))
  ?user <- (object (is-a Person))
	=>
	(bind ?max_budget (ask-number "What is your maximum budget for a house" 0 10000000))
	(send ?user put-max_budget ?max_budget)
	(assert (Person budget ok))
)


(defrule decision-budget
	(Person budget ok)
  (not (Proposal budgetcheck ?))
	?user <- (object (is-a Person))
  ?recommendation <- (recommendation (is_final ?) (offer $?offers))
	=>
  (if (yes-or-no "Are you willing to pay more for the house of your dreams?")
    then
      ; We add 10% to the price range
      ; HARD CONSTRAINT SO REMOVE FROM INSTANCES
      ;add 1 points to soft constraints
      (do-for-all-instances ((?offer Offer))
        ;do-for condition
        (>= ?offer:rent (* (send ?user get-max_budget) 1.1 ))
        ;do-for execution
        (send ?offer delete)
      )
    else
      ; We have a strict price range
      ; We add 2 points
      (do-for-all-instances ((?offer Offer))
        ;do-for condition
        (>= ?offer:rent (send ?user get-max_budget))
        ;do-for execution
        (send ?offer delete)
        ;(send ?offer put-score (+ 2 (send ?offer get-score)))
      )
  )
  
  (printout t "num offers: " (length$ ?offers) crlf)
  ; use the function print-proposals for printing our offers
  ;(print-proposals ?offers)
	(assert (Proposal budgetcheck ok))
)


(defrule decision-test
	(Person budget ok)
  (not (Proposal test ?))
	?user <- (object (is-a Person))
  ?recommendation <- (recommendation (is_final ?) (offer $?offers))
	=>
  (if (yes-or-no "Just a test?")
    then
      ; We add 2 points
      (do-for-all-instances ((?offer Offer))
        (>= ?offer:rent 400)
        (send ?offer put-score (+ 2 (send ?offer get-score)))
      )
      ;(modify ?recommendation (offer ?offers))
  	else
      ; We add 4 points
      (do-for-all-instances ((?offer Offer)) TRUE
        (send ?offer put-score (+ 1 (send ?offer get-score)))
      )
  )
  
  (printout t "num offers: " (length$ ?offers) crlf)
  ; use the function print-proposals for printing our offers
  ;(print-proposals ?offers)
	(assert (Proposal test ok))
)

;;; check if we passed all our subsets of questions

(defrule end-of-questions
	?budget <- (Proposal budgetcheck ok)
  ?test <- (Proposal test ok)
	?recommendation <- (recommendation (is_final ?) (offer $?offers))
	=>
	(retract ?budget)
	(modify ?recommendation (is_final ok))
  
  (bind ?offers (find-all-instances ((?offer Offer)) TRUE))
  (modify ?recommendation (offer ?offers))
  (print-proposals ?offers)
  (pop-focus)
)


;;;----------------------------------------------- -
;;;- define a module for the output of our program -
;;;-------------------------------------------------
(defmodule output "Module for outputting the results"
	(import MAIN ?ALL)
)

(defrule print
	?recommendation <- (recommendation (person ?person) (is_final print) (offer $?offers))
	=>
	(printout t "---------------------------------------------------------------------" crlf)
  ;;;%s stands for string
  ;;;%n stands for newline
	(format t "Sr/a. %s,%s%n" (send ?person get-firstname) (send ?person get-surname))
	(printout t "This is the list of proposals" crlf crlf)
	(print-proposals ?offers)
  (printout t "---------------------------------------------------------------------" crlf)
  (printout t "Thank you for using our housing service" crlf)
  (printout t "---------------------------------------------------------------------" crlf)
	(modify ?recommendation (is_final finished))
	(pop-focus)
)
 
;;;****************************
;;;* STARTUP AND REPAIR RULES *
;;;****************************

;(defrule system-banner ""
;  (declare (salience 10))
;  =>
;  (printout t crlf crlf)
;  (printout t "Housing Expert System")
;  (printout t crlf crlf))

;(defrule print-offer ""
;  (declare (salience 10))
;  (repair ?item)
;  =>
;  (printout t crlf crlf)
;  (printout t "Suggested offer:")
;  (printout t crlf crlf)
;  (format t " %s%n%n%n" ?item))
