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
   
(defclass person
	(is-a USER)
	(slot age)
	(slot occupation)
)

(defmessage-handler Offer tostring ()
	(printout t "----------------------------------" crlf)
	(format t "Offer: %s%n" ?self:title)
	(printout t "----------------------------------" crlf crlf)
)

(deftemplate recommendation "Expert system would recommend you this offers:"
	(slot name)
	(slot final?)
)

;;;***************
;;;* QUERY RULES *
;;;***************


(defrule determine-room-type ""
   =>
   (bind ?answer (question "Are you going to live in a room:" alone partner other) )
   (switch ?answer
      (case alone
	  then
	  (printout t " allooone" crlf)
	  	(bind ?i 1)
		(bind ?inst (find-all-instances (?it Offer)))
	  	(while (<= ?i (length$ ?inst))
		do
			(printout t (send ?inst tostring))
			(bind ?i (+ ?i 1))
		)
      )
      (case partner 
	    then
	      (printout t "partner" crlf)
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