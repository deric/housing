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
	(printout t "----------------------------------" crlf crlf)
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

(deffunction ask-nummer (?question ?range-start ?range-end)
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
  ?rec <- (recommendation (person ?person) (is_final ok) (offer $?list-of-offers))
  =>
	(modify ?rec (is_final print))
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
	;(not (object (is-a Person)))
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

(defrule start-engine
	(Person complete ok)
	=>
	(focus runengine)
)

;;;-------------------------------------------------------------
;;;- define a new module that imports our data that we gathered-
;;;-------------------------------------------------------------


(defmodule runengine "Module that analyzes data with information"
	(import MAIN ?ALL)
	(import personal-questions ?ALL)
	(export ?ALL)
)


(defrule find-interesting-places "find new places"
  ?rec <- (recommendation (offer $?list-of-offers & : (= (length ?list-of-offers) 0)))
  =>
  (printout t "entered the interesting places stuff" crlf)
  (bind ?group-of-answer (create$ 0))
	(bind ?answer "")
  (bind ?i 1)
	(bind ?inst (find-all-instances ((?it Offer)) (= ?it:rent 500)) )
	(while (<= ?i (length$ ?inst))
    do
      (bind ?curr (nth$ ?i ?inst)) ; get item from array
      (printout t (send ?curr print)) ; call message print on ?curr
      (bind ?i (+ ?i 1)) ; i+=1
  )
)

;(defrule determine-room-type ""
;   =>
;   (bind ?answer (question "Are you going to live in a room:" alone partner other) )
;   (switch ?answer
;      (case alone
;	  then
;	    (assert (room_num 1))
	;    (bind ?i 1)
	;(bind ?inst (find-all-instances ((?it Offer)) (= ?it:rent 500)) )
	;(while (<= ?i (length$ ?inst))
	;do
	;(bind ?curr (nth$ ?i ?inst)) ; get item from array
	;(printout t (send ?curr print)) ; call message print on ?curr
	;(bind ?i (+ ?i 1)) ; i+=1
	;)
;        )
;   )
; )
 
; (defrule determine-possesion-car
;   =>
;   (if (yes-or-no "Do you have a car") 
;       then
;	   (assert (car TRUE))
;       else
;	   (assert (car FALSE))
;   )
; )


; (defrule determine-house-purpose
; ?user <- (object (is-a Person))
; (not (Person age ?))
;   =>
;   (bind ?answer (question "What is the purpose of the realty:" all house office) )
;   (switch ?answer
;      (case all
;        then
;        (send ?user put-age 18)
;        (assert (personal-data (area-type all)))
;        ;;;create new offer
;        (bind ?instance (make-instance h-offer of Offer))
;        (send ?instance put-title "offer title")
;        (bind ?list-of-offers (insert$ ?list-of-offers 1 ?instance))
;        (assert (recommendation (is_final print)))
;     )
;   )
;   
; )

;(defrule print
;	?rec <- (recommendation (name ?) (is_final print) (offer $?list-of-offers))
;	=>
;	(printout t "---------------------------------------------------------------------" crlf)
;	(printout t "Your recommendations" crlf crlf)

  ;;;foreach of the offers in our list
;	(bind ?i 1)
;	(while (<= ?i (length$ ?list-of-offers))
;		do
;			(bind ?curr-offer (nth$ ?i ?list-of-offers))
;			(printout t (send ?curr-offer print))
;			(bind ?i (+ ?i 1))
;	)

  ;;;program has finished
;	(modify ?rec (is_final finished))
;	(pop-focus)
;)
 
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
