;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer)

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

;;;***************
;;;* QUERY RULES *
;;;***************


(defrule determine-rental-type ""
   (not (working-state engine ?))
   (not (repair ?))
   =>
   (if (tree-state "Do you mind smoking (yes/no/don't care)? ") 
       then 
       (if (yes-or-no "Does the engine run normally (yes/no)? ")
           then (assert (working-state engine normal))
           else (assert (working-state engine unsatisfactory)))
       else 
       (assert (working-state engine does-not-start))))

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