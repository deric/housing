;; Builded on  2009-11-31 13:53:49 

;############### ontology ##################
; Tue Dec 29 15:54:32 CET 2009
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
	(single-slot Transport+Type
		(type SYMBOL)
		(allowed-values Bus-Stop Train-Station Metro)
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
	(single-slot shop_type
		(type SYMBOL)
		(allowed-values Grocery Drugstore)
;+		(cardinality 0 1)
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
	(multislot equipment
		(type INSTANCE)
;+		(allowed-classes Equipment)
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
	(single-slot house_Class30091
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot rooms
		(type INSTANCE)
;+		(allowed-classes Room)
		(create-accessor read-write))
	(single-slot room_type
		(type SYMBOL)
		(allowed-values single double kitchen bathroom living_room)
;+		(cardinality 1 1)
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
;+		(comment "for our purposes district is required")
		(type INSTANCE)
;+		(allowed-classes District)
;+		(cardinality 1 1)
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
	(single-slot province
		(type INSTANCE)
;+		(allowed-classes Province)
;+		(cardinality 1 1)
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
;+		(allowed-classes PlaceToLive PlaceToWork)
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
	(single-slot address
		(type INSTANCE)
;+		(allowed-classes Address)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot realty
;+		(comment "piece of immovable realty estate")
		(type INSTANCE)
;+		(allowed-classes PlaceToLive PlaceToWork)
;+		(cardinality 0 1)
		(create-accessor read-write)
		(propagation inherit)
		(pattern-match reactive)
		))

(defclass Address
	(is-a USER)
	(role concrete)
	(single-slot district
;+		(comment "for our purposes district is required")
		(type INSTANCE)
;+		(allowed-classes District)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(propagation inherit)
		)
	(single-slot coordinates
;+		(comment "GPS coordinates for displaying on a map")
		(type INSTANCE)
;+		(allowed-classes Coordinates)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(propagation inherit)
		)
	(single-slot street
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Equipment
	(is-a USER)
	(role concrete)
	(single-slot title
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

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
	(role concrete)
	(single-slot space
;+		(comment "in square m  of house")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot description
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot equipment
		(type INSTANCE)
;+		(allowed-classes Equipment)
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
		(create-accessor read-write)
		(propagation inherit)
		))

(defclass Flat
	(is-a PlaceToLive)
	(role concrete)
	(multislot rooms
		(type INSTANCE)
;+		(allowed-classes Room)
		(create-accessor read-write)
		(propagation inherit)
		)
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
	(single-slot windows_num
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot room_type
		(type SYMBOL)
		(allowed-values single double kitchen bathroom living_room)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Service
	(is-a USER)
	(role concrete)
	(single-slot title
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)
		(propagation inherit)
		)
	(single-slot noisy
;+		(comment "percentage of noise: 0 -quite\n100 - noisy (landing planes)")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(propagation inherit)
		)
	(single-slot address
		(type INSTANCE)
;+		(allowed-classes Address)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(propagation inherit)
		)
)

(defclass FoodBeverage
	(is-a Service)
	(role concrete))

(defclass Restaurant
	(is-a FoodBeverage)
	(role concrete))

(defclass Bar
	(is-a FoodBeverage)
	(role concrete))

(defclass Pub
	(is-a FoodBeverage)
	(role concrete))

(defclass Entertainment
	(is-a Service)
	(role concrete))

(defclass Cinema
	(is-a Entertainment)
	(role concrete))

(defclass Theatre
	(is-a Entertainment)
	(role concrete))

(defclass Club
	(is-a Entertainment)
	(role concrete))

(defclass Education
	(is-a Service)
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
	(is-a Service)
	(role concrete))

(defclass Hospital
	(is-a HealthCare)
	(role concrete))

(defclass Green+Area
	(is-a HealthCare)
	(role concrete))

(defclass Transport
	(is-a Service)
	(role concrete))

(defclass Public+Transport "public transport stop"
	(is-a Transport)
	(role concrete)
	(single-slot Transport+Type
		(type SYMBOL)
		(allowed-values Bus-Stop Train-Station Metro)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass BusStop
	(is-a Public+Transport)
	(role concrete))

(defclass MetroStation
	(is-a Public+Transport)
	(role concrete))

(defclass TransferStation
	(is-a MetroStation)
	(role concrete))

(defclass TrainStation
	(is-a Public+Transport)
	(role concrete))

(defclass TramStop
	(is-a Public+Transport)
	(role concrete))

(defclass Shopping
	(is-a Service)
	(role concrete))

(defclass Shop
	(is-a Shopping)
	(role concrete)
	(single-slot shop_type
		(type SYMBOL)
		(allowed-values Grocery Drugstore)
;+		(cardinality 0 1)
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
	(is-a GeographicalPart)
	(role concrete)
	(single-slot postal_code
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot country
		(type INSTANCE)
;+		(allowed-classes Country)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass City
	(is-a GeographicalPart)
	(role concrete)
	(single-slot province
		(type INSTANCE)
;+		(allowed-classes Province)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass District
	(is-a GeographicalPart)
	(role concrete)
	(single-slot city
		(type INSTANCE)
;+		(allowed-classes City)
;+		(cardinality 1 1)
		(create-accessor read-write)))

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

(defclass PlaceToWork
	(is-a USER)
	(role abstract)
	(single-slot space
;+		(comment "in square m  of house")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot rooms
		(type INSTANCE)
;+		(allowed-classes Room)
		(create-accessor read-write))
	(single-slot description
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Office
	(is-a PlaceToWork)
	(role concrete))


;############### instances ##################
(definstances inst 
; Thu Dec 31 09:10:16 CET 2009
; 
;+ (version "3.4.1")
;+ (build "Build 537")

([house_Class0] of  District

	(city [house_Class30037])
	(title "Middle Of Nowhere"))

([house_Class1] of  University

	(address [house_Class10002])
	(noisy 2)
	(title "UAB"))

([house_Class10000] of  Offer

	(address [house_Class30002])
	(available_from [house_Class30106])
	(realty [house_Class10001])
	(rent 560.0)
	(title "flat with double room"))

([house_Class10001] of  Room

	(description "double room")
	(room_type double)
	(space 15)
	(windows_num 1))

([house_Class10002] of  Address

	(coordinates [house_Class50003])
	(district [house_Class0])
	(street "Carrer de Educacion"))

([house_Class10003] of  Room

	(description "Single Room")
	(room_type single)
	(space 20)
	(windows_num 2))

([house_Class10007] of  Coordinates

	(latitude 2.0)
	(longitude 2.0))

([house_Class11] of  Province

	(country [house_Class40004])
	(title "Barcelona"))

([house_Class13] of  City

	(province [house_Class11])
	(title "Barcelona"))

([house_Class14] of  District

	(city [house_Class13])
	(title "Barceloneta"))

([house_Class15] of  District

	(city [house_Class13])
	(title "Ciutat Vella"))

([house_Class2] of  Address

	(coordinates [house_Class30053])
	(district [house_Class40003])
	(street "Carrer Congos 4"))

([house_Class20000] of  Address

	(coordinates [house_Class40041])
	(district [house_Class30035])
	(street "MetroMar"))

([house_Class20001] of  Address

	(coordinates [house_Class30069])
	(district [house_Class30024])
	(street "Rambla De La Catalunya 150"))

([house_Class20002] of  Cinema

	(address [house_Class30003])
	(noisy 2)
	(title "Cinema Barrio Gotic"))

([house_Class20003] of  Date

	(day 12)
	(month 7)
	(year 2010))

([house_Class20004] of  Room

	(description "Double Room")
	(room_type double)
	(space 40)
	(windows_num 3))

([house_Class3] of  Pub

	(address [house_Class30123])
	(noisy 3)
	(title "Pub Rambla"))

([house_Class30000] of  Room

	(description "a double room")
	(room_type double)
	(space 15)
	(windows_num 1))

([house_Class30001] of  Offer

	(address [house_Class40002])
	(available_from [house_Class30107])
	(realty [house_Class70003])
	(rent 800.0)
	(title "passaige de gracia"))

([house_Class30002] of  Address

	(coordinates [house_Class60003])
	(district [house_Class30021])
	(street "pl. del Pedro"))

([house_Class30003] of  Address

	(coordinates [house_Class30070])
	(district [house_Class30027])
	(street "Carrer Cinema"))

([house_Class30004] of  University

	(address [house_Class30005])
	(noisy 3)
	(title "UPC Gotic"))

([house_Class30005] of  Address

	(coordinates [house_Class40009])
	(district [house_Class30035])
	(street "Carrer de la Mar"))

([house_Class30006] of  Offer

	(address [house_Class30018])
	(available_from [house_Class6])
	(realty [house_Class30010])
	(rent 800.0)
	(title "Muntaner"))

([house_Class30007] of  Offer

	(address [house_Class30103])
	(available_from [house_Class6])
	(realty [house_Class30013])
	(rent 2500.0)
	(title "Rambla de la C."))

([house_Class30008] of  Offer

	(address [house_Class2])
	(available_from [house_Class30106])
	(realty [house_Class30100])
	(rent 750.0)
	(title "Offer Flat 4"))

([house_Class30009] of  Offer

	(address [house_Class30108])
	(available_from [house_Class30107])
	(realty [house_Class30102])
	(rent 7000.0)
	(title "Offer Flat 5"))

([house_Class30010] of  Flat

	(description "Flat 2")
	(equipment [house_Class30099])
	(flat_type ground)
	(floor "1")
	(rooms
		[house_Class20004]
		[house_Class10003]
		[house_Class30012]
		[house_Class30011])
	(space 80))

([house_Class30011] of  Room

	(description "Kitchen medium")
	(room_type kitchen)
	(space 10)
	(windows_num 1))

([house_Class30012] of  Room

	(description "Bathroom small")
	(room_type bathroom)
	(space 8)
	(windows_num 0))

([house_Class30013] of  Flat

	(description "Flat 3")
	(equipment
		[house_Class30097]
		[house_Class30098]
		[house_Class30099]
		[house_Class30096]
		[house_Class30104])
	(flat_type attic)
	(floor "8")
	(rooms
		[house_Class20004]
		[house_Class10003]
		[house_Class10003]
		[house_Class30014]
		[house_Class30015]
		[house_Class30012]
		[house_Class10003])
	(space 250))

([house_Class30014] of  Room

	(description "Kitchen Large")
	(room_type kitchen)
	(space 20)
	(windows_num 3))

([house_Class30015] of  Room

	(description "Bathroom large")
	(room_type bathroom)
	(space 15)
	(windows_num 2))

([house_Class30018] of  Address

	(coordinates [house_Class30020])
	(district [house_Class15])
	(street "Muntaner 102"))

([house_Class30019] of  District

	(city [house_Class13])
	(title "Eixample esquerra"))

([house_Class30020] of  Coordinates

	(latitude 2.0)
	(longitude 0.0))

([house_Class30021] of  District

	(city [house_Class13])
	(title "El Raval"))

([house_Class30022] of  District

	(city [house_Class13])
	(title "Barri Gotic"))

([house_Class30023] of  District

	(city [house_Class13])
	(title "Barri De La Ribera"))

([house_Class30024] of  District

	(city [house_Class13])
	(title "Eixample Dreta"))

([house_Class30025] of  District

	(city [house_Class13])
	(title "Barri de la sagrada familia"))

([house_Class30026] of  District

	(city [house_Class13])
	(title "Fort Pienc"))

([house_Class30027] of  District

	(city [house_Class13])
	(title "Sant Antoni"))

([house_Class30028] of  District

	(city [house_Class13])
	(title "Sants-Montjuic"))

([house_Class30029] of  District

	(city [house_Class13])
	(title "Les Corts"))

([house_Class30030] of  District

	(city [house_Class13])
	(title "Sarria-Sant Gervasi"))

([house_Class30031] of  District

	(city [house_Class13])
	(title "Gracia"))

([house_Class30032] of  District

	(city [house_Class13])
	(title "Horta-Guinardo"))

([house_Class30033] of  District

	(city [house_Class13])
	(title "Nou Barris"))

([house_Class30034] of  District

	(city [house_Class13])
	(title "Sant Andreu"))

([house_Class30035] of  District

	(city [house_Class13])
	(title "Sant Marti: Diagonal Mar"))

([house_Class30037] of  City

	(province [house_Class11])
	(title "Terrassa"))

([house_Class30038] of  Coordinates

	(latitude 2.0)
	(longitude 3.0))

([house_Class30039] of  Coordinates

	(latitude 2.0)
	(longitude 4.0))

([house_Class30040] of  Coordinates

	(latitude 3.0)
	(longitude 1.0))

([house_Class30041] of  Coordinates

	(latitude 3.0)
	(longitude 0.0))

([house_Class30042] of  Coordinates

	(latitude 4.0)
	(longitude 0.0))

([house_Class30043] of  Coordinates

	(latitude 0.0)
	(longitude 1.0))

([house_Class30044] of  Coordinates

	(latitude 0.0)
	(longitude 2.0))

([house_Class30045] of  Coordinates

	(latitude 0.0)
	(longitude 3.0))

([house_Class30046] of  Coordinates

	(latitude 0.0)
	(longitude 4.0))

([house_Class30047] of  Coordinates

	(latitude 1.0)
	(longitude 1.0))

([house_Class30048] of  Coordinates

	(latitude 1.0)
	(longitude 2.0))

([house_Class30049] of  Coordinates

	(latitude 1.0)
	(longitude 3.0))

([house_Class30050] of  Coordinates

	(latitude 1.0)
	(longitude 4.0))

([house_Class30051] of  Coordinates

	(latitude 3.0)
	(longitude 2.0))

([house_Class30052] of  Coordinates

	(latitude 3.0)
	(longitude 3.0))

([house_Class30053] of  Coordinates

	(latitude 3.0)
	(longitude 4.0))

([house_Class30054] of  Coordinates

	(latitude 4.0)
	(longitude 1.0))

([house_Class30055] of  Coordinates

	(latitude 4.0)
	(longitude 2.0))

([house_Class30056] of  Coordinates

	(latitude 4.0)
	(longitude 3.0))

([house_Class30057] of  Coordinates

	(latitude 4.0)
	(longitude 4.0))

([house_Class30058] of  Coordinates

	(latitude -1.0)
	(longitude 0.0))

([house_Class30059] of  Coordinates

	(latitude -1.0)
	(longitude 1.0))

([house_Class30060] of  Coordinates

	(latitude -1.0)
	(longitude 2.0))

([house_Class30061] of  Coordinates

	(latitude -1.0)
	(longitude 3.0))

([house_Class30062] of  Coordinates

	(latitude -1.0)
	(longitude 4.0))

([house_Class30063] of  Coordinates

	(latitude -2.0)
	(longitude 0.0))

([house_Class30064] of  Coordinates

	(latitude -2.0)
	(longitude 1.0))

([house_Class30065] of  Coordinates

	(latitude -2.0)
	(longitude 2.0))

([house_Class30066] of  Coordinates

	(latitude -2.0)
	(longitude 3.0))

([house_Class30067] of  Coordinates

	(latitude -2.0)
	(longitude 4.0))

([house_Class30068] of  Coordinates

	(latitude -3.0)
	(longitude 0.0))

([house_Class30069] of  Coordinates

	(latitude -3.0)
	(longitude -1.0))

([house_Class30070] of  Coordinates

	(latitude -3.0)
	(longitude -2.0))

([house_Class30071] of  Library

	(address [house_Class30072])
	(noisy 0)
	(title "Library Catalunya"))

([house_Class30072] of  Address

	(coordinates [house_Class30073])
	(district [house_Class30024])
	(street "Placa Catalunya"))

([house_Class30073] of  Coordinates

	(latitude 0.0)
	(longitude 0.0))

([house_Class30074] of  Library

	(address [house_Class30075])
	(noisy 0)
	(title "Library Fraternitat"))

([house_Class30075] of  Address

	(coordinates [house_Class40028])
	(district [house_Class30025])
	(street "La Fraternitat de Barcelona"))

([house_Class30076] of  School

	(address [house_Class30077])
	(noisy 4)
	(title "School Santa Pere"))

([house_Class30077] of  Address

	(coordinates [house_Class30065])
	(district [house_Class30022])
	(street "Carrer de Sante Pere Mitja 10"))

([house_Class30096] of  Equipment

	(title "Internet"))

([house_Class30097] of  Equipment

	(title "Cleaning Service"))

([house_Class30098] of  Equipment

	(title "Climatization"))

([house_Class30099] of  Equipment

	(title "Heating"))

([house_Class30100] of  Flat

	(description "Flat 4")
	(flat_type normal)
	(floor "3")
	(rooms
		[house_Class30012]
		[house_Class10003]
		[house_Class10003]
		[house_Class10003]
		[house_Class30101])
	(space 75))

([house_Class30101] of  Room

	(description "Kitchen Small")
	(room_type kitchen)
	(space 6)
	(windows_num 1))

([house_Class30102] of  Flat

	(description "Flat 5")
	(equipment
		[house_Class30097]
		[house_Class30098]
		[house_Class30099]
		[house_Class30096]
		[house_Class30104]
		[house_Class30105])
	(flat_type normal)
	(floor "6")
	(rooms
		[house_Class30015]
		[house_Class20004]
		[house_Class20004]
		[house_Class20004]
		[house_Class10003]
		[house_Class30014])
	(space 230))

([house_Class30103] of  Address

	(coordinates [house_Class30062])
	(district [house_Class30024])
	(street "Rambla De Catalunya"))

([house_Class30104] of  Equipment

	(title "Cable TV"))

([house_Class30105] of  Equipment

	(title "Elevator"))

([house_Class30106] of  Date

	(day 1)
	(month 1)
	(year 2010))

([house_Class30107] of  Date

	(day 15)
	(month 1)
	(year 2010))

([house_Class30108] of  Address

	(coordinates [house_Class30069])
	(district [house_Class30019])
	(street "Carrer Llastics"))

([house_Class30109] of  Address

	(coordinates [house_Class30039])
	(district [house_Class40003])
	(street "Carrer Paris"))

([house_Class30110] of  Public+Transport

	(address [house_Class30113])
	(noisy 2)
	(title "Metrostop Hospital")
	(Transport+Type Metro))

([house_Class30111] of  Coordinates

	(latitude -4.0)
	(longitude 4.0))

([house_Class30112] of  Hospital

	(address [house_Class30113])
	(noisy 3)
	(title "Hospital"))

([house_Class30113] of  Address

	(coordinates [house_Class30111])
	(district [house_Class40003])
	(street "Carrer D'hospital"))

([house_Class30114] of  Market

	(address [house_Class30115])
	(noisy 2)
	(title "Mercado De Rambla"))

([house_Class30115] of  Address

	(coordinates [house_Class30060])
	(district [house_Class15])
	(street "Carrer de Rambla"))

([house_Class30116] of  University

	(address [house_Class30117])
	(noisy 3)
	(title "UB"))

([house_Class30117] of  Address

	(coordinates [house_Class30059])
	(district [house_Class30019])
	(street "Placa Universitat"))

([house_Class30118] of  Public+Transport

	(address [house_Class30072])
	(noisy 2)
	(title "Train Catalunya")
	(Transport+Type Train-Station))

([house_Class30119] of  Shop

	(address [house_Class30072])
	(noisy 1)
	(shop_type Grocery)
	(title "Center Shop"))

([house_Class30120] of  Bar

	(address [house_Class30072])
	(noisy 3)
	(title "Center Bar"))

([house_Class30121] of  Theatre

	(address [house_Class30072])
	(noisy 1)
	(title "Centric Theatre"))

([house_Class30122] of  Public+Transport

	(address [house_Class30072])
	(noisy 2)
	(title "Metrostop Centre")
	(Transport+Type Metro))

([house_Class30123] of  Address

	(coordinates [house_Class30058])
	(district [house_Class30034])
	(street "Rambla De La Catalunya"))

([house_Class4] of  Coordinates

	(latitude 1.0)
	(longitude 0.0))

([house_Class40002] of  Address

	(coordinates [house_Class30038])
	(district [house_Class30031])
	(street "passaige de gracia"))

([house_Class40003] of  District

	(city [house_Class13])
	(title "Hospital Clinic"))

([house_Class40004] of  Country

	(inhabitants 50000000)
	(title "Spain"))

([house_Class40006] of  Green+Area

	(address [house_Class40007])
	(noisy 0)
	(title "Parc El Mar"))

([house_Class40007] of  Address

	(coordinates [house_Class40008])
	(district [house_Class30035])
	(street "Carrer Parc Mar"))

([house_Class40008] of  Coordinates

	(latitude -4.0)
	(longitude -4.0))

([house_Class40009] of  Coordinates

	(latitude -4.0)
	(longitude -3.0))

([house_Class40010] of  Shop

	(address [house_Class40011])
	(noisy 1)
	(shop_type Grocery)
	(title "Shop Ferran"))

([house_Class40011] of  Address

	(coordinates [house_Class30020])
	(district [house_Class30026])
	(street "Carrer Ghent 20"))

([house_Class40012] of  Shop

	(address [house_Class40013])
	(noisy 1)
	(shop_type Grocery)
	(title "Shop Paki"))

([house_Class40013] of  Address

	(coordinates [house_Class30041])
	(district [house_Class30030])
	(street "Carrer De la Ribera"))

([house_Class40014] of  Shop

	(address [house_Class40015])
	(noisy 1)
	(shop_type Grocery)
	(title "Shop Nick"))

([house_Class40015] of  Address

	(coordinates [house_Class30048])
	(district [house_Class30022])
	(street "Carrer Nick"))

([house_Class40016] of  School

	(address [house_Class40017])
	(noisy 2)
	(title "Primary School Gracia"))

([house_Class40017] of  Address

	(coordinates [house_Class30047])
	(district [house_Class30031])
	(street "Carrer Fontana"))

([house_Class40018] of  Bar

	(address [house_Class40019])
	(noisy 3)
	(title "Bar Gracia"))

([house_Class40019] of  Address

	(coordinates [house_Class7])
	(district [house_Class30034])
	(street "Carrer Guell"))

([house_Class40020] of  Club

	(address [house_Class40021])
	(noisy 5)
	(title "Club Gracia"))

([house_Class40021] of  Address

	(coordinates [house_Class10007])
	(district [house_Class15])
	(street "Carrer De Clubia"))

([house_Class40022] of  Club

	(address [house_Class40023])
	(noisy 5)
	(title "Club Catalunya"))

([house_Class40023] of  Address

	(coordinates [house_Class30038])
	(district [house_Class30032])
	(street "Carrer De Traveserra"))

([house_Class40024] of  School

	(address [house_Class40025])
	(noisy 2)
	(title "Secondary School Gracia"))

([house_Class40025] of  Address

	(coordinates [house_Class30053])
	(district [house_Class30033])
	(street "Carrer Escuela"))

([house_Class40026] of  Market

	(address [house_Class40027])
	(noisy 2)
	(title "Mercado De Gracia"))

([house_Class40027] of  Address

	(coordinates [house_Class30057])
	(district [house_Class30031])
	(street "Traveserra de gracia"))

([house_Class40028] of  Coordinates

	(latitude 2.0)
	(longitude -1.0))

([house_Class40029] of  Cinema

	(address [house_Class40030])
	(noisy 2)
	(title "Cinema Sant Pere"))

([house_Class40030] of  Address

	(coordinates [house_Class40031])
	(district [house_Class30034])
	(street "Carrer De Indiana"))

([house_Class40031] of  Coordinates

	(latitude 1.0)
	(longitude -1.0))

([house_Class40032] of  Library

	(address [house_Class40033])
	(noisy 0)
	(title "Library Montjuic"))

([house_Class40033] of  Address

	(coordinates [house_Class30042])
	(district [house_Class30028])
	(street "Carrer Montjuic"))

([house_Class40034] of  Club

	(address [house_Class40035])
	(noisy 5)
	(title "Club Santiago"))

([house_Class40035] of  Address

	(coordinates [house_Class40036])
	(district [house_Class30033])
	(street "Carrer Santiago"))

([house_Class40036] of  Coordinates

	(latitude 2.0)
	(longitude -2.0))

([house_Class40037] of  Restaurant

	(address [house_Class40038])
	(noisy 2)
	(title "Resto Diagonal"))

([house_Class40038] of  Address

	(coordinates [house_Class40039])
	(district [house_Class30024])
	(street "Diagonal"))

([house_Class40039] of  Coordinates

	(latitude 3.0)
	(longitude -2.0))

([house_Class40040] of  Public+Transport

	(address [house_Class20000])
	(noisy 2)
	(title "Metrostop Mar")
	(Transport+Type Metro))

([house_Class40041] of  Coordinates

	(latitude 4.0)
	(longitude -4.0))

([house_Class50003] of  Coordinates

	(latitude -10.0)
	(longitude 10.0))

([house_Class50004] of  Offer

	(address [house_Class50007])
	(available_from [house_Class30106])
	(realty [house_Class50005])
	(rent 310.0)
	(title "Lousy flat in center"))

([house_Class50005] of  Flat

	(description "flat in center")
	(flat_type normal)
	(floor "2")
	(rooms
		[house_Class50006]
		[house_Class30000])
	(space 100))

([house_Class50006] of  Room

	(description "Bedroom")
	(room_type single)
	(space 10)
	(windows_num 0))

([house_Class50007] of  Address

	(coordinates [house_Class30059])
	(district [house_Class15])
	(street "Ronda de la Universitat"))

([house_Class50008] of  House

	(description "house at Torrasa")
	(house_type Terraced)
	(space 150))

([house_Class50009] of  Offer

	(address [house_Class50010])
	(available_from [house_Class6])
	(realty [house_Class50008])
	(rent 1350.0)
	(title "house at Torrasa"))

([house_Class50010] of  Address

	(coordinates [house_Class50011])
	(district [house_Class0])
	(street "nowhere"))

([house_Class50011] of  Coordinates

	(latitude -12.0)
	(longitude 10.0))

([house_Class6] of  Date

	(day 12)
	(month 12)
	(year 2009))

([house_Class60003] of  Coordinates

	(latitude -2.0)
	(longitude -6.0))

([house_Class7] of  Coordinates

	(latitude 2.0)
	(longitude 1.0))

([house_Class70003] of  Flat

	(description "double and single room")
	(floor "3")
	(rooms
		[house_Class70004]
		[house_Class70005])
	(space 80))

([house_Class70004] of  Room

	(description "double room")
	(room_type double)
	(space 12)
	(windows_num 0))

([house_Class70005] of  Room

	(description "single")
	(room_type single)
	(space 8)
	(windows_num 0))
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

;(defglobal ?*answer* = 0)

 

 
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
 
(defmessage-handler Service coor()
  (bind ?c (send ?self:address get-coordinates))
  ?c
)
  
(defmessage-handler Proposal print()
  (printout t (send ?self:offer print)) 
  (format t "Is proposed: %s%n" ?self:is_proposed)
  (format t "Score: %f%n" ?self:score)
  (format t "Noise: %f%n" ?self:noise)
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
 
 
 (defmessage-handler Offer has-double-room primary()
   (return  (send ?self:realty has-double-room))
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
 
 
   
 (deffacts distance
   (far 6)
   (middle 4)
   (close 2)
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
  (printout t "Currently we estimated you " ?num " rooms ")
  (bind ?additional (yes-or-no "is this enough?"))
  (if (eq ?additional FALSE)
    then
      (bind ?rooms (ask-number "How many extra rooms do you need" 0 20))
      (assert (Person room-num (+ ?rooms ?num)))
      (printout t "We estimated you " (+ ?num ?rooms) "rooms" crlf)
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
		    (assert (Person shops TRUE))
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
    (send ?proposal put-is_proposed TRUE)
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
 
(defrule exclude-not-centric 
    (Person location centric)
    ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>
  ;(printout t "want to be in center" crlf)
  ;TODO implement filtering
)
 

; if someone need a double room is a hard constraint
(defrule exclude-not-double-rooms "filter offers without double room"
   (Person facts ok)
   (Person room-type double)
   ?proposal<-(object (is-a Proposal) (offer ?offer))
  =>   
  ;(printout t (send ?offer get-title) " " (send ?offer has-double-room) crlf)
  (if (eq (send ?offer has-double-room) FALSE)
    then 
      (send ?proposal put-is_proposed FALSE)
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
