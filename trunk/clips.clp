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
  (format t "Type: %s%n" (class ?self:realty))
  (format t "Offer: %s%n" ?self:title) 
  (format t "Price: %f%n" ?self:rent)
  (printout t (send ?self:address print)) ;print the address
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
	  ;  (printout t (send (nth$ ?i ?self:rooms) get-room_type)  crlf)
		    (if (or (eq ?type single) (eq ?type double))
			then (bind ?res (+ ?res 1))
		      )
		    (bind ?i (+ ?i 1))
	)
   (return ?res)
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
 
(defmessage-handler Offer realty-type primary()
   (return  (class ?self:realty))
)
 
(defmessage-handler Offer has-equipment primary(?service)
   (return  (send ?self:realty has-equipment ?service))
)
 
(defmessage-handler PlaceToLive has-equipment primary(?service)
      (bind ?i 1)
      (bind ?res FALSE)
        (while (<= ?i (length$ ?self:equipment))
		do
		    (bind ?srv (send (nth$ ?i ?self:equipment) get-title))
		    (if (= (str-compare ?srv ?service) 0)
	  		then (bind ?res TRUE)
	  	      )
		    (bind ?i (+ ?i 1))
	)
      (return ?res)
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
	return ?result
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

;;;sorting
(deffunction proposal-sort (?prop1 ?prop2)
  (< (send ?prop1 get-score) (send ?prop2 get-score))
)

(deffunction get-class (?object)
  return (class ?object)
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
 
(defrule current-occupation
    (not (Person occupation ok))
    ?person <- (object (is-a Person))
  =>
  (bind ?occupation (question "What is your current occupation" working student retired other))
  (assert (Person occupation ?occupation))
)
 
(defrule person-is-a-student
    (Person occupation ?occupation&student)
    ?person <- (object (is-a Person))
  =>
    (send ?person put-age 20) 
    (assert (Person age ok))
  )

(defrule person-is-retired
    (Person occupation ?occupation&retired)
    ?person <- (object (is-a Person))
  =>
    (send ?person put-age 70) 
    (assert (Person age ok))
    (assert (Proposal elevator TRUE))
    (assert (Proposal supermarket close))
)

 ; executed when age is not set
(defrule find-out-age
  ?person <- (object (is-a Person) (age ?age&:(= ?age 0)))
  (not (Person age ok))
  =>
   (bind ?age (ask-number "What is your age" 18 100)) 
   (send ?person put-age ?age)
   (assert (Person age ok))
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

;; 
;;; set the number of rooms if it is not office
;;;also define the number of people living there or children
(defrule house-other-rooms
	(not (Person room-num ?))
	(not (Person type-of-house office))
	?user <- (object (is-a Person))
	=>

	(bind ?type-of-family (question "You are looking for a place to live for" alone partner children friends))
	(assert (Person type-of-family ?type-of-family))
)
 
(defrule person-living-alone
    (Person type-of-family ?type-of-family&alone)
    ?user <- (object (is-a Person))
  =>
    (assert (Person room-num 1))
    (assert (Person rooms-checked TRUE))
)
 
(defrule person-living-with-friends
    (Person type-of-family ?type-of-family&friends)
    ?user <- (object (is-a Person))
  =>
    (assert (Person room-num 2))
)

 
 ;retired person is not going to have children soon
(defrule person-living-with-partner
    (Person type-of-family ?type-of-family&partner)
    (Person occupation ?occ&~retired)
    ?user <- (object (is-a Person))
  =>
	(if (yes-or-no "are you planning to have children soon")
	then
	    (assert (Person children 1))
	)
	;;in any case we need a double room
	(assert (Person room-type double))
	(assert (Person room-num 2))
)
 

(defrule retired-person-living-with-partner
    (Person type-of-family ?type-of-family&partner)
    (Person occupation ?occ&retired)
    ?user <- (object (is-a Person))
  =>
	(assert (Person room-type double))
	(assert (Person room-num 2))
) 
 
 
 
(defrule person-living-with-children
    (Person type-of-family ?type-of-family&children)
    ?user <- (object (is-a Person))
  =>
	  (bind ?children (ask-number "How many children are living with you" 0 20))
;;;we add 2, 1 for the parents (see the double room type and 1 anyway for the child + the rounded amount of rooms needed extra
	  (assert (Person room-num (+ 2 (round (/ ?children 2)))))
	  (assert (Person house-shared FALSE))
	  (assert (Person children ?children))
	  (assert (Person school TRUE))
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
  (bind ?additional (yes-or-no "is this enough"))
  (if (eq ?additional FALSE)
    then
      (bind ?rooms (ask-number "How many extra rooms do you need" 0 20))
      (assert (Person room-num (+ ?rooms ?num)))
      (printout t "We estimated that you need " (+ ?num ?rooms) " rooms" crlf)
    else
      (assert (Person rooms-checked TRUE))
  ) 
)
 
(defrule count-num-of-habitable-rooms
  (Person room-num ?rooms)
  ;  (Person rooms-checked TRUE)
  ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>  
  ; (printout t (send ?offer get-title) " "  (send ?offer count-habitable-rooms) crlf)
  (bind ?num (send ?offer count-habitable-rooms))
  (send ?proposal put-rooms ?num)
  ;(printout t (send ?offer get-title) " "  (send ?offer count-habitable-rooms) " req:" ?rooms crlf)
  (bind ?diff (- ?num ?rooms)) ;difference
  (switch ?diff
    (case -1 then (send ?proposal put-score (- (send ?proposal get-score) 3)))
    (case 0 then (send ?proposal put-score (+ (send ?proposal get-score) 1)) )
    (case 1 then (send ?proposal put-score (+ (send ?proposal get-score) 2)) )
    (default then (send ?proposal put-room_diff ?diff)) 
   )
  (assert (Proposal counted_rooms ok))
) 
 


;;;DEFINE CAR OR NOT
;;; get the fact if the user has a car or not
(defrule user-car
	(not (Person has-car ?))
	?user <- (object (is-a Person))
	=>
	(bind ?hascar (yes-or-no "Do you have a car"))
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
	(bind ?bringschildren (yes-or-no "Are you bringing the children to school by car"))
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
    (assert (Person education TRUE))
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
	(bind ?max_budget (ask-number "What is your maximum rental budget per month" 0 90000))
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
 
 
 
 
;;;----------------------------------------------
;;;- create a proposal instance for every offer -
;;;----------------------------------------------

(defrule create-proposals
	(Person complete ok)
	?offer <- (object (is-a Offer))
	=>
    ;;;initialize our system and so get all instances of offer and copy them into
    ;;;a new instance proposal
     (make-instance of Proposal 
	(score 0) 
	(offer ?offer) 
	(is_proposed TRUE)
	(noise 0.0)
	(rooms 0.0)
	(room_diff 0)
       )
)

;;;-------------------------------------------------------------
;;;- define a new module that imports our data that we gathered-
;;;-------------------------------------------------------------



(defmodule house-queries "Module that gathers information about the searched house"
	(import MAIN ?ALL)
	(import personal-questions ?ALL)
	(export ?ALL)
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
  ?proposal<-(object (is-a Proposal) (offer ?offer))
  ?user <- (object (is-a Person))
	=>
  ;distributed action
  ;maximum price is a hard constraint
  (if (>= (send ?offer get-rent) (send ?user get-max_budget))
    then
    (send ?proposal put-is_proposed FALSE)
    ;(send ?proposal put-score (+ (send ?proposal get-score) 1))
  )
  ;minimum price is a hard constraint
  (if (< (send ?offer get-rent) (send ?user get-min_budget))
    then
    (send ?proposal put-is_proposed FALSE)
  )
  (assert (Proposal noisiness ok))
)
 
(defrule lower-score-for-cheaper-offers
  (Person facts ok)
  ?proposal<-(object (is-a Proposal) (offer ?offer))
  ?user <- (object (is-a Person) (max_budget ?budget) )
  =>
  (bind ?lim (* ?budget 0.66)) ; two third of budget
  (bind ?diff (- ?lim (send ?offer get-rent)))
  (if (> ?diff 0)
	then (if (<= ?diff 200)
	       then (send ?proposal put-score (- (send ?proposal get-score) 1)) ;too hight diff in comp. to budget, probably a bit lousy
	       else (if (<= ?diff 500)
			then (send ?proposal put-score (- (send ?proposal get-score) 2))
		        else (send ?proposal put-score (- (send ?proposal get-score) 4))
		      )
	     )
    )
)
 


(defrule filter-noisy "lower score of proposal with noisy environment if user does mind"
  (Person facts ok)
  (Proposal noisiness ok) ; must be executed after noise is calculated
  (Person max-noise ?) ; noise is set up
  ?proposal<-(object (is-a Proposal) (offer ?offer))
  ?fact <- (Person max-noise ?noise)
  =>
    (bind ?diff (- ?noise (send ?proposal get-noise)))
    (if (>= ?diff 0)
      then (if (>= ?diff 1) ;less noisy than is requested
		then  (send ?proposal put-score (+ (send ?proposal get-score) 2))
	        else  (send ?proposal put-score (+ (send ?proposal get-score) 1))
	       )
	 else (if (>= ?diff -1)
		then  (send ?proposal put-score (- (send ?proposal get-score) 1))
	      )
	      (if (>= ?diff -2)
		then (send ?proposal put-score (- (send ?proposal get-score) 2))   
		else (send ?proposal put-score (- (send ?proposal get-score) 3)) 
	      )
      ;reject very noisy offers 
	      (if (< ?diff -5)
		then (send ?proposal put-is_proposed FALSE)
	      )
      )
  ; (printout t "rejecting " (send ?offer get-title) " p " ?diff " - " (send ?proposal get-score) " noise " (send ?proposal get-noise) " max noise " ?noise " " (send ?proposal get-is_proposed) crlf)
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

(defrule exclude-other-type-of-houses "filter offers that are not appliant with the chosen type of house"
   (Person facts ok)
   (Person type-of-house ?type)
   ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>
  (bind ?type-of-offer (get-class (send ?offer get-realty)))
  (if (eq ?type office)
    then
      (if (not (= (str-compare ?type-of-offer "Office") 0)) then
        (send ?proposal put-is_proposed FALSE)
      )
  )
  (if (eq ?type house)
    then
      (if (not (= (str-compare ?type-of-offer "House") 0)) then
        (send ?proposal put-is_proposed FALSE)
      )
  )
  (if (eq ?type flat)
    then
    ; (printout t "we want a flat "?type-of-offer crlf)
    (if (and (not  (= (str-compare ?type-of-offer "Flat") 0)) (not (= (str-compare ?type-of-offer "Room") 0))) then
      ;   (printout t "this is not a flat" ?type-of-offer " " ?type crlf)
        (send ?proposal put-is_proposed FALSE)
      )
  )
    
)
 
(defrule filer-houses-without-elevator "for retired people"
  (Proposal elevator TRUE)
  ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>   
    (bind ?elev (send ?offer has-equipment Elevator))
    (if ?elev
      then (send ?proposal put-score (+ (send ?proposal get-score) 1))
      else (send ?proposal put-score (- (send ?proposal get-score) 5))
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
 

 ;offers with lack of more than 1 rooms will be rejected 
(defrule filer-offers-with-not-sufficient-rooms
  (Proposal counted_rooms ok)
  ?proposal<-(object (is-a Proposal) (offer ?offer) (room_diff ?diff&:(<= ?diff -2)))
  =>  
  (send ?proposal put-is_proposed FALSE)
)


;;; Loop trough all the houses and locations and give points accordingly
;;; if a location is close add 2 points
;;; if a location is medium add 1 points
;;; if a location is far - dont do anything
(defrule calculate-education ""
  (declare (salience 20))
  (Person facts ok)
  (Person education ?education)
  ?proposal<-(object (is-a Proposal))
  ?service<-(object (is-a Education))  
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))

  ;;;Define our pointsdevision
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
(switch ?distance
     (case close then
        (if (eq ?education TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?education FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
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
  ?service<-(object (is-a School))  
	=>
  (bind ?adr1 (send ?service get-address))
  (bind ?adr2 (send (send ?proposal get-offer) get-address))
  (bind ?distance (measure-distance-adr ?adr1 ?adr2))
  
 ;;;Define our pointsdevision
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
    (switch ?distance
     (case close then
        (if (eq ?school TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?school FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
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
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
    (switch ?distance
     (case close then
        (if (eq ?bar TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?bar FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
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
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
    (switch ?distance
     (case close then
        (if (eq ?shopping TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?shopping FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
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
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
    (switch ?distance
     (case close then
        (if (eq ?transport TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?transport FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
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
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
    (switch ?distance
     (case close then
        (if (eq ?foodbeverage TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?foodbeverage FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
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
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
    (switch ?distance
     (case close then
        (if (eq ?healthcare TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?healthcare FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
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
    (bind ?closepoints 2)
    (bind ?midpoints 1)
    (bind ?farpoints -2)
  
    (switch ?distance
     (case close then
        (if (eq ?greenarea TRUE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
        ) 
        
        ;;;if our service is close then enable the proposal again
        
     )
     (case mid then (send ?proposal put-score (+ (send ?proposal get-score) ?midpoints)))
     ;location is too far away
     (case far then
        (if (eq ?greenarea FALSE)
          then
          (send ?proposal put-score (+ (send ?proposal get-score) ?farpoints))
          else
          (send ?proposal put-score (+ (send ?proposal get-score) ?closepoints))
        ) 
     )
  )
)
 
 


;Bubble sort!!
;(defrule bubble
;    ?recommendation <- (recommendation (is_final ?))
;    ?proposal1<-(object (is-a Proposal) (score ?score1))
;    ?proposal2<-(object (is-a Proposal) (score ?score2))
;    (test (> ?score1 ?score2))
;=>
;    (printout t "sorting")
;    (bind ?offer1 (send ?proposal1 get-offer))
;    (bind ?offer2 (send ?proposal2 get-offer))
;    (send ?proposal1 put-offer ?offer2)
;    (send ?proposal2 put-offer ?offer1)
;)

;;; END OF OUR FILTERING METHODS. ADD ALL FUNCTIONS ABOVE THIS LINE
(defrule end-of-filtering
	(Person facts ok)
  	?recommendation <- (recommendation (is_final ?))
	=>
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

  ;;;create our multifield to sort it later
  (bind ?multifield (create$))
	(do-for-all-instances 
	    ((?proposal Proposal))
	    (eq (send ?proposal get-is_proposed) TRUE)
	    ;action
      (bind ?multifield (insert$ ?multifield 1 ?proposal))
	)
  
  ;;;add to the slot
  (bind ?concatenatedstring (str-cat "(sort proposal-sort " (implode$ ?multifield) ")"))
  (bind ?proposals (eval ?concatenatedstring))
  (bind ?i 1)
  
  (bind ?printedverygood FALSE)
  (bind ?printedadequate FALSE)
  (bind ?printedpartiallyadequate FALSE)
  (bind ?maxpoints 0)
	(while (<= ?i (length$ ?proposals))
		do
      (bind ?proposal (nth$ ?i ?proposals))
      (if (eq ?printedverygood FALSE)
        then
        (printout t "---------------------------------------------------------------------" crlf)
        (printout t "Very recommendable offers" crlf)
        (printout t "---------------------------------------------------------------------" crlf)
        (bind ?printedverygood TRUE)
        (bind ?maxpoints (send ?proposal get-score))
      )
      
      (if (and (eq ?printedadequate FALSE) (<= (send ?proposal get-score) (* ?maxpoints 0.90)))
        then
        (printout t "---------------------------------------------------------------------" crlf)
        (printout t "Adequate offers" crlf)
        (printout t "---------------------------------------------------------------------" crlf)
        (bind ?printedadequate TRUE)
      )
      (if (and (eq ?printedadequate FALSE) (<= (send ?proposal get-score) (* ?maxpoints 0.70)))
        then
        (printout t "---------------------------------------------------------------------" crlf)
        (printout t "Partially adequate offers" crlf)
        (printout t "---------------------------------------------------------------------" crlf)
        (bind ?printedpartiallyadequate TRUE)
      )
      (printout t (send ?proposal print))
			(bind ?i (+ ?i 1))
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
