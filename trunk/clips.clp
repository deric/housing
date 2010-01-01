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
	(slot noise)
	(slot rooms)
	(slot room_diff)
	(slot is_proposed)
)

;;************
;;* MESSAGES *
;;************

(defmessage-handler Offer print()
  (printout t "----------------------------------" crlf)
  (format t "Offer: %s%n" ?self:title) 
  (format t "Price: %f%n" ?self:rent)
  (printout t (send ?self:address print))
  (printout t crlf)
)

 
(defmessage-handler District print primary()
  (format t "%s" (send ?self get-title)) ; inherited property, we have to access it through getter
  (printout t)
) 

(defmessage-handler Coordinates print primary()
  (format t "%f;%f" ?self:latitude ?self:longitude)
  (printout t)
)

(defmessage-handler Address print primary()
  (format t "Address: %s, " ?self:street)
  (printout t (send ?self:district print))
  (printout t  "  [" (send ?self:coordinates print) "]")
)
 
 
(defmessage-handler MAIN::Service print()
  (printout t "++++++++++++++++++++++++++++++++++" crlf)
  (format t "Service: %s%n" ?self:title)
  (printout t)
  (printout t (send ?self:address print))
)
 
  
(defmessage-handler Proposal print()
  (printout t (send ?self:offer print)) 
  (format t "Is proposed: %s%n" ?self:is_proposed)
  (format t "Score: %f%n" ?self:score)
  (format t "Noise: %f%n" ?self:noise)
  (format t "Rooms: %f%n" ?self:rooms)
  (printout t crlf)
)
 
 (defmessage-handler Room has-double-room primary()
   (if (eq ?self:room_type double)
      then return TRUE
      else return  FALSE
     )
 )
 
 (defmessage-handler Flat has-double-room primary()
      (bind ?i 1)
      (bind ?res FALSE)
	(while (<= ?i (length$ ?self:rooms))
		do
		    (bind ?res (send (nth$ ?i ?self:rooms) has-double-room))
	  ;	    (printout t (send (nth$ ?i ?self:rooms) get-description) " " (send (nth$ ?i ?self:rooms) has-double-room) crlf)
		    (if (eq ?res TRUE)
			then return TRUE
		      )
		    (bind ?i (+ ?i 1))
	)
   (return ?res)
 )
 
(defmessage-handler Flat count-habitable-rooms primary()
      (bind ?i 1)
      (bind ?res 0)
	(while (<= ?i (length$ ?self:rooms))
		do
	  ; (bind ?res (send (nth$ ?i ?self:rooms) has-double-room))
		   (bind ?type (send (nth$ ?i ?self:rooms) get-room_type))
	  ; (printout t (send (nth$ ?i ?self:rooms) get-room_type)  crlf)
		    (if (or (eq ?type single) (eq ?type double))
			then (bind ?res (+ ?res 1))
		      )
		    (bind ?i (+ ?i 1))
	)
   (return ?res)
 )
 
 (defmessage-handler House count-habitable-rooms primary()
   (return 0)
 )
 
 (defmessage-handler Room count-habitable-rooms primary()
    (if (or (eq ?self:room_type single) (eq ?self:room_type double))
	then (return 1)
	else (return 0)
    )
 ) 
 

  (defmessage-handler House has-double-room primary()
      (bind ?i 1)
      (bind ?res FALSE)
	(while (<= ?i (length$ ?self:flats))
		do
		    (bind ?res (send (nth$ ?i ?self:flats) has-double-room))
		    (if (eq ?res TRUE)
			then return TRUE
		      )
		    (bind ?i (+ ?i 1))
	)
      (return ?res)
 )
 
 ;count number of rooms in flats
 (defmessage-handler House count-habitable-rooms primary()
      (bind ?i 1)
      (bind ?res 0)
	(while (<= ?i (length$ ?self:flats))
		do
		    (bind ?num (send (nth$ ?i ?self:flats) count-habitable-rooms))
`		    (bind ?res (+ ?res ?num))
		    (bind ?i (+ ?i 1))
	)
      (return ?res)
 )
 
 
(defmessage-handler Offer has-double-room primary()
   (return  (send ?self:realty has-double-room))
)
 
(defmessage-handler Offer count-habitable-rooms primary()
   (return  (send ?self:realty count-habitable-rooms))
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

 ; checks if response is a number (float or integer)
(deffunction ask-number (?question ?range-start ?range-end)
	(format t "%s? [%d, %d] " ?question ?range-start ?range-end)
	(bind ?response (read))
	(bind ?repeat 
	  (if (numberp ?response)
			  then (not(and(>= ?response ?range-start)(<= ?response ?range-end)))
			  else TRUE
			)
	  )
	(while ?repeat do
		(format t "%s? [%d, %d] " ?question ?range-start ?range-end)
		(bind ?response (read))
		(bind ?repeat 
		(if (numberp ?response)
				then (not(and(>= ?response ?range-start)(<= ?response ?range-end)))
				else TRUE
			      )
		)
	)
	?response
)

(deffunction yes-or-no (?question)
   (bind ?response (ask-question ?question yes no y n))
   (while (not (or 
		  (eq ?response yes) 
		  (eq ?response y)
		  (eq ?response no) 
		  (eq ?response n)
		 ))
	(bind ?response (ask-question ?question yes no y n))
   )
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE 
       else FALSE)
  )

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

;Counts impact of noise between two Addresses and return
; 2 == close
; 1 == medium
; 0 == far
(deffunction noise-impact (?adr1 ?adr2)
  (bind ?result (distance (send ?adr1 get-coordinates) (send ?adr2 get-coordinates)))
  (if (<= ?result 1.5)
    then return 2
    else 
    (if (<= ?result 3.0)
      then return 1
      else return 0)
   )
)
 

;counts distance from some point
(deffunction measure-distance (?adr ?coor)
  (bind ?result (distance (send ?adr get-coordinates) ?coor))
  (if (<= ?result 2.0)
    then return close
    else (if (<= ?result 6.0)
	then return mid
	else return far 
      )
  )
)

;;;counts distance between 2 addresses
(deffunction measure-distance-adr (?adr ?adr2)
  (bind ?result (distance (send ?adr get-coordinates) (send ?adr2 get-coordinates)))
  (if (<= ?result 2.0)
    then return close
    else (if (<= ?result 6.0)
	then return mid
	else return far 
      )
  )
)

;;;counts distance between 2 addresses
(deffunction proposal-sort (?prop1 ?prop2)
  (> (send ?prop1 get-score) (send ?prop2 get-score))
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
	(focus personal-questions house-queries)
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
  (focus output EOP)
)

;;;------------------------------------------
;;;- defining the personal questions module
;;;------------------------------------------

(defmodule personal-questions "Module to know the needs of our user"
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule your-name "Find out our personal characteristics"
	(not (object (is-a Person)))
	=>
	(bind ?firstname (ask-open-question "What is your firstname"))
  (bind ?surname (ask-open-question "What is your surname"))
  (bind ?age (ask-number "What is your age" 18 100))
  ;;;create an instance of Person
	(bind ?user (make-instance user of Person))
  ;;;add this to our instance of Person
	(send ?user put-firstname ?firstname)
  (send ?user put-surname ?surname)
  (send ?user put-age ?age)
  ;;;insert this Person into recommendation
	(assert (recommendation (person ?user)))
  ;;;add facts that our first and surname are ok
	(assert (Person firstname ok))
  (assert (Person surname ok))
  (assert (Person age ok))
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
     (make-instance of Proposal (score 0) (offer ?offer) (is_proposed TRUE)
	(noise 0.0)
	(room_diff 0)
       )
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

	(bind ?type-of-family (question "You are looking for a place to live for?" alone partner children friends))
	(if (= (str-compare ?type-of-family "alone") 0)
		then
		(assert (Person room-num 1))
	)
  (if (= (str-compare ?type-of-family "friends") 0)
		then
		(assert (Person room-num 2))
	)
	(if (= (str-compare ?type-of-family "partner") 0)
		then
		(if (yes-or-no "are you planning to have children soon")
		then
      (assert (Person children 1))
		)
		;;in any case we need a double room
		(assert (Person room-type double))
    (assert (Person room-num 2))

	)
	(if (= (str-compare ?type-of-family "children") 0)
		then
		(bind ?children (ask-number "How many children are living with you" 0 20))
    ;;;we add 2, 1 for the parents (see the double room type and 1 anyway for the child + the rounded amount of rooms needed extra
		(assert (Person room-num (+ 2 (round (/ ?children 2)))))
		(assert (Person house-shared FALSE))
		(assert (Person children ?children))
    (assert (Person school TRUE))
	)
)

;;; ask if the number of rooms is sufficient
(defrule house-extra-rooms
	(Person room-num ?num)
  (not (Person rooms-checked ?))
	(not (Person type-of-house office))
	?user <- (object (is-a Person))
	=>
  ;;;Ask if we need more rooms for elderly people or special needs
  (printout t "Currently we estimated for you " ?num " rooms ")
  (bind ?additional (yes-or-no "is this enough?"))
  (if (eq ?additional FALSE)
    then
      (bind ?rooms (ask-number "How many extra rooms do you need" 0 20))
      (assert (Person room-num (+ ?rooms ?num)))
      (printout t "We estimated that you need " (+ ?num ?rooms) " rooms" crlf)
    else
      (assert (Person rooms-checked TRUE))
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
		    (assert (Person shopping TRUE))
		    (assert (Person location centric))
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
		(assert (Person shopping TRUE))
    (assert (Person foodbeverage TRUE))
    (assert (Person healthcare TRUE))
    
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
	(not (Person max_budget ?))
	?user <- (object (is-a Person))
	=>
	(bind ?max_budget (ask-number "What is your maximum rental budget per month" 0 3000))
  (if (yes-or-no "Are you willing to pay more for the house of your dreams?")
    then
      (send ?user put-max_budget (* ?max_budget 1.3))
    else
      (send ?user put-max_budget ?max_budget)
  )
  
)

 ;;; Get our minimum price
(defrule house-min-budget
	(not (Person min_budget ?))
	?user <- (object (is-a Person))
	=>
	(bind ?min_price (ask-number "What is the cheapest price you would pay" 0 3000))
	(send ?user put-min_budget ?min_price)
    (assert (Person facts ok))
)
 
 
 ;;; Loop trough all the houses and locations and give noisynesspoints
;;; if a location is close add the whole noisynesspoints
;;; if a location is medium add the half of the noise
;;; if a location is far - dont do anything
(defrule calculate-noise ""
  (declare (salience 20))
  (Person facts ok)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a Service))
	=>
  (bind ?noise-weight 0.5) ;;TODO put it as a global variable
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  ;(printout t (count-distance ?adr1 ?adr2) crlf)
  ;(printout t (* ?noise-weight (noise-impact ?adr1 ?adr2)) (send ?service get-title) crlf)
   (send ?proposal put-noise (+ (send ?proposal get-noise) 
  			      (* ?noise-weight (noise-impact ?adr1 ?adr2))
  	))
)


;;;APPLY OUR FACTS AND FILTER THE RESULTS

;;; Loop trough all the houses and uncheck those that don't fit the price limit
(defrule exclude-houses
  (Person facts ok)
  ?proposal<-(object (is-a Proposal))
  ?user <- (object (is-a Person))
	=>
  ;distributed action
  (if (<= (send (send ?proposal get-offer) get-rent) (send ?user get-max_budget))
    then
    (send ?proposal put-score (+ (send ?proposal get-score) 1))
  )
  ;minimum price is a hard constraint
  (if (< (send (send ?proposal get-offer) get-rent) (send ?user get-min_budget))
    then
    (send ?proposal put-is_proposed FALSE)
  )
  (assert (Proposal noisiness ok))
)


(defrule filter-noisy "lower score of proposal with noisy environment if user does mind"
  (Person facts ok)
  (Proposal noisiness ok) ; must be executed after noise is calculated
  (Person max-noise ?) ; noise is set up
  ?proposal<-(object (is-a Proposal))
  ?fact <- (Person max-noise ?noise)
  =>  
   (if (> (send ?proposal get-noise) ?noise)
    then
    (send ?proposal put-score (- (send ?proposal get-score) 5))
  )
)

; if someone need a double room is a hard constraint
(defrule exclude-not-double-rooms "filter offers without double room"
   (Person facts ok)
   (Person room-type double)
   ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>   
  ;  (printout t (send ?offer get-title) " " (send ?offer has-double-room) crlf)
  (if (eq (send ?offer has-double-room) FALSE)
    then 
      (send ?proposal put-is_proposed FALSE)
    )
)
 
(defrule exclude-not-centric 
    (Person location centric)
    ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>
   (make-instance center of Coordinates (latitude 0.0) (longitude 0.0))
   (bind ?distance (measure-distance (send ?offer get-address) [center]))
   (switch ?distance
     (case close then  (send ?proposal put-score (+ (send ?proposal get-score) 2)) )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) 1)))
     ;location is too far away
     (case far then (send ?proposal put-is_proposed FALSE) )
     )
)
 

(defrule count-num-of-habitable-rooms
  (Person room-num ?rooms)
  ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>  
  ; (printout t (send ?offer get-title) " "  (send ?offer count-habitable-rooms) crlf)
  (bind ?num (send ?offer count-habitable-rooms))
  (send ?proposal put-rooms ?num)
  ;(printout t (send ?offer get-title) " "  (send ?offer count-habitable-rooms) " req:" ?rooms crlf)
  (bind ?diff (- ?num ?rooms)) ;difference
  (switch ?diff
    (case -1 then (send ?proposal put-score (- (send ?proposal get-score) 1)))
    (case 0 then (send ?proposal put-score (+ (send ?proposal get-score) 1)) )
    (case 1 then (send ?proposal put-score (+ (send ?proposal get-score) 2)) )
    (default then (send ?proposal put-room_diff ?diff)) 
   )
  (assert (Proposal counted_rooms ok))
  
)
 
 ;offers with lack of more than 1 rooms will be rejected 
(defrule filer-offers-with-not-sufficient-rooms
  (Proposal counted_rooms ok)
  ?proposal<-(object (is-a Proposal) (offer ?offer) (room_diff ?diff&:(<= ?diff -2)))
  =>  
  ;(printout t (send ?offer get-title) " "  (send ?proposal get-room_diff) crlf)
  (send ?proposal put-is_proposed FALSE)
)


 
;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-university ""
  (declare (salience 20))
  (Person facts ok)
  (Person university ?university)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a University))  
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))

  ;;;Define our pointsdevision
  (if (eq ?university TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
(switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?university FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?university TRUE) then (send ?proposal put-is_proposed FALSE))
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
     )
  )
)

;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-school ""
  (declare (salience 20))
  (Person facts ok)
  (Person school ?school)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a Bar))  
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
  ;;;Define our pointsdevision
  (if (eq ?school TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
  (switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?school FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?school TRUE) then (send ?proposal put-is_proposed FALSE))
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
     )
  )
)

;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-bar ""
  (declare (salience 20))
  (Person facts ok)
  (Person bar ?bar)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a Bar))  
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
  ;;;Define our pointsdevision
  (if (eq ?bar TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
(switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?bar FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then
        (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints))
     )
     (case far then
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?bar TRUE) then (send ?proposal put-is_proposed FALSE))
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
     )
  )
)

;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-shops ""
  (declare (salience 20))
  (Person facts ok)
  (Person shopping ?shopping)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a Shopping))  ;use the superclass to get all the shops
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
  ;;;Define our pointsdevision
  (if (eq ?shopping TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
(switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?shopping FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then
        (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints))
     )
     (case far then
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?shopping TRUE) then (send ?proposal put-is_proposed FALSE))
        
     )
  )
)

;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-public-transport ""
  (declare (salience 20))
  (Person facts ok)
  (Person public-transport ?transport)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a Transport))  ;use the superclass to get all the transports
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
  ;;;Define our pointsdevision
  (if (eq ?transport TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
(switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?transport FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then
        (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints))
     )
     (case far then
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?transport TRUE) then (send ?proposal put-is_proposed FALSE))
        
     )
  )
)
 
 
;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-FoodBeverage ""
  (declare (salience 20))
  (Person facts ok)
  (Person foodbeverage ?foodbeverage)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a FoodBeverage))  ;use the superclass to get all the transports
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
  ;;;Define our pointsdevision
  (if (eq ?foodbeverage TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
(switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?foodbeverage FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then
        (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints))
     )
     (case far then
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?foodbeverage TRUE) then (send ?proposal put-is_proposed FALSE))
        
     )
  )
)

;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-HealthCare ""
  (declare (salience 20))
  (Person facts ok)
  (Person healthcare ?healthcare)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a FoodBeverage))  ;use the superclass to get all the transports
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
  ;;;Define our pointsdevision
  (if (eq ?healthcare TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
(switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?healthcare FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then
        (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints))
     )
     (case far then
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?healthcare TRUE) then (send ?proposal put-is_proposed FALSE))
        
     )
  )
)

;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-green-area ""
  (declare (salience 20))
  (Person facts ok)
  (Person green-area ?greenarea)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a FoodBeverage))  ;use the superclass to get all the transports
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
  ;;;Define our pointsdevision
  (if (eq ?greenarea TRUE)
   then
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints 0)
   else
    (bind ?closepoints 0)
    (bind ?midpoints 1)
    (bind ?farpoints 2)
  )
  
(switch ?distance
     (case close then
        (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ;;;if our fact should be far, then remove the offer if it is close
        (if (eq ?greenarea FALSE) then (send ?proposal put-is_proposed FALSE))
     )
     (case mid then
        (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints))
     )
     (case far then
        (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ;;;if our fact should be close, then remove the offer if it is far
        (if (eq ?greenarea TRUE) then (send ?proposal put-is_proposed FALSE))
        
     )
  )
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
	(declare (salience 10))
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
      (printout t ?proposal crlf)
      ;(proposal-sort ?proposal)
      
	)
	(modify ?recommendation (is_final finished))
	(pop-focus)
)
 

 
 
(defmodule EOP "end of program"
  (import MAIN ?ALL)
)
 
 (defrule endprogram "final rule"
   (declare (salience 10))
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
