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
 

(defmessage-handler Coordinates print primary()
  (format t "%f;%f" ?self:latitude ?self:longitude)
  (printout t crlf)
)
 
(defmessage-handler Address print()
  (format t "Address: %s %n" ?self:street)
  (printout t (send ?self:coordinates print) crlf)
)
 
 
(defmessage-handler MAIN::Service print()
  (printout t "++++++++++++++++++++++++++++++++++" crlf)
  (format t "Service: %s%n" ?self:title)
  (printout t)
  (printout t (send ?self:address print))
)
 
(defmessage-handler Service coor()
  (bind ?c (send ?self:address get-coordinates))
  ?c
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

(deffunction count-distance (?adr1 ?adr2)
  ;(printout t (send ?adr1  print) crlf)
  ;(printout t (send ?adr2 get-coordinates) crlf)
  (bind ?result (distance (send ?adr1 get-coordinates) (send ?adr2 get-coordinates)))
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
      (assert (Person children 1))
		)
		;;in any case we need a double room
		(assert (Person room-type double))

	)
	(if (= (str-compare ?type-of-family "children") 0)
		then
		(bind ?children (ask-number "How many children are living with you" 0 20))
    ;;;we add 2, 1 for the parents (see the double room type and 1 anyway for the child + the rounded amount of rooms needed extra
		(assert (Person room-num (+ 2 (round (/ ?children 2)))))
		(assert (Person house-shared FALSE))
		(assert (Person children ?children))
	)
)

;;;DEFINE CAR OR NOT
;;; get the fact if the user has a car or not
(defrule user-car
	(not (Person has-car ?))
	?user <- (object (is-a Person))
	=>
	(bind ?hascar (yes-or-no "Do you have a car?"))
	(assert (Person has-car ?hascar))
)

;;;BRINGING CHILDREN TO SCHOOL WITH CAR?
;;; get the fact if the user has a car or not
(defrule user-car-children
	(Person has-car TRUE)
	(not (Person type-of-house office))
  (Person children ?)
	?user <- (object (is-a Person))
	=>
	(bind ?bringschildren (yes-or-no "Are you bringing the children to school by car?"))
  (if (eq ?bringschildren TRUE)
       then (assert (Person public-transport FALSE))
       else (assert (Person public-transport TRUE))
  )
)

;;; ASK FOR WHICH KIND OF ENVIRONMENT
;;; ASSERT FACT IF A SERVICE SHOULD BE CLOSE OR FAR
(defrule house-environment
	(not (Person type-of-environment ?))
	?user <- (object (is-a Person))
	=>
	(bind ?type-of-environment (question "what kind of environment do you want to live in?" quiet centric young residential outskirts))
	(if (= (str-compare ?type-of-environment "quiet") 0)
		then
		(assert (Person max-noise 3))
    (assert (Person bar FALSE))
	)
	(if (= (str-compare ?type-of-environment "centric") 0)
		then
    (assert (Person bar TRUE))
    (assert (Person public-transport TRUE))
    (assert (Person shops TRUE))
	)
	(if (= (str-compare ?type-of-environment "young") 0)
		then
		(assert (Person bar TRUE))
    (assert (Person university TRUE))
    (assert (Person library TRUE))
	)
  (if (= (str-compare ?type-of-environment "residential") 0)
		then
    (assert (Person max-noise 5))
		(assert (Person shops TRUE))
    (assert (Person restaurant TRUE))
	)
  (if (= (str-compare ?type-of-environment "outskirts") 0)
		then
    (assert (Person max-noise 1))
		(assert (Person green-area TRUE))
	)
)


;;;set office centric location
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


;;; Get our maximum budget - last in the row of questions
(defrule house-max-budget
	(not (Person budget ?))
	?user <- (object (is-a Person))
	=>
	(bind ?max_budget (ask-number "What is your maximum rental budget per month" 0 3000))
  (if (yes-or-no "Are you willing to pay more for the house of your dreams?")
    then
      (send ?user put-max_budget (* ?max_budget 1.3))
    else
      (send ?user put-max_budget ?max_budget)
  )
  (assert (Person facts ok))
)



;;;APPLY OUR FACTS AND FILTER THE RESULTS

;;; Loop trough all the houses and uncheck those that don't fit the price limit
(defrule exclude-houses
  (Person facts ok)
  ?proposal<-(object (is-a Proposal))
  ?user <- (object (is-a Person))
	=>
  ;distributed action
  (if (< (send (send ?proposal get-offer) get-rent) (send ?user get-max_budget))
    then
    (send ?proposal put-is_proposed TRUE)
    (send ?proposal put-score (+ (send ?proposal get-score) 1))
  )
)


;;; Loop trough all the houses and locations and give noisynesspoints
;;; if a location is close add the whole noisynesspoints
;;; if a location is medium add the half of the noise
;;; if a location is far - dont do anything
(defrule calculate-noise
  (Person facts ok)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a Service))
	=>

  ;distributed action
  ;(bind ?distance (distance (send (send (send ?proposal get-offer) get-address) get-coordinates) (send (send ?service get-address) get-coordinates)))
  ; (bind ?adr (send ?service get-address))
  ;(bind ?c (send ?service get-coordinates))
  ;(send ?c print)
  ;  (printout t (send ?service print))
  ;(printout t (send ?service coor))
  (bind ?adr1 (send ?service get-address))
  ;(send ?service print)
  ;(send  (send ?service get-address) print)
  ;(printout t (send (send ?service get-address) print) crlf)
  ;(printout t (send ?adr get-coordinates) crlf)
  ; (bind ?adr2 (active-initialize-instance  ?adr))
  ;(printout t (send (instance-address (send ?service get-address))) crlf)
  ;(printout t (send (send ?proposal get-offer) get-address) crlf)
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (printout t (count-distance ?adr1 ?adr2) crlf)
)

;;; END OF OUR FILTERING METHODS. ADD ALL FUNCTIONS ABOVE THIS LINE
(defrule end-of-questions
	(Person facts ok)
	?recommendation <- (recommendation (is_final ?))
	=>
  (printout t "end of questions" crlf crlf)
	;;;(retract ?budget)
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
