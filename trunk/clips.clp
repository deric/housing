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
	(slot is_final)
)

(defclass Proposal
	(is-a USER)
	(role concrete)
	(slot score)
	(slot offer)
	(slot is_proposed)
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
;(deffunction print-proposals ($?proposals)
 ; multifieldp is to check if the field is a multifield
 ; (printout t (multifieldp $offers) crlf)
;  (bind ?i 1)
;	(while (<= ?i (length$ ?proposals))
;	  do
;	    (bind ?curr (nth$ ?i ?proposals)) ; get item from array
;      ;(send [b] get-foo)
;	    (printout t (send ?curr:offer print)) ; call message print on ?curr
;	    (bind ?i (+ ?i 1)) ; i+=1
;	)
;)


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
  ?recommendation <- (recommendation (is_final ok))
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
    ;;;initialize our system and so get all instances of offer and copy them into
    ;;;a new instance proposal
    (do-for-all-instances ((?offer Offer))
     ;do-for condition
     TRUE
     ;do-for execution
     (make-instance of Proposal (score 0) (offer ?offer) (is_proposal FALSE))
    )
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
  (not (somefact budgetcheck ?))
	?user <- (object (is-a Person))
  ?recommendation <- (recommendation (is_final ?))
	=>
  (if (yes-or-no "Are you willing to pay more for the house of your dreams?")
    then
      ; We add 10% to the price range
      ; HARD CONSTRAINT SO REMOVE FROM INSTANCES
      ;add 1 points to soft constraints
      (do-for-all-instances ((?proposal Proposal))

        ;do-for condition

        ;ASK THIS!! how can I access this one
        ;(<= (send ?proposal get-offer):rent (* (send ?user get-max_budget) 1.1 ))
        TRUE
        ;do-for execution
        (send ?proposal put-is_proposed TRUE)
        (send ?proposal put-score (+ 1 (send ?proposal get-score)))
      )
    else
      ; We have a strict price range
      ; We add 2 points
      (do-for-all-instances ((?proposal Proposal))
        ;do-for condition
        ;(>= (send ?proposal get-offer):rent (send ?user get-max_budget))
        TRUE
        ;do-for execution
        (send ?proposal put-is_proposed TRUE)
        (send ?proposal put-score (+ 1 (send ?proposal get-score)))
      )
  )
  ; use the function print-proposals for printing our offers
	(assert (somefact budgetcheck ok))
)


(defrule decision-test
	(Person budget ok)
  (not (somefact test ?))
	?user <- (object (is-a Person))
  ?recommendation <- (recommendation (is_final ?))
	=>
  (if (yes-or-no "Just a test?")
    then
      ; We add 2 points
      (do-for-all-instances ((?proposal Proposal))
        ;(>= (send ?proposal get-offer):rent 400)
        TRUE
        (send ?proposal put-is_proposed TRUE)
        (send ?proposal put-score (+ 2 (send ?proposal get-score)))
      )
  	else
      ; We add 4 points
      (do-for-all-instances ((?proposal Proposal)) TRUE
        (send ?proposal put-is_proposed TRUE)
        (send ?proposal put-score (+ 4 (send ?proposal get-score)))
      )
  )
	(assert (somefact test ok))
)

;;; check if we passed all our subsets of questions

(defrule end-of-questions
	?budget <- (Proposal budgetcheck ok)
  ?test <- (Proposal test ok)
	?recommendation <- (recommendation (is_final ?))
	=>
	(retract ?budget)
	(modify ?recommendation (is_final ok))
  (pop-focus)
)


;;;----------------------------------------------- -
;;;- define a module for the output of our program -
;;;-------------------------------------------------
(defmodule output "Module for outputting the results"
	(import MAIN ?ALL)
)

(defrule print
	?recommendation <- (recommendation (person ?person) (is_final print))
	=>
	(printout t "---------------------------------------------------------------------" crlf)
  ;;;%s stands for string
  ;;;%n stands for newline
	(format t "Sr/a. %s,%s%n" (send ?person get-firstname) (send ?person get-surname))
	(printout t "This is the list of proposals" crlf crlf)
	(do-for-all-instances ((?proposal Proposal))
        TRUE
        ;(send ?proposal put-is_proposed TRUE)
        ;(send ?proposal put-score (+ 2 (send ?proposal get-score)))
        (printout t (send ?proposal:offer print))
  )
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
