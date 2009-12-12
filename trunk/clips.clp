;;; ---------------------------------------------------------------------------------------------------------------------
;;; ---------------------------------------------- ENGINE ---------------------------------------------------------------
;;; ---------------------------------------------------------------------------------------------------------------------

;;**************
;;* DEFCLASSES *
;;**************

(defclass person
	(is-a USER)
	(slot age)
	(slot occupation)
)

;;****************
;;* DEFTEMPLATE *
;;****************

(deftemplate recommendation "Expert system would recommend you this offers:"
	(slot name)
  ;(multislot Offers)
	(slot final?)
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
	    (format t "%s? " ?question)O
	    (bind ?answer (read))
	    (if (lexemep ?answer) 
		then (bind ?answer (lowcase ?answer))))
	?answer
)
(deffunction ask-question (?question $?allowed-values)
    (format t "%s? (%s) " ?question (implode$ ?allowed-values))
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
   
 
 ;(defmodule MAIN (export ?ALL))


;;;*********
;;;* RULES *
;;;*********

(defrule determine-room-type ""
   =>
   (bind ?answer (question "Are you going to live in a room:" alone partner other) )
   (switch ?answer
      (case alone
	  then
<<<<<<< HEAD:trunk/clips.clp
	  	(bind ?i 1)
		(bind ?inst (find-all-instances ((?it Offer)) (= ?it:rent 500)) )
	  	(while (<= ?i (length$ ?inst))
		do
			(bind ?curr (nth$ ?i ?inst)) ; get item from array
			(printout t (send ?curr print)) ; call message print on ?curr
			(bind ?i (+ ?i 1)) ; i+=1
		)
=======
    (bind ?i 1)
    (bind ?inst (find-all-instances ((?it Offer)) (= ?it:rent 500)) )
      (while (<= ?i (length$ ?inst))
        do
        (bind ?curr (nth$ ?i ?inst)) ; get item from array
        (printout t (send ?curr print)) ; call message print on ?curr
        (bind ?i (+ ?i 1)) ; i+=1
        )
        )
   )
 )

 (defrule determine-environment-type ""
   =>
   (bind ?answer (question "In what kind of environment do you want to live:" quiet centric young residential outskirts) )
   (switch ?answer
      (case quiet
        then
>>>>>>> b84ab13fba4a6f71557edf8d6b3597dd312e6f9b:trunk/clips.clp
      )
      (case centric
	    then
	      (printout t "centric" crlf)
      )
   )
 )

;;;****************************
;;;* STARTUP AND REPAIR RULES *
;;;****************************

(defrule system-banner ""
  (declare (salience 10))
  =>
  (printout t crlf crlf)
  (printout t "Housing Expert System")
  (printout t crlf crlf))

(defrule print-offer ""
  (declare (salience 10))
  (repair ?item)
  =>
  (printout t crlf crlf)
  (printout t "Suggested offer:")
  (printout t crlf crlf)
  (format t " %s%n%n%n" ?item))
