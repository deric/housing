;; Builded on  2009-11-26 17:48:41 

;############### ontology ##################
; Mon Dec 14 02:55:19 CET 2009
; 
;+ (version "3.4.1")
;+ (build "Build 537")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot provinces
		(type INSTANCE)
;+		(allowed-classes Province)
		(create-accessor read-write))
	(single-slot available_to
		(type INSTANCE)
;+		(allowed-classes Date)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot title
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot rent
;+		(comment "in euros per month")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot min_budget
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot house_number
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot cities
		(type INSTANCE)
;+		(allowed-classes City)
		(create-accessor read-write))
	(single-slot floor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot month
;+		(comment "number of month in year")
		(type INTEGER)
		(range 1 12)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot districts
		(type INSTANCE)
;+		(allowed-classes District)
		(create-accessor read-write))
	(multislot shop_type
		(type SYMBOL)
		(allowed-values Grocery Drugstore)
		(create-accessor read-write))
	(single-slot flat_type
		(type SYMBOL)
		(allowed-values attic normal ground)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot score
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot transport
		(type INSTANCE)
;+		(allowed-classes Transport)
		(create-accessor read-write))
	(single-slot noisy
;+		(comment "percentage of noise: 0 -quite\n100 - noisy (landing planes)")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot street
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot available_from
		(type INSTANCE)
;+		(allowed-classes Date)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot firstname
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot inhabitants
;+		(comment "number of inhabitants living in this area")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot coordinates
;+		(comment "GPS coordinates for displaying on a map")
		(type INSTANCE)
;+		(allowed-classes Coordinates)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot description
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot postal_code
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot year
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot surname
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot windows_num
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot latitude
;+		(comment "GPS coordinate")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot house_type
		(type SYMBOL)
		(allowed-values Terraced Semidetached BlockOfFlats)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot rooms
		(type INSTANCE)
;+		(allowed-classes Room)
		(create-accessor read-write))
	(single-slot room_type
		(type SYMBOL)
		(allowed-values single double kitchen)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot day
;+		(comment "day number in month")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot district
		(type INSTANCE)
;+		(allowed-classes District)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot longitude
;+		(comment "GPS coordinate in degrees")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot max_budget
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot address
		(type INSTANCE)
;+		(allowed-classes Address)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot flats
		(type INSTANCE)
;+		(allowed-classes Flat)
		(create-accessor read-write))
	(single-slot space
;+		(comment "in square m  of house")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot country
		(type INSTANCE)
;+		(allowed-classes Country)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot realty
;+		(comment "piece of immovable realty estate")
		(type INSTANCE)
;+		(allowed-classes PlaceToLive)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot city
		(type INSTANCE)
;+		(allowed-classes City)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Offer
	(is-a USER)
	(role concrete)
	(single-slot available_to
		(type INSTANCE)
;+		(allowed-classes Date)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot score
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot title
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot rent
;+		(comment "in euros per month")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot available_from
		(type INSTANCE)
;+		(allowed-classes Date)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot realty
;+		(comment "piece of immovable realty estate")
		(type INSTANCE)
;+		(allowed-classes PlaceToLive)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Address
	(is-a USER)
	(role concrete)
	(single-slot coordinates
;+		(comment "GPS coordinates for displaying on a map")
		(type INSTANCE)
;+		(allowed-classes Coordinates)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot street
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot city
		(type INSTANCE)
;+		(allowed-classes City)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Equipment
	(is-a USER)
	(role concrete))

(defclass Coordinates "GPS coordinates of an object"
	(is-a USER)
	(role concrete)
	(single-slot longitude
;+		(comment "GPS coordinate in degrees")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot latitude
;+		(comment "GPS coordinate")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Date
	(is-a USER)
	(role concrete)
	(single-slot month
;+		(comment "number of month in year")
		(type INTEGER)
		(range 1 12)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot day
;+		(comment "day number in month")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot year
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass PlaceToLive
	(is-a USER)
	(role abstract)
	(single-slot description
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot address
		(type INSTANCE)
;+		(allowed-classes Address)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass House
	(is-a PlaceToLive)
	(role concrete)
	(single-slot house_type
		(type SYMBOL)
		(allowed-values Terraced Semidetached BlockOfFlats)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot flats
		(type INSTANCE)
;+		(allowed-classes Flat)
		(create-accessor read-write)))

(defclass Flat
	(is-a PlaceToLive)
	(role concrete)
	(single-slot space
;+		(comment "in square m  of house")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot rooms
		(type INSTANCE)
;+		(allowed-classes Room)
		(create-accessor read-write))
	(single-slot floor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot flat_type
		(type SYMBOL)
		(allowed-values attic normal ground)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Room
	(is-a PlaceToLive)
	(role concrete)
	(single-slot rent
;+		(comment "in euros per month")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot space
;+		(comment "in square m  of house")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot windows_num
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot room_type
		(type SYMBOL)
		(allowed-values single double kitchen)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Services
	(is-a USER)
	(role abstract)
	(single-slot title
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot noisy
;+		(comment "percentage of noise: 0 -quite\n100 - noisy (landing planes)")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot coordinates
;+		(comment "GPS coordinates for displaying on a map")
		(type INSTANCE)
;+		(allowed-classes Coordinates)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass FoodBeverage
	(is-a Services)
	(role concrete))

(defclass Restarurant
	(is-a FoodBeverage)
	(role concrete)
	(single-slot address
		(type INSTANCE)
;+		(allowed-classes Address)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Bar
	(is-a FoodBeverage)
	(role concrete))

(defclass Pub
	(is-a FoodBeverage)
	(role concrete))

(defclass Entertaitment
	(is-a Services)
	(role concrete))

(defclass Cinema
	(is-a Entertaitment)
	(role concrete))

(defclass Theatre
	(is-a Entertaitment)
	(role concrete))

(defclass Club
	(is-a Entertaitment)
	(role concrete))

(defclass Education
	(is-a Services)
	(role concrete))

(defclass School
	(is-a Education)
	(role concrete))

(defclass University
	(is-a Education)
	(role concrete))

(defclass Library
	(is-a Education)
	(role concrete))

(defclass HealthCare
	(is-a Services)
	(role concrete))

(defclass Hospital
	(is-a HealthCare)
	(role concrete))

(defclass Transport
	(is-a Services)
	(role concrete))

(defclass Station "public transport stop"
	(is-a Transport)
	(role abstract))

(defclass BusStop
	(is-a Station)
	(role concrete))

(defclass MetroStation
	(is-a Station)
	(role concrete))

(defclass TransferStation
	(is-a MetroStation)
	(role concrete))

(defclass TrainStation
	(is-a Station)
	(role concrete))

(defclass TramStop
	(is-a Station)
	(role concrete))

(defclass Shopping
	(is-a Services)
	(role concrete))

(defclass Shop
	(is-a Shopping)
	(role concrete)
	(multislot shop_type
		(type SYMBOL)
		(allowed-values Grocery Drugstore)
		(create-accessor read-write)))

(defclass Supermarket
	(is-a Shop)
	(role concrete))

(defclass Market
	(is-a Shopping)
	(role concrete))

(defclass GeographicalPart
	(is-a USER)
	(role concrete)
	(single-slot title
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Country
	(is-a GeographicalPart)
	(role concrete)
	(single-slot inhabitants
;+		(comment "number of inhabitants living in this area")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Province
	(is-a Country)
	(role concrete)
	(single-slot postal_code
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass City
	(is-a Province)
	(role concrete))

(defclass District
	(is-a City)
	(role concrete))

(defclass Person
	(is-a USER)
	(role concrete)
	(single-slot firstname
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot min_budget
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot surname
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot max_budget
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))


;############### instances ##################
(definstances inst 
; Mon Dec 14 02:55:19 CET 2009
; 
;+ (version "3.4.1")
;+ (build "Build 537")


([house_Class10] of  Country

	(inhabitants 50000000)
	(title "Spain"))

([house_Class10002] of  Offer

	(available_from [house_Class6])
	(available_to [house_Class20003])
	(realty [house_Class10003])
	(rent 750.0)
	(title "flat in barceloneta"))

([house_Class10003] of  Flat

	(address [house_Class10004])
	(description "Good location close to the sea")
	(flat_type normal)
	(floor "3")
	(rooms [house_Class10008])
	(space 90))

([house_Class10004] of  Address

	(city [house_Class14])
	(coordinates [house_Class10007])
	(street "Carrer de sant pere mitja"))

([house_Class10005] of  Flat

	(address [house_Class9])
	(description "loosy flat")
	(flat_type normal)
	(floor "2")
	(rooms [house_Class10008])
	(space 70))

([house_Class10006] of  Address

	(city [house_Class13])
	(coordinates [house_Class10007])
	(street "aaa"))

([house_Class10007] of  Coordinates

	(latitude 3.0)
	(longitude 2.0))

([house_Class10008] of  Room

	(address [house_Class10009])
	(description "small room")
	(rent 300.0)
	(room_type single)
	(space 13)
	(windows_num 0))

([house_Class10009] of  Address

	(city [house_Class13])
	(coordinates [house_Class10007])
	(street "carrer de nick"))

([house_Class11] of  Province

	(title "Barcelona"))

([house_Class13] of  City

	(postal_code "80000")
	(title "Barcelona"))

([house_Class14] of  District

	(title "Barceloneta"))

([house_Class15] of  District

	(title "Ciutat Vella"))

([house_Class20003] of  Date

	(day 12)
	(month 7)
	(year 2010))

([house_Class20005] of  District
)

([house_Class3] of  Pub

	(coordinates [house_Class4]))

([house_Class4] of  Coordinates

	(latitude -1.0)
	(longitude 3.0))

([house_Class5] of  Offer

	(available_from [house_Class6])
	(realty [house_Class10005])
	(rent 500.0)
	(title "nice flat"))

([house_Class6] of  Date

	(day 12)
	(month 12)
	(year 2009))

([house_Class7] of  Coordinates

	(latitude 0.0)
	(longitude 0.0))

([house_Class9] of  Address

	(city [house_Class13])
	(street "Passaige de Gracia"))
);;############### program ##################
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
 
(defmessage-handler Proposal print()
  (printout t (send ?self:offer print)) 
  (format t "Is proposed: %s%n" ?self:is_proposed)
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
	;(send ?proposal put-score (+ 1 (send ?proposal get-score)))
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
	;(send ?proposal put-score (+ 1 (send ?proposal get-score)))
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
	    (printout t (send (send ?proposal get-offer) print))
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
