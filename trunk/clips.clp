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
  (printout t crlf)
)
 
(defmessage-handler Proposal print()
  (printout t (send ?self:offer print)) 
  (format t "Is proposed: %s%n" ?self:is_proposed)
  (format t "Score: %f%n" ?self:score)
  (printout t crlf)
  (printout t crlf)
)
 
 ;(defmessage-handler Proposal get-offer()
 ; ?self:offer
 ;) 
 

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
   
 ;distance between two Coordinates objects
(deffunction distance (?c1 ?c2)
	(bind ?result 0.0)
	(bind ?x (- (send ?c1 get-longitude) (send ?c2 get-longitude)))
	(bind ?y (- (send ?c1 get-latitude) (send ?c2 get-latitude)))
	(bind ?result (sqrt (+ (** ?x 2) (** ?y 2))))
	?result
)


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
	(focus personal-questions house-queries EOP)
)

;;;-------------------------------------------------------------------------
;;;- after the personal questions we are going to output the recommendations
;;;- this should be in this order!
;;;-------------------------------------------------------------------------

(defrule your-recommendation-is
  (declare (salience 10))
  ?recommendation <- (recommendation (is_final ok))
  =>
  (printout t "modify the recommendations" crlf crlf)
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
     (make-instance of Proposal (score 0) (offer ?offer) (is_proposed FALSE))
    )
  ;(focus house-queries)
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
(defrule house-type
	(not (Person type-of-house ?))
	?user <- (object (is-a Person))
	=>
	(bind ?type-of-house (question "What type of real estate are you looking for" office house flat))
	;(send ?user put-max_budget ?max_budget)
	(assert (Person type-of-house ?type-of-house))
)

;;;DEFINE NUMBER OF ROOMS
;;; get the number of rooms in case of office
(defrule house-office-rooms
	(not (Person room-num ?))
	(Person type-of-house office)
	?user <- (object (is-a Person))
	=>
	(bind ?rooms (ask-number "How many rooms do you need" 0 20))
	;(send ?user put-max_budget ?max_budget)
	(assert (Person room-num ?rooms))
	
)

;;; set the number of rooms if it is not office
;;;also define the number of people living there or children
(defrule house-other-rooms
	(not (Person room-num ?))
	(not (Person type-of-house office))
	?user <- (object (is-a Person))
	=>

	(bind ?type-of-family (question "U are looking for a place to live for?" alone partner children))
	(if (= (str-compare ?type-of-family "alone") 0)
		then
		(assert (Person room-num 1))
	)
	(if (= (str-compare ?type-of-family "partner") 0)
		then
		(if (yes-or-no "are you planning to have children soon")
		then
			(assert (Person room-num 3))
		else
			(assert (Person room-num 2))
		)
		;;in any case we need a double room
		(assert (Person room-type double))

	)
	(if (= (str-compare ?type-of-family "children") 0)
		then
		(bind ?children (ask-number "How many children are living with you" 0 20))
		(assert (Person room-num (round (/ ?children 2))))
		(assert (Person house-shared FALSE))
		(assert (Person children ?children))
	)
)

;;;set office centric location
;;; get the number of rooms in case of office
(defrule house-office-location
	(numberp Person num-rooms)
	(Person type-of-house office)
	?user <- (object (is-a Person))
	=>
	(if (yes-or-no "is a centric office important for you")
		then
		(assert (Person location centric))
	)
)

;;; Get our maximum budget
(defrule house-max-budget
	(not (Person budget ?))
	?user <- (object (is-a Person))
	=>
	(bind ?max_budget (ask-number "What is your maximum budget" 0 10000000))
	(send ?user put-max_budget ?max_budget)
	(assert (Person budget ok))
)

(defrule decision-budget
	(Person budget ok)
  (not (checklist budgetcheck ?))
	?user <- (object (is-a Person))
  ?recommendation <- (recommendation (is_final ?))
	=>
  (if (yes-or-no "Are you willing to pay more for the house of your dreams?")
    then
      ; We add 10% to the price range
      ; HARD CONSTRAINT SO REMOVE FROM INSTANCES
      ;add 1 points to soft constraints
      (do-for-all-instances 
	;instance template
	((?proposal Proposal))
	;instance-set query
	(<= (send (send ?proposal get-offer) get-rent) (* (send ?user get-max_budget) 1.1 ))
        ;distributed action
	(send ?proposal put-is_proposed TRUE)
	(send ?proposal put-score (+ (send ?proposal get-score) 1))
      )
    else
      ; We have a strict price range
      ; We add 2 points
      (do-for-all-instances 
	((?proposal Proposal))
        ;do-for condition
        (<= (send (send ?proposal get-offer) get-rent) (send ?user get-max_budget))
        ;do-for execution
	(send ?proposal put-is_proposed TRUE)
	(send ?proposal put-score (+ (send ?proposal get-score) 1))
      )
  )
  ; use the function print-proposals for printing our offers
	(assert (checklist budgetcheck ok))
)


;;; check if we passed all our subsets of questions

(defrule end-of-questions
	?budget <- (checklist budgetcheck ok)
  ;?test <- (checklist test ok)
	?recommendation <- (recommendation (is_final ?))
	=>
  (printout t "end of questions" crlf crlf)
	(retract ?budget)
  ;(retract ?test)
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
	(do-for-all-instances 
	    ((?proposal Proposal))
	    (eq (send ?proposal get-is_proposed) TRUE)
	    ;action
	    (printout t (send ?proposal print))
	)
	(modify ?recommendation (is_final finished))
	(pop-focus)
)
 
 
 
(defmodule EOP "end of program"
  (import MAIN ?ALL)
)

(defrule endprogram "final rule"
  (declare (salience -100))
  ?recommendation <- (recommendation (person ?person) (is_final finished))
	=>
  (printout t "---------------------------------------------------------------------" crlf)
  (printout t "Thank you for using our housing service" crlf)
  (printout t "---------------------------------------------------------------------" crlf)   
  (printout t crlf)  
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
