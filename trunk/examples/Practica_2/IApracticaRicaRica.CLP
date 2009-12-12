;;; Autores Ivan Fernandez y Alberto Gomez
;;; Practica de Sistemas Basados en el Conocimiento
;;; Elaboracion de menus para eventos de la empresa Rico Rico


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot location
		(type SYMBOL)
;+		(allowed-parents Region)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot food
		(type SYMBOL)
;+		(allowed-parents Meal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot produces
;+		(comment "This slot contains the wines produced by a particular winery. The maker of a Wine is its inverse slot.")
		(type INSTANCE)
;+		(allowed-classes Wine)
;+		(inverse-slot maker)
		(create-accessor read-write))
	(single-slot maker
;+		(comment "The maker of a wine (a Winery). This slot has an iinverse - the slot produces at the Winery class")
		(type INSTANCE)
;+		(allowed-classes Winery)
;+		(cardinality 0 1)
;+		(inverse-slot produces)
		(create-accessor read-write))
	(multislot region
		(type SYMBOL)
;+		(allowed-parents Region)
		(create-accessor read-write))
	(single-slot price
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot drink
		(type SYMBOL)
;+		(allowed-parents Wine)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ingredient+name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot season
		(type SYMBOL)
		(allowed-values ALL WINTER SUMMER)
		(default ALL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dish+style
		(type SYMBOL)
		(allowed-values CLASSIC MODERN REGIONAL GOURMET)
		(default CLASSIC)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ingredient_name
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tannin+level
		(type SYMBOL)
		(allowed-values LOW MODERATE HIGH)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot best+wineries
		(type INSTANCE)
;+		(allowed-classes Winery)
		(create-accessor read-write))
	(single-slot associated+wine
		(type INSTANCE)
;+		(allowed-classes Wine)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(cardinality 0 4)
		(create-accessor read-write))
	(multislot ingredients
		(type INSTANCE)
;+		(allowed-classes Ingredient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Course
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot area
;+		(comment "A specific area (such as Napa) where a wine comes from")
		(type SYMBOL)
;+		(allowed-parents Region)
		(create-accessor read-write))
	(single-slot hot
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot type
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot prac2v1_Slot_1
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Wine+template
	(is-a USER)
	(role concrete)
	(multislot best+wineries
		(type INSTANCE)
;+		(allowed-classes Winery)
		(create-accessor read-write)))

(defclass Winery
	(is-a USER)
	(role concrete)
	(single-slot location
		(type SYMBOL)
;+		(allowed-parents Region)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot produces
;+		(comment "This slot contains the wines produced by a particular winery. The maker of a Wine is its inverse slot.")
		(type INSTANCE)
;+		(allowed-classes Wine)
		(create-accessor read-write)))

(defclass Region
	(is-a USER)
	(role abstract))

(defclass United+States+region
	(is-a Region)
	(role abstract))

(defclass Arroyo+Grande+region
	(is-a United+States+region)
	(role concrete))

(defclass Central+coast+region
	(is-a United+States+region)
	(role concrete))

(defclass Edna+Valley+region
	(is-a United+States+region)
	(role concrete))

(defclass Mendocino+region
	(is-a United+States+region)
	(role concrete))

(defclass Napa+Valley+region
	(is-a United+States+region)
	(role concrete))

(defclass Santa+Barbara+region
	(is-a United+States+region)
	(role concrete))

(defclass Santa+Cruz+Mountains+region
	(is-a United+States+region)
	(role concrete))

(defclass Sonoma+region
	(is-a United+States+region)
	(role concrete))

(defclass Italian+region
	(is-a Region)
	(role abstract))

(defclass Chianti+region
	(is-a Italian+region)
	(role concrete))

(defclass French+region
	(is-a Region)
	(role abstract))

(defclass Alsace+region
	(is-a French+region)
	(role abstract))

(defclass Beaujolais+region
	(is-a French+region)
	(role abstract))

(defclass Bordeaux+region
	(is-a French+region)
	(role abstract))

(defclass Margaux+region
	(is-a Bordeaux+region)
	(role abstract))

(defclass Paulliac+region
	(is-a Bordeaux+region)
	(role abstract))

(defclass Sauterne+region
	(is-a Bordeaux+region)
	(role abstract))

(defclass St+Emillion+region
	(is-a Bordeaux+region)
	(role abstract))

(defclass Bourgogne+region
	(is-a French+region)
	(role abstract))

(defclass Cotes+d%27Or+region
	(is-a Bourgogne+region)
	(role abstract))

(defclass Meursault+region
	(is-a Bourgogne+region)
	(role abstract))

(defclass Cotes+Chalonnaise+region
	(is-a Bourgogne+region)
	(role abstract))

(defclass Loire+region
	(is-a French+region)
	(role abstract))

(defclass Pays+Nantes+region
	(is-a Loire+region)
	(role abstract))

(defclass Tours+region
	(is-a Loire+region)
	(role abstract))

(defclass Sancerre+region
	(is-a Loire+region)
	(role abstract))

(defclass Australian+region
	(is-a Region)
	(role abstract))

(defclass South+Australian+region
	(is-a Australian+region)
	(role abstract))

(defclass German+region
	(is-a Region)
	(role abstract))

(defclass New+Zealand+region
	(is-a Region)
	(role abstract))

(defclass Portuguese+region
	(is-a Region)
	(role abstract))

(defclass Consumable+thing
	(is-a USER)
	(role concrete)
	(single-slot price
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot name_ 
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Drink
	(is-a Consumable+thing)
	(role concrete))

(defclass Wine "A wine class represents all possible wines"
	(is-a Drink)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maker
;+		(comment "The maker of a wine (a Winery). This slot has an iinverse - the slot produces at the Winery class")
		(type INSTANCE)
;+		(allowed-classes Winery)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass White+wine
	(is-a Wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Chardonnay
	(is-a White+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Chardonnay+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Chenin+Blanc
	(is-a White+wine)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default MODERATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Chenin+Blanc+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Pinot+Blanc
	(is-a White+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Pinot+Blanc+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Sauvignon+Blanc
	(is-a White+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Sauvignon+Blanc+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Semillon
	(is-a White+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Semillon+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Riesling
	(is-a White+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Riesling+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Dry+Riesling
	(is-a Riesling)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default DELICATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Riesling+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass White+Burgundy
	(is-a Dry+Riesling)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Chablis
	(is-a White+Burgundy)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Pouilly-Fuisse
	(is-a White+Burgundy)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Sauterne
	(is-a White+wine)
	(role concrete)
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
		(default MEDIUM)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default WHITE)
;+		(value RED WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default SWEET)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass White+Bordeaux
	(is-a White+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Sancerre
	(is-a White+wine)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default DELICATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
		(default MEDIUM)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default OFF-DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [SAUVIGNON-BLANC+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Muscadet
	(is-a White+wine)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default DELICATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
		(default LIGHT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Pinot+Blanc+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Red+wine
	(is-a Wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tannin+level
		(type SYMBOL)
		(allowed-values LOW MODERATE HIGH)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Beaujolais
	(is-a Red+wine)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default DELICATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
		(default LIGHT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Gamay+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Red+Burgundy
	(is-a Red+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cotes+d%27Or
	(is-a Red+Burgundy)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cotes+Chalonnaise
	(is-a Red+Burgundy)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Red+Zinfandel
	(is-a Red+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Red+Bordeaux "The class of all Bordeaux wines"
	(is-a Red+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Medoc
	(is-a Red+Bordeaux)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Pauillac
	(is-a Medoc)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default STRONG)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
		(default FULL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Cabernet+Sauvignon+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Margaux
	(is-a Medoc)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default DELICATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Merlot+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass St.+Emillion
	(is-a Red+Bordeaux)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default STRONG)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Cabernet+Sauvignon+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Graves
	(is-a Red+Bordeaux)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Pinot+Noir
	(is-a Red+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Pinot+Noir+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Chianti
	(is-a Red+wine)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default MODERATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Petite+Syrah
	(is-a Red+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Petite+Syrah+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Red+Merlot
	(is-a Red+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Merlot+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Cabernet+Sauvignon
	(is-a Red+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Cabernet+Sauvignon+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Cabernet+Franc
	(is-a Red+wine)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default MODERATE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
		(default MEDIUM)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default DRY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Cabernet+Franc+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Rose+wine
	(is-a Wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value ROS%EF%BF%BD)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass White+Zinfandel
	(is-a Rose+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value ROS%EF%BF%BD)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass White+Merlot
	(is-a Rose+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value ROS%EF%BF%BD)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Dessert+wine
	(is-a Wine)
	(role concrete)
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
;+		(value SWEET)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Sweet+Reisling
	(is-a Riesling Dessert+wine)
	(role concrete)
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
;+		(value FULL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
;+		(value SWEET)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot grape
		(type INSTANCE)
;+		(allowed-classes Wine+grape)
		(default [Riesling+grape])
;+		(value [Riesling+grape])
		(cardinality 0 4)
		(create-accessor read-write)))

(defclass Ice+Wine
	(is-a Dessert+wine White+wine)
	(role concrete)
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
;+		(value WHITE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default SWEET)
;+		(value SWEET)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Port
	(is-a Red+wine Dessert+wine)
	(role concrete)
	(single-slot flavor
		(type SYMBOL)
		(allowed-values DELICATE MODERATE STRONG)
		(default STRONG)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot body
		(type SYMBOL)
		(allowed-values FULL MEDIUM LIGHT)
		(default FULL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot color
		(type SYMBOL)
		(allowed-values RED ROS%EF%BF%BD WHITE)
		(default RED)
;+		(value RED)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sugar
		(type SYMBOL)
		(allowed-values DRY SWEET OFF-DRY)
		(default SWEET)
;+		(value SWEET)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Soft+drink
	(is-a Drink)
	(role concrete))

(defclass Meal
	(is-a Consumable+thing)
	(role concrete)
	(single-slot season
		(type SYMBOL)
		(allowed-values ALL WINTER SUMMER)
		(default ALL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ingredients
		(type INSTANCE)
;+		(allowed-classes Ingredient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot hot
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot type
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot associated+wine
		(type INSTANCE)
;+		(allowed-classes Wine)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass First+course
	(is-a Meal)
	(role concrete)
	(single-slot type
		(type SYMBOL)
		(allowed-values VEGETAL PASTA SOUP FISH SEAFOOD CREAM)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Traditional+First+Course
	(is-a First+course)
	(role concrete)
	(single-slot type
		(type SYMBOL)
		(allowed-values VEGETAL PASTA SOUP FISH SEAFOOD CREAM)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Modern+First+Course
	(is-a First+course)
	(role concrete))

(defclass Gourmet+First+Course
	(is-a First+course)
	(role concrete))

(defclass Regional+First+Course
	(is-a First+course)
	(role concrete)
	(multislot region
		(type SYMBOL)
;+		(allowed-parents Region)
		(create-accessor read-write)))

(defclass Second+course
	(is-a Meal)
	(role concrete)
	(single-slot type
		(type SYMBOL)
		(allowed-values FISH MEAT FOWL VEGETAL)
		(default MEAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Traditional+Second+Course
	(is-a Second+course)
	(role concrete))

(defclass Modern+Second+Course
	(is-a Second+course)
	(role concrete))

(defclass Gourmet+Second+Course
	(is-a Second+course)
	(role concrete))

(defclass Regional+Second+Course
	(is-a Second+course)
	(role concrete)
	(multislot region
		(type SYMBOL)
;+		(allowed-parents Region)
		(create-accessor read-write)))

(defclass Dessert
	(is-a Meal)
	(role concrete)
	(single-slot type
		(type SYMBOL)
		(allowed-values FRUIT CAKE ICECREAM CREAM)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot associated+wine
		(type INSTANCE)
;+		(allowed-classes Wine)
		(default [Whitehall+Lane+Primavera])
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Traditional+Dessert
	(is-a Dessert)
	(role concrete)
	(single-slot associated+wine
		(type INSTANCE)
;+		(allowed-classes Wine)
		(default [Whitehall+Lane+Primavera])
;+		(value [Whitehall+Lane+Primavera])
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Modern+Dessert
	(is-a Dessert)
	(role concrete)
	(single-slot associated+wine
		(type INSTANCE)
;+		(allowed-classes Wine)
		(default [Whitehall+Lane+Primavera])
;+		(value [Selaks+Ice+Wine])
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Gourmet+Dessert
	(is-a Dessert)
	(role concrete)
	(single-slot associated+wine
		(type INSTANCE)
;+		(allowed-classes Wine)
		(default [Whitehall+Lane+Primavera])
;+		(value [Taylor+Port])
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Regional+Dessert
	(is-a Dessert)
	(role concrete)
	(multislot region
		(type SYMBOL)
;+		(allowed-parents Region)
		(create-accessor read-write)))

(defclass Wine+grape
	(is-a USER)
	(role concrete)
	(single-slot name_
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Ingredient
	(is-a USER)
	(role concrete)
	(single-slot ingredient+name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))
		

;;---------------------
;; PRODUCTOS INSTANCIAS
;;---------------------

(definstances products

([MAIN::Agua] of  Soft+drink

	(name_ "Agua")
	(price 3))

([MAIN::Ananas_con_Sorpresa] of  Modern+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50037]
		[prac2_Instance_40019]
		[prac2_Instance_20005]
		[prac2_Instance_50035]
		[prac2_Instance_50038])
	(name_ "Ananas con sorpresa")
	(price 12)
	(season ALL)
	(type FRUIT))


([MAIN::Asado_de_Cerdo_con_Manzanas] of  Modern+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_10008]
		[prac2_Instance_10011]
		[prac2_Instance_40022]
		[prac2_Instance_30009]
		[prac2_Instance_40010]
		[prac2_Instance_4])
	(name_ "Asado de Cerdo con Manzanas")
	(price 25)
	(season ALL)
	(type MEAT))

([MAIN::Bancroft] of  Winery

	(name_ "Bancroft"))

([MAIN::Beaujolais] of  Wine+template
)

([MAIN::Besugo_con_Champi%C3%B1ones] of  Traditional+Second+Course

	(associated+wine [Congress+Springs+Semillon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30051]
		[prac2_Instance_30044]
		[prac2_Instance_6]
		[prac2_Instance_30052]
		[prac2_Instance_5])
	(name_ "Besugo con ChampiÃ±ones")
	(price 15)
	(season ALL)
	(type FISH))

([MAIN::Blini_con_Caviar] of  Gourmet+First+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot FALSE)
	(ingredients
		[prac2_Instance_40057]
		[prac2_Instance_20007]
		[prac2_Instance_40058]
		[prac2_Instance_30027]
		[prac2_Instance_10013]
		[prac2_Instance_40059]
		[prac2_Instance_30052])
	(name_ "Blini con Caviar")
	(price 49)
	(season ALL)
	(type FISH))

([MAIN::Bombones_de_Freson] of  Modern+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50039]
		[prac2_Instance_50040]
		[prac2_Instance_50034])
	(name_ "Bombones de Freson")
	(price 11)
	(season ALL)
	(type CAKE))

([MAIN::Bonito_con_Tomate] of  Traditional+Second+Course

	(associated+wine [Congress+Springs+Semillon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30054]
		[prac2_Instance_20016]
		[prac2_Instance_6]
		[prac2_Instance_5]
		[prac2_Instance_10002]
		[prac2_Instance_20023])
	(name_ "Bonito con Tomate")
	(price 13)
	(season ALL)
	(type FISH))

([MAIN::Cabernet+Franc] of  Wine+template
)

([MAIN::Cabernet+Franc+grape] of  Wine+grape

	(name_ "Cabernet Franc grape"))

([MAIN::Cabernet+Sauvignon] of  Wine+template
)

([MAIN::Cabernet+Sauvignon+grape] of  Wine+grape

	(name_ "Cabernet Sauvignon grape"))

([MAIN::Capan_Relleno_con_Manzanas_y_Casta%C3%B1as] of  Modern+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40011]
		[prac2_Instance_40012]
		[prac2_Instance_5]
		[prac2_Instance_10013]
		[prac2_Instance_10008]
		[prac2_Instance_30040]
		[prac2_Instance_4]
		[prac2_Instance_40022])
	(name_ "Capan Relleno con Manzanas y CastaÃ±as")
	(price 31)
	(season ALL)
	(type FOWL))

([MAIN::Caracoles_a_la_Borgona] of  Regional+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_50054]
		[prac2_Instance_30024]
		[prac2_Instance_6]
		[prac2_Instance_30004]
		[prac2_Instance_10002]
		[prac2_Instance_10003]
		[prac2_Instance_20011]
		[prac2_Instance_10011]
		[prac2_Instance_40016]
		[prac2_Instance_40022]
		[prac2_Instance_30006])
	(name_ "Caracoles a la Borgona")
	(price 18)
	(region French+region)
	(season ALL)
	(type MEAT))

([MAIN::Carne_Mechada] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_10015]
		[prac2_Instance_10014]
		[prac2_Instance_3]
		[prac2_Instance_5]
		[prac2_Instance_10020]
		[prac2_Instance_40022])
	(name_ "Carne Mechada")
	(price 8)
	(season ALL)
	(type MEAT))

([MAIN::Carpaccio_de_Boletos_con_Almendra_Marcona_y_Vinagreta_de_Mostaza_Antigua] of  Gourmet+First+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_40051]
		[prac2_Instance_5]
		[prac2_Instance_10004]
		[prac2_Instance_40027])
	(name_ "Carpaccio de Boletos con Almendra Marcona y Vinagreta de Mostaza Antigua")
	(price 48)
	(season WINTER)
	(type VEGETAL))

([MAIN::Carpaccio_de_Gambas_con_Vinagreta_de_Madena_y_Pinones] of  Gourmet+First+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot FALSE)
	(ingredients
		[prac2_Instance_30023]
		[prac2_Instance_40055]
		[prac2_Instance_40027])
	(name_ "Carpaccio de Gambas con Vinagreta de Madena y Pinones")
	(price 37)
	(season ALL)
	(type SEAFOOD))

([MAIN::Chablis] of  Wine+template
)

([MAIN::Chardonnay] of  Wine+template
)

([MAIN::Chardonnay+grape] of  Wine+grape

	(name_ "Chardonnay grape"))

([MAIN::Chateau+Cheval+Blanc+St+Emilion] of  St.+Emillion

	(name_ "Chateau Cheval Blanc St Emilion")
	(price 400))

([MAIN::Chateau+D+Ychem] of  Winery

	(location Bordeaux+region)
	(name_ "Chateau D Ychem"))

([MAIN::Chateau+De+Meursault+Meursault] of  White+Burgundy

	(flavor MODERATE)
	(name_ "Chateau De Meursault Meursault"))

([MAIN::Chateau+Lafite+Rothschild] of  Winery

	(name_ "Chateau Lafite Rothschild")
	(produces [Chateau+Lafite+Rothschild+Pauillac]))

([MAIN::Chateau+Lafite+Rothschild+Pauillac] of  Pauillac

	(body FULL)
	(flavor STRONG)
	(grape [Cabernet+Sauvignon+grape])
	(maker [Chateau+Lafite+Rothschild])
	(name_ "Chateau Lafite Rothschild Pauillac")
	(sugar DRY)
	(tannin+level MODERATE))

([MAIN::Chateau+Margaux] of  Margaux

	(maker [Chateau+Margaux+Winery])
	(name_ "Chateau Margaux"))

([MAIN::Chateau+Margaux+Winery] of  Winery

	(name_ "Chateau Margaux")
	(produces [Chateau+Margaux]))

([MAIN::Chateau+Morgon] of  Winery

	(name_ "Chateau Morgon")
	(produces [Chateau+Morgon+Beaujolais]))

([MAIN::Chateau+Morgon+Beaujolais] of  Beaujolais

	(body LIGHT)
	(flavor DELICATE)
	(grape [Gamay+grape])
	(maker [Chateau+Morgon])
	(name_ "Chateau Morgon Beaujolais")
	(price 20)
	(sugar DRY)
	(tannin+level LOW))

([MAIN::Chenin+Blanc] of  Wine+template
)

([MAIN::Chenin+Blanc+grape] of  Wine+grape

	(name_ "Chenin Blanc grape"))

([MAIN::Chianti] of  Wine+template
)

([MAIN::Chianti+Classico] of  Chianti

	(body MEDIUM)
	(name_ "Chianti Classico")
	(price 19))

([MAIN::Chuletas_de_Cordero_al_Estragon] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_10012]
		[prac2_Instance_10013]
		[prac2_Instance_30052]
		[prac2_Instance_40022]
		[prac2_Instance_10011])
	(name_ "Chuletas de Cordero al Estragon")
	(price 12)
	(season ALL)
	(type MEAT))

([MAIN::Chateau_Smith_Haut_Lafitte_Rouge] of  White+Merlot

	(name_ "Chateau Smith Haut Lafitte Rouge")
	(price 60))

([MAIN::Civet_de_Liebre] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_5]
		[prac2_Instance_10020]
		[prac2_Instance_10013]
		[prac2_Instance_0]
		[prac2_Instance_10014]
		[prac2_Instance_3]
		[prac2_Instance_30027]
		[prac2_Instance_10011]
		[prac2_Instance_10004])
	(name_ "Civet de Liebre")
	(price 15)
	(season ALL)
	(type FOWL))

([MAIN::Clos+De+La+Poussie] of  Winery

	(name_ "Clos De La Poussie"))

([MAIN::Clos+De+Vougeot] of  Winery

	(name_ "Clos De Vougeot"))

([MAIN::Coke] of  Soft+drink

	(name_ "Coke")
	(price 3))

([MAIN::Conejo_con_Pimientos] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_10005]
		[prac2_Instance_10002]
		[prac2_Instance_20023]
		[prac2_Instance_40022]
		[prac2_Instance_10006]
		[prac2_Instance_10010]
		[prac2_Instance_3])
	(name_ "Conejo con Pimientos")
	(price 9)
	(season ALL)
	(type MEAT))

([MAIN::Congress+Springs] of  Winery

	(name_ "Congress Springs")
	(produces [Congress+Springs+Semillon]))

([MAIN::Congress+Springs+Semillon] of  Semillon

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Congress+Springs])
	(name_ "Congress Springs Semillon")
	(price 9)
	(sugar DRY))

([MAIN::Consome] of  Traditional+First+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_3]
		[prac2_Instance_30030]
		[prac2_Instance_30024]
		[prac2_Instance_30031]
		[prac2_Instance_5])
	(name_ "Consome")
	(price 9)
	(season WINTER)
	(type SOUP))

([MAIN::Consome_al_Oloroso_de_Jerez_con_Trufa_y_Juliana_de_Verduras] of  Modern+First+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_1]
		[prac2_Instance_5]
		[prac2_Instance_40032]
		[prac2_Instance_3]
		[prac2_Instance_30036]
		[prac2_Instance_30031])
	(name_ "Consome al oloroso de Jerez con Trufa y Juliana de Verduras")
	(price 19)
	(season WINTER)
	(type SOUP))

([MAIN::Corbans] of  Winery

	(name_ "Corbans")
	(produces
		[Corbans+Private+Bin+Sauvignon+Blanc]
		[Corbans+Sauvignon+Blanc]))

([MAIN::Corbans+Private+Bin+Sauvignon+Blanc] of  Sauvignon+Blanc

	(body FULL)
	(flavor STRONG)
	(maker [Corbans])
	(name_ "Corbans Private Bin Sauvignon Blanc")
	(price 16)
	(sugar DRY))

([MAIN::Corbans+Sauvignon+Blanc] of  Sauvignon+Blanc

	(body MEDIUM)
	(flavor STRONG)
	(maker [Corbans])
	(name_ "Corbans Sauvignon Blanc")
	(price 10)
	(sugar DRY))

([MAIN::Corton+Montrachet] of  Winery

	(name_ "Corton Montrachet")
	(produces [Corton+Montrachet+White+Burgundy]))

([MAIN::Corton+Montrachet+White+Burgundy] of  White+Burgundy

	(body FULL)
	(flavor STRONG)
	(maker [Corton+Montrachet])
	(name_ "Corton Montrachet White Burgundy")
	(sugar DRY))

([MAIN::Cotes+Chalonnaise] of  Wine+template
)

([MAIN::Cotes+dor] of  Wine+template
)

([MAIN::Cotturi] of  Winery

	(name_ "Cotturi"))

([MAIN::Crema_de_Gambas] of  Traditional+First+Course

	(associated+wine [Congress+Springs+Semillon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30023]
		[prac2_Instance_5]
		[prac2_Instance_3]
		[prac2_Instance_20016]
		[prac2_Instance_20013]
		[prac2_Instance_30024])
	(name_ "Crema de Gambas")
	(price 12)
	(season ALL)
	(type CREAM))

([MAIN::Crema_de_Guisantes] of  Traditional+First+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_7]
		[prac2_Instance_5]
		[prac2_Instance_4]
		[prac2_Instance_30040]
		[prac2_Instance_30031]
		[prac2_Instance_20013])
	(name_ "Crema de Guisantes")
	(price 14)
	(season ALL)
	(type CREAM))

([MAIN::Crema_de_Nacoras_y_Vieras] of  Modern+First+Course

	(associated+wine [Ventana+Chenin+Blanc])
	(hot TRUE)
	(ingredients
		[prac2_Instance_5]
		[prac2_Instance_4]
		[prac2_Instance_20004]
		[prac2_Instance_20007]
		[prac2_Instance_10006]
		[prac2_Instance_20006]
		[prac2_Instance_20005]
		[prac2_Instance_30012])
	(name_ "Crema de Nacoras y Vieras")
	(price 22)
	(season ALL)
	(type CREAM))

([MAIN::Crepes_con_Dulce_de_Leche] of  Modern+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50034]
		[prac2_Instance_50035]
		[prac2_Instance_40059]
		[prac2_Instance_50036])
	(name_ "Crepes con Dulce de Leche")
	(price 8)
	(season ALL)
	(type CREAM))

([MAIN::Coctel_de_Gambas] of  Modern+First+Course

	(associated+wine [Ventana+Chenin+Blanc])
	(hot FALSE)
	(ingredients
		[prac2_Instance_30023]
		[prac2_Instance_30026]
		[prac2_Instance_10]
		[prac2_Instance_10008]
		[prac2_Instance_20002]
		[prac2_Instance_20016])
	(name_ "Coctel de Gambas")
	(price 24)
	(season ALL)
	(type SEAFOOD))

([MAIN::D+Anjou] of  Winery

	(name_ "D Anjou"))

([MAIN::Dry+Riesling] of  Wine+template
)

([MAIN::Elyse] of  Winery

	(name_ "Elyse")
	(produces [Elyse+Zinfandel]))

([MAIN::Elyse+Zinfandel] of  Red+Zinfandel

	(body FULL)
	(flavor MODERATE)
	(maker [Elyse])
	(name_ "Elyse Zinfandel")
	(price 30)
	(sugar DRY))

([MAIN::Ensalada_de_Gambas] of  Traditional+First+Course

	(associated+wine [Congress+Springs+Semillon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30023]
		[prac2_Instance_10000]
		[prac2_Instance_10001]
		[prac2_Instance_30026]
		[prac2_Instance_10003]
		[prac2_Instance_20002])
	(name_ "Ensalada de Gambas")
	(price 14)
	(season ALL)
	(type SEAFOOD))

([MAIN::Ensalada_de_la_Casa] of  Traditional+First+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot FALSE)
	(ingredients
		[prac2_Instance_30026]
		[prac2_Instance_3]
		[prac2_Instance_20016]
		[prac2_Instance_30027]
		[prac2_Instance_30028]
		[prac2_Instance_5]
		[prac2_Instance_20023])
	(name_ "Ensalasa de la Casa")
	(price 8)
	(season ALL)
	(type VEGETAL))

([MAIN::Ensalada_de_R%C3%BAcula_con_Queso_Manchego_y_Aguacate] of  Modern+First+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot FALSE)
	(ingredients
		[prac2_Instance_30027]
		[prac2_Instance_40025]
		[prac2_Instance_40026]
		[prac2_Instance_40024]
		[prac2_Instance_40027])
	(name_ "Ensalada de RÃºcula con Queso Manchego y Aguacate")
	(price 19)
	(season ALL)
	(type VEGETAL))

([MAIN::Ensaladilla_Rusa] of  Traditional+First+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot FALSE)
	(ingredients
		[prac2_Instance_30033]
		[prac2_Instance_3]
		[prac2_Instance_30036]
		[prac2_Instance_7]
		[prac2_Instance_30038]
		[prac2_Instance_30037])
	(name_ "Ensaladilla Rusa")
	(price 7)
	(season ALL)
	(type VEGETAL))

([MAIN::Entrecot_a_la_Cebolla] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_5]
		[prac2_Instance_10018]
		[prac2_Instance_4]
		[prac2_Instance_40022])
	(name_ "Entrecot a la Cebolla")
	(price 18)
	(season ALL)
	(type MEAT))

([MAIN::Faisan_con_Nata] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_10009]
		[prac2_Instance_10007]
		[prac2_Instance_10008]
		[prac2_Instance_20013]
		[prac2_Instance_1]
		[prac2_Instance_5]
		[prac2_Instance_20011])
	(name_ "Faisan con Nata")
	(price 18)
	(season ALL)
	(type FOWL))

([MAIN::Forman] of  Winery

	(name_ "Forman")
	(produces [Forman+Cabernet+Sauvignon]))

([MAIN::Forman+Cabernet+Sauvignon] of  Cabernet+Sauvignon

	(body MEDIUM)
	(flavor STRONG)
	(maker [Forman])
	(name_ "Forman Cabernet Sauvignon")
	(price 65)
	(sugar DRY))

([MAIN::Foxen] of  Winery

	(name_ "Foxen")
	(produces [Foxen+Chenin+Blanc]))

([MAIN::Foxen+Chenin+Blanc] of  Chenin+Blanc

	(body FULL)
	(flavor MODERATE)
	(maker [Foxen])
	(name_ "Foxen Chenin Blanc")
	(price 20)
	(sugar DRY))

([MAIN::Gamay+grape] of  Wine+grape

	(name_ "Gamay grape"))

([MAIN::Gary+Farrell] of  Winery

	(name_ "Gary Farrell")
	(produces [Gary+Farrell+Merlot]))

([MAIN::Gary+Farrell+Merlot] of  Red+Merlot

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Gary+Farrell])
	(name_ "Gary Farrell Merlot")
	(price 30)
	(sugar DRY))

([MAIN::Gratinado_de_Calabacines_y_Tomates] of  Modern+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_5]
		[prac2_Instance_40026]
		[prac2_Instance_30008]
		[prac2v1_Instance_2])
	(name_ "Gratinado de Calabacines y Tomates")
	(price 14)
	(season ALL)
	(type VEGETAL))

([MAIN::Graves] of  Wine+template
)

([MAIN::Handley] of  Winery

	(name_ "Handley"))

([MAIN::Helado_de_Chocolate] of  Traditional+Dessert

	(hot FALSE)
	(ingredients [prac2_Instance_50039])
	(name_ "Helado de Chocolate")
	(price 7)
	(season ALL)
	(type ICECREAM))

([MAIN::Helado_de_Vainilla] of  Traditional+Dessert

	(hot FALSE)
	(ingredients [prac2_Instance_50038])
	(name_ "Helado de Vainilla")
	(price 6)
	(season ALL)
	(type ICECREAM))

([MAIN::Humus_con_Ventrisca_de_Bonito] of  Gourmet+First+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_30054]
		[prac2_Instance_10003]
		[prac2_Instance_40047])
	(name_ "Humus con Ventrisca de Bonito")
	(price 34)
	(season ALL)
	(type FISH))

([MAIN::Ice+Wine] of  Wine+template
)

([MAIN::Jarrete_de_Cordero_Relleno_de_Datiles_con_Salsa_de_Cardamomo_Verde_y_Crema_de_Patatas] of  Gourmet+Second+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40021]
		[prac2_Instance_50022]
		[prac2_Instance_30033]
		[prac2_Instance_50023]
		[prac2_Instance_40037])
	(name_ "Jarrete de Cordero Relleno de Datiles con Salsa de Cardamono Verde y Crema de Patatas")
	(price 54)
	(season ALL)
	(type MEAT))

([MAIN::Judas_Finas_Verdes_y_Salsa_al_Rioja] of  Modern+First+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_30036]
		[prac2_Instance_40034]
		[prac2_Instance_5]
		[prac2_Instance_10006]
		[prac2_Instance_20016])
	(name_ "Judas Finas Verdes y Salsa al Rioja")
	(price 22)
	(season ALL)
	(type VEGETAL))

([MAIN::Kalin+Cellars] of  Winery

	(name_ "Kalin Cellars")
	(produces [Kalin+Cellars+Semillon]))

([MAIN::Kalin+Cellars+Semillon] of  Semillon

	(body FULL)
	(flavor STRONG)
	(maker [Kalin+Cellars])
	(name_ "Kalin Cellars Semillon")
	(price 30)
	(sugar DRY))

([MAIN::Kathryn+Kennedy] of  Winery

	(name_ "Kathryn Kennedy"))

([MAIN::Lane+Tanner] of  Winery

	(name_ "Lane Tanner")
	(produces [Lane+Tanner+Pinot+Noir]))

([MAIN::Lane+Tanner+Pinot+Noir] of  Pinot+Noir

	(body LIGHT)
	(flavor DELICATE)
	(maker [Lane+Tanner])
	(name_ "Lane Tanner Pinot Noir")
	(price 20)
	(sugar DRY))

([MAIN::Lenguado_a_la_Naranja] of  Modern+Second+Course

	(associated+wine [Ventana+Chenin+Blanc])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40013]
		[prac2_Instance_40051]
		[prac2_Instance_4]
		[prac2_Instance_10011]
		[prac2_Instance_40022]
		[prac2_Instance_40014])
	(name_ "Lenguado a la Naranja")
	(price 30)
	(season ALL)
	(type FISH))

([MAIN::Limonada] of  Soft+drink

	(name_ "Limonada")
	(price 3))

([MAIN::Lomo_a_la_Manzana] of  Modern+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_2]
		[prac2_Instance_4]
		[prac2_Instance_10008]
		[prac2_Instance_20013]
		[prac2_Instance_10011])
	(name_ "Lomo a la Manzana")
	(price 25)
	(season ALL)
	(type MEAT))

([MAIN::Lomo_de_Bacalao_Confitado_con_Salsa_Agridulce] of  Gourmet+Second+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30019]
		[prac2_Instance_50024])
	(name_ "Lomo de Bacalao Confiado con Salsa Agridulce")
	(price 41)
	(season ALL)
	(type FISH))

([MAIN::Lomo_de_Cerdo_Asado] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_5]
		[prac2_Instance_2]
		[prac2_Instance_4]
		[prac2_Instance_40022]
		[prac2_Instance_3]
		[prac2_Instance_10])
	(name_ "Lomo de Cerdo Asado")
	(price 15)
	(season ALL)
	(type MEAT))

([MAIN::Longridge] of  Winery

	(name_ "Longridge")
	(produces [Longridge+Merlot]))

([MAIN::Longridge+Merlot] of  Red+Merlot

	(body LIGHT)
	(flavor MODERATE)
	(maker [Longridge])
	(name_ "Longridge Merlot")
	(price 10)
	(sugar DRY))

([MAIN::Lubina_a_la_Sal] of  Modern+Second+Course

	(associated+wine [Ventana+Chenin+Blanc])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40015]
		[prac2_Instance_40016])
	(name_ "Lubina a la Sal")
	(price 26)
	(season ALL)
	(type FISH))

([MAIN::Macarrones_con_Champi%C3%B1ones] of  Traditional+First+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30043]
		[prac2_Instance_30044]
		[prac2_Instance_30045]
		[prac2_Instance_20013]
		[prac2_Instance_10003])
	(name_ "Macarrones con ChampiÃ±ones")
	(price 13)
	(season ALL)
	(type PASTA))

([MAIN::Magret_de_Pato_con_Salsa_de_Mistela_y_Asencia_de_An%C3%ADs_Estrellado] of  Gourmet+Second+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_50025]
		[prac2_Instance_50026]
		[prac2_Instance_50027]
		[prac2_Instance_10020]
		[prac2_Instance_10002]
		[prac2_Instance_20011])
	(name_ "Magret de Pato con Salsa de Mistela y Asencia de AnÃ­s Estrellado")
	(price 50)
	(season ALL)
	(type FOWL))

([MAIN::Malbec+grape] of  Wine+grape

	(name_ "Malbec grape"))

([MAIN::Margaux] of  Wine+template
)

([MAIN::Marietta] of  Winery

	(name_ "Marietta")
	(produces
		[Marietta+Cabernet+Sauvignon]
		[Marietta+Petite+Syrah]
		[Marietta+Zinfandel]))

([MAIN::Marietta+Cabernet+Sauvignon] of  Cabernet+Sauvignon

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Marietta])
	(name_ "Marietta Cabernet Sauvignon")
	(price 10)
	(sugar DRY))

([MAIN::Marietta+Petite+Syrah] of  Petite+Syrah

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Marietta])
	(name_ "Marietta Petite Syrah")
	(price 16)
	(sugar DRY))

([MAIN::Marietta+Zinfandel] of  Red+Zinfandel

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Marietta])
	(name_ "Marietta Zinfandel")
	(price 20)
	(sugar DRY))

([MAIN::Maurice_Car_Rie_White_Zinfandel] of  White+Zinfandel

	(name_ "Maurice Car'Rie White Zinfandel")
	(price 10))

([MAIN::Medallones_de_Rape_con_Pur%C3%A9_de_Ciruelas_y_Espinacas] of  Gourmet+Second+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot TRUE)
	(ingredients
		[prac2_Instance_20006]
		[prac2_Instance_20009]
		[prac2_Instance_50028]
		[prac2_Instance_30048])
	(name_ "Medallones de Rape con PurÃ© de Ciruelas y Espinacas")
	(price 40)
	(season ALL)
	(type FISH))

([MAIN::Medoc] of  Wine+template
)

([MAIN::Mejillones_al_Vapor] of  Traditional+First+Course

	(associated+wine [Congress+Springs+Semillon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30052]
		[prac2_Instance_30056])
	(name_ "Mejillones al Vapor")
	(price 8)
	(season ALL)
	(type SEAFOOD))

([MAIN::Melocot%C3%B3n_con_Uvas] of  Traditional+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50052]
		[prac2_Instance_50053])
	(name_ "MelocotÃ³n con Uvas")
	(price 6)
	(season SUMMER)
	(type FRUIT))

([MAIN::Merlot+grape] of  Wine+grape

	(name_ "Merlot grape"))

([MAIN::Merluza_de_Pincho_con_Marinera_de_Algas] of  Gourmet+Second+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30015]
		[prac2_Instance_50029]
		[prac2_Instance_30008])
	(name_ "Merluza de Pincho con Marinera de Algas")
	(price 42)
	(season ALL)
	(type FISH))

([MAIN::Milhojas_de_Bacalao] of  Gourmet+Second+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot FALSE)
	(ingredients
		[prac2_Instance_30019]
		[prac2_Instance_30033]
		[prac2_Instance_30020]
		[prac2_Instance_6]
		[prac2_Instance_1]
		[prac2_Instance_5]
		[prac2_Instance_10003])
	(name_ "Milhojas de bacalao")
	(price 35)
	(season ALL)
	(type FISH))

([MAIN::Mini_Cremoso_de_Jazmin_con_Tofee] of  Gourmet+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50047]
		[prac2_Instance_50048]
		[prac2_Instance_50035]
		[prac2_Instance_50034])
	(name_ "Mini Cremoso de Jazmin con Tofee")
	(price 23)
	(season ALL)
	(type FRUIT))

([MAIN::Montevina__White_Zinfandel] of  White+Zinfandel

	(name_ "Montevina, White Zinfandel")
	(price 6))

([MAIN::Mount+Eden+Vineyard] of  Winery

	(name_ "Mount Eden Vineyard")
	(produces [Mount+Eden+Vineyard+Edna+Valley+Chardonnay]))

([MAIN::Mount+Eden+Vineyard+Edna+Valley+Chardonnay] of  Chardonnay

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Mount+Eden+Vineyard])
	(name_ "Mount Eden Vineyard Edna Valley Chardonnay")
	(price 18)
	(sugar DRY))

([MAIN::Mountadam] of  Winery

	(name_ "Mountadam")
	(produces
		[Mountadam+Chardonnay]
		[Mountadam+Pinot+Noir]
		[Mountadam+Riesling]))

([MAIN::Mountadam+Chardonnay] of  Chardonnay

	(body FULL)
	(flavor STRONG)
	(maker [Mountadam])
	(name_ "Mountadam Chardonnay")
	(price 32)
	(sugar DRY))

([MAIN::Mountadam+Pinot+Noir] of  Pinot+Noir

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Mountadam])
	(name_ "Mountadam Pinot Noir")
	(price 20)
	(sugar DRY))

([MAIN::Mountadam+Riesling] of  Dry+Riesling

	(body MEDIUM)
	(flavor DELICATE)
	(maker [Mountadam])
	(name_ "Mountadam Riesling")
	(price 28)
	(sugar DRY))

([MAIN::Muscadet] of  Wine+template
)

([MAIN::Naranjada] of  Soft+drink

	(name_ "Naranjada")
	(price 3))

([MAIN::Page+Mill+Winery] of  Winery

	(name_ "Page Mill Winery"))

([MAIN::Paletilla_de_Cabrito_al_Horno_con_Patatas_Panaderas] of  Gourmet+Second+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_50030]
		[prac2_Instance_30033]
		[prac2_Instance_10002]
		[prac2_Instance_10020]
		[prac2_Instance_40022])
	(name_ "Paletilla de Cabrito al Horno con Patatas Panaderas")
	(price 54)
	(season ALL)
	(type MEAT))

([MAIN::Pastel_de_la_Casa] of  Traditional+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50039]
		[prac2_Instance_50035]
		[prac2_Instance_50051]
		[prac2_Instance_20013]
		[prac2_Instance_50038]
		[prac2_Instance_50034])
	(name_ "Pastel de la Casa")
	(price 8)
	(season ALL)
	(type CAKE))

([MAIN::Pastelitos_de_Carne] of  Modern+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40017]
		[prac2_Instance_40018]
		[prac2_Instance_40019]
		[prac2_Instance_40020]
		[prac2_Instance_20023]
		[prac2_Instance_30008]
		[prac2_Instance_10002]
		[prac2_Instance_20010]
		[prac2_Instance_10011]
		[prac2_Instance_40032])
	(name_ "Pastelitos de Carne")
	(price 31)
	(season ALL)
	(type MEAT))

([MAIN::Pato_con_Jud%C3%ADas] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_5]
		[prac2_Instance_10002]
		[prac2_Instance_20017]
		[prac2_Instance_10003])
	(name_ "Pato con JudÃ­as")
	(price 13)
	(season ALL)
	(type FOWL))

([MAIN::Pato_con_Naranja_e_Hierbas] of  Modern+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_30004]
		[prac2_Instance_10020]
		[prac2_Instance_40014]
		[prac2_Instance_20017]
		[prac2_Instance_10011]
		[prac2_Instance_40045])
	(name_ "Pato con Naranja e Hierbas")
	(price 33)
	(season ALL)
	(type FOWL))

([MAIN::Pauillac] of  Wine+template
)

([MAIN::Peter+Mccoy] of  Winery

	(name_ "Peter Mccoy")
	(produces [Peter+Mccoy+Chardonnay]))

([MAIN::Peter+Mccoy+Chardonnay] of  Chardonnay

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Peter+Mccoy])
	(name_ "Peter Mccoy Chardonnay")
	(price 25)
	(sugar DRY))

([MAIN::Petite+Syrah] of  Wine+template
)

([MAIN::Petite+Syrah+grape] of  Wine+grape

	(name_ "Petite Syrah grape"))

([MAIN::Petite+Verdot+grape] of  Wine+grape

	(name_ "Petite Verdot grape"))

([MAIN::Pinot+Blanc] of  Wine+template
)

([MAIN::Pinot+Blanc+grape] of  Wine+grape

	(name_ "Pinot Blanc grape"))

([MAIN::Pinot+Noir] of  Wine+template
)

([MAIN::Pinot+Noir+grape] of  Wine+grape

	(name_ "Pinot Noir grape"))

([MAIN::Pollo_a_la_Cerveza] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_6]
		[prac2_Instance_5]
		[prac2_Instance_20015]
		[prac2_Instance_20014]
		[prac2_Instance_3]
		[prac2_Instance_10020]
		[prac2_Instance_10006]
		[prac2_Instance_10011])
	(name_ "Pollo a la Cerveza")
	(price 8)
	(season ALL)
	(type FOWL))

([MAIN::Port] of  Wine+template
)

([MAIN::Pouilly-Fuisse] of  Wine+template
)

([MAIN::prac2_Instance_0] of  Ingredient

	(ingredient+name "liebre"))

([MAIN::prac2_Instance_1] of  Ingredient

	(ingredient+name "caldo de carne"))

([MAIN::prac2_Instance_10] of  Ingredient

	(ingredient+name "maiz"))

([MAIN::prac2_Instance_10000] of  Ingredient

	(ingredient+name "naranjas"))

([MAIN::prac2_Instance_10001] of  Ingredient

	(ingredient+name "esparragos"))

([MAIN::prac2_Instance_10002] of  Ingredient

	(ingredient+name "laurel"))

([MAIN::prac2_Instance_10003] of  Ingredient

	(ingredient+name "perejil"))

([MAIN::prac2_Instance_10004] of  Ingredient

	(ingredient+name "setas"))

([MAIN::prac2_Instance_10005] of  Ingredient

	(ingredient+name "conejo"))

([MAIN::prac2_Instance_10006] of  Ingredient

	(ingredient+name "maizena"))

([MAIN::prac2_Instance_10007] of  Ingredient

	(ingredient+name "faisan"))

([MAIN::prac2_Instance_10008] of  Ingredient

	(ingredient+name "manzana"))

([MAIN::prac2_Instance_10009] of  Ingredient

	(ingredient+name "apio"))

([MAIN::prac2_Instance_10010] of  Ingredient

	(ingredient+name "tomillo"))

([MAIN::prac2_Instance_10011] of  Ingredient

	(ingredient+name "pimienta negra"))

([MAIN::prac2_Instance_10012] of  Ingredient

	(ingredient+name "chuleta de cordero"))

([MAIN::prac2_Instance_10013] of  Ingredient

	(ingredient+name "harina"))

([MAIN::prac2_Instance_10014] of  Ingredient

	(ingredient+name "tocino"))

([MAIN::prac2_Instance_10015] of  Ingredient

	(ingredient+name "carne de redondo"))

([MAIN::prac2_Instance_10018] of  Ingredient

	(ingredient+name "entrecot"))

([MAIN::prac2_Instance_10020] of  Ingredient

	(ingredient+name "estragan"))

([MAIN::prac2_Instance_2] of  Ingredient

	(ingredient+name "lomo"))

([MAIN::prac2_Instance_20002] of  Ingredient

	(ingredient+name "mayonesa"))

([MAIN::prac2_Instance_20004] of  Ingredient

	(ingredient+name "nacoras"))

([MAIN::prac2_Instance_20005] of  Ingredient

	(ingredient+name "ron"))

([MAIN::prac2_Instance_20006] of  Ingredient

	(ingredient+name "puro"))

([MAIN::prac2_Instance_20007] of  Ingredient

	(ingredient+name "hierbas aromaticas"))

([MAIN::prac2_Instance_20009] of  Ingredient

	(ingredient+name "rape"))

([MAIN::prac2_Instance_20010] of  Ingredient

	(ingredient+name "nuez moscada"))

([MAIN::prac2_Instance_20011] of  Ingredient

	(ingredient+name "pimienta blanca"))

([MAIN::prac2_Instance_20013] of  Ingredient

	(ingredient+name "nata liquida"))

([MAIN::prac2_Instance_20014] of  Ingredient

	(ingredient+name "pollo"))

([MAIN::prac2_Instance_20015] of  Ingredient

	(ingredient+name "cerveza"))

([MAIN::prac2_Instance_20016] of  Ingredient

	(ingredient+name "tomate"))

([MAIN::prac2_Instance_20017] of  Ingredient

	(ingredient+name "pato"))

([MAIN::prac2_Instance_20019] of  Ingredient

	(ingredient+name "judas"))

([MAIN::prac2_Instance_20023] of  Ingredient

	(ingredient+name "pimientos"))

([MAIN::prac2_Instance_3] of  Ingredient

	(ingredient+name "zanahoria"))

([MAIN::prac2_Instance_30002] of  Ingredient

	(ingredient+name "bogavante"))

([MAIN::prac2_Instance_30003] of  Ingredient

	(ingredient+name "rape"))

([MAIN::prac2_Instance_30004] of  Ingredient

	(ingredient+name "cebolla"))

([MAIN::prac2_Instance_30005] of  Ingredient

	(ingredient+name "puerro"))

([MAIN::prac2_Instance_30006] of  Ingredient

	(ingredient+name "zanahoria"))

([MAIN::prac2_Instance_30007] of  Ingredient

	(ingredient+name "arroz"))

([MAIN::prac2_Instance_30008] of  Ingredient

	(ingredient+name "tomate"))

([MAIN::prac2_Instance_30009] of  Ingredient

	(ingredient+name "cerdo"))

([MAIN::prac2_Instance_30010] of  Ingredient

	(ingredient+name "bogavante"))

([MAIN::prac2_Instance_30011] of  Ingredient

	(ingredient+name "arroz"))

([MAIN::prac2_Instance_30012] of  Ingredient

	(ingredient+name "vieras"))

([MAIN::prac2_Instance_30014] of  Ingredient

	(ingredient+name "langostinos"))

([MAIN::prac2_Instance_30015] of  Ingredient

	(ingredient+name "merluza"))

([MAIN::prac2_Instance_30019] of  Ingredient

	(ingredient+name "bacalao"))

([MAIN::prac2_Instance_30020] of  Ingredient

	(ingredient+name "pimientos del piquillo"))

([MAIN::prac2_Instance_30023] of  Ingredient

	(ingredient+name "gambas"))

([MAIN::prac2_Instance_30024] of  Ingredient

	(ingredient+name "agua"))

([MAIN::prac2_Instance_30026] of  Ingredient

	(ingredient+name "lechuga"))

([MAIN::prac2_Instance_30027] of  Ingredient

	(ingredient+name "aceitunas"))

([MAIN::prac2_Instance_30028] of  Ingredient

	(ingredient+name "atÃºn"))

([MAIN::prac2_Instance_30030] of  Ingredient

	(ingredient+name "carne de vaca"))

([MAIN::prac2_Instance_30031] of  Ingredient

	(ingredient+name "puerro"))

([MAIN::prac2_Instance_30033] of  Ingredient

	(ingredient+name "patata"))

([MAIN::prac2_Instance_30034] of  Ingredient

	(ingredient+name "salchichas"))

([MAIN::prac2_Instance_30036] of  Ingredient

	(ingredient+name "judas verdes"))

([MAIN::prac2_Instance_30037] of  Ingredient

	(ingredient+name "huevo duro"))

([MAIN::prac2_Instance_30038] of  Ingredient

	(ingredient+name "huevo crudo"))

([MAIN::prac2_Instance_30040] of  Ingredient

	(ingredient+name "caldo"))

([MAIN::prac2_Instance_30043] of  Ingredient

	(ingredient+name "macarrones"))

([MAIN::prac2_Instance_30044] of  Ingredient

	(ingredient+name "champinones"))

([MAIN::prac2_Instance_30045] of  Ingredient

	(ingredient+name "jamon"))

([MAIN::prac2_Instance_30047] of  Ingredient

	(ingredient+name "raviolis"))

([MAIN::prac2_Instance_30048] of  Ingredient

	(ingredient+name "espinacas"))

([MAIN::prac2_Instance_30049] of  Ingredient

	(ingredient+name "vaca cocida"))

([MAIN::prac2_Instance_30051] of  Ingredient

	(ingredient+name "besugo"))

([MAIN::prac2_Instance_30052] of  Ingredient

	(ingredient+name "limon"))

([MAIN::prac2_Instance_30054] of  Ingredient

	(ingredient+name "bonito"))

([MAIN::prac2_Instance_30056] of  Ingredient

	(ingredient+name "mejillones"))

([MAIN::prac2_Instance_4] of  Ingredient

	(ingredient+name "mantequilla"))

([MAIN::prac2_Instance_40010] of  Ingredient

	(ingredient+name "canela"))

([MAIN::prac2_Instance_40011] of  Ingredient

	(ingredient+name "capon"))

([MAIN::prac2_Instance_40012] of  Ingredient

	(ingredient+name "castanas"))

([MAIN::prac2_Instance_40013] of  Ingredient

	(ingredient+name "lenguado"))

([MAIN::prac2_Instance_40014] of  Ingredient

	(ingredient+name "naranja"))

([MAIN::prac2_Instance_40015] of  Ingredient

	(ingredient+name "lubina"))

([MAIN::prac2_Instance_40016] of  Ingredient

	(ingredient+name "sal gorda"))

([MAIN::prac2_Instance_40017] of  Ingredient

	(ingredient+name "hojaldre"))

([MAIN::prac2_Instance_40018] of  Ingredient

	(ingredient+name "carne picada"))

([MAIN::prac2_Instance_40019] of  Ingredient

	(ingredient+name "pasas"))

([MAIN::prac2_Instance_40020] of  Ingredient

	(ingredient+name "huevo relleno"))

([MAIN::prac2_Instance_40021] of  Ingredient

	(ingredient+name "cordero"))

([MAIN::prac2_Instance_40022] of  Ingredient

	(ingredient+name "vino blanco"))

([MAIN::prac2_Instance_40023] of  Ingredient

	(ingredient+name "queso parmesano"))

([MAIN::prac2_Instance_40024] of  Ingredient

	(ingredient+name "ricula"))

([MAIN::prac2_Instance_40025] of  Ingredient

	(ingredient+name "aguacate"))

([MAIN::prac2_Instance_40026] of  Ingredient

	(ingredient+name "queso manchego"))

([MAIN::prac2_Instance_40027] of  Ingredient

	(ingredient+name "vinagre"))

([MAIN::prac2_Instance_40029] of  Ingredient

	(ingredient+name "tostadas"))

([MAIN::prac2_Instance_40030] of  Ingredient

	(ingredient+name "salmon"))

([MAIN::prac2_Instance_40032] of  Ingredient

	(ingredient+name "vino de jerez"))

([MAIN::prac2_Instance_40034] of  Ingredient

	(ingredient+name "vino de rioja"))

([MAIN::prac2_Instance_40037] of  Ingredient

	(ingredient+name "queso roquefort"))

([MAIN::prac2_Instance_40038] of  Ingredient

	(ingredient+name "foie"))

([MAIN::prac2_Instance_40040] of  Ingredient

	(ingredient+name "calabaza"))

([MAIN::prac2_Instance_40041] of  Ingredient

	(ingredient+name "menta"))

([MAIN::prac2_Instance_40042] of  Ingredient

	(ingredient+name "copos de yema"))

([MAIN::prac2_Instance_40043] of  Ingredient

	(ingredient+name "habitas"))

([MAIN::prac2_Instance_40045] of  Ingredient

	(ingredient+name "romero"))

([MAIN::prac2_Instance_40047] of  Ingredient

	(ingredient+name "sisamo"))

([MAIN::prac2_Instance_40049] of  Ingredient

	(ingredient+name "berenjena"))

([MAIN::prac2_Instance_40050] of  Ingredient

	(ingredient+name "caramelo"))

([MAIN::prac2_Instance_40051] of  Ingredient

	(ingredient+name "almendras"))

([MAIN::prac2_Instance_40052] of  Ingredient

	(ingredient+name "agua de rosas"))

([MAIN::prac2_Instance_40055] of  Ingredient

	(ingredient+name "pinones"))

([MAIN::prac2_Instance_40057] of  Ingredient

	(ingredient+name "caviar"))

([MAIN::prac2_Instance_40058] of  Ingredient

	(ingredient+name "levadura"))

([MAIN::prac2_Instance_40059] of  Ingredient

	(ingredient+name "leche"))

([MAIN::prac2_Instance_5] of  Ingredient

	(ingredient+name "cebolla"))

([MAIN::prac2_Instance_50022] of  Ingredient

	(ingredient+name "datiles"))

([MAIN::prac2_Instance_50023] of  Ingredient

	(ingredient+name "salsa de cardamono"))

([MAIN::prac2_Instance_50024] of  Ingredient

	(ingredient+name "salsa agridulce"))

([MAIN::prac2_Instance_50025] of  Ingredient

	(ingredient+name "magret de pato"))

([MAIN::prac2_Instance_50026] of  Ingredient

	(ingredient+name "mistela"))

([MAIN::prac2_Instance_50027] of  Ingredient

	(ingredient+name "anÃ­s"))

([MAIN::prac2_Instance_50028] of  Ingredient

	(ingredient+name "ciruelas"))

([MAIN::prac2_Instance_50029] of  Ingredient

	(ingredient+name "algas"))

([MAIN::prac2_Instance_50030] of  Ingredient

	(ingredient+name "cabrito"))

([MAIN::prac2_Instance_50031] of  Ingredient

	(ingredient+name "ternera"))

([MAIN::prac2_Instance_50032] of  Ingredient

	(ingredient+name "tartar de ternera"))

([MAIN::prac2_Instance_50034] of  Ingredient

	(ingredient+name "yemas"))

([MAIN::prac2_Instance_50035] of  Ingredient

	(ingredient+name "claras de huevo"))

([MAIN::prac2_Instance_50036] of  Ingredient

	(ingredient+name "leche condensada"))

([MAIN::prac2_Instance_50037] of  Ingredient

	(ingredient+name "pinas"))

([MAIN::prac2_Instance_50038] of  Ingredient

	(ingredient+name "vainilla"))

([MAIN::prac2_Instance_50039] of  Ingredient

	(ingredient+name "chocolate"))

([MAIN::prac2_Instance_50040] of  Ingredient

	(ingredient+name "fresones"))

([MAIN::prac2_Instance_50041] of  Ingredient

	(ingredient+name "kiwi"))

([MAIN::prac2_Instance_50042] of  Ingredient

	(ingredient+name "frambuesa"))

([MAIN::prac2_Instance_50043] of  Ingredient

	(ingredient+name "fresas"))

([MAIN::prac2_Instance_50045] of  Ingredient

	(ingredient+name "pera williams"))

([MAIN::prac2_Instance_50046] of  Ingredient

	(ingredient+name "maracuya"))

([MAIN::prac2_Instance_50047] of  Ingredient

	(ingredient+name "flor de jazmin"))

([MAIN::prac2_Instance_50048] of  Ingredient

	(ingredient+name "tofee"))

([MAIN::prac2_Instance_50050] of  Ingredient

	(ingredient+name "profiteroles"))

([MAIN::prac2_Instance_50051] of  Ingredient

	(ingredient+name "nata"))

([MAIN::prac2_Instance_50052] of  Ingredient

	(ingredient+name "melocoton"))

([MAIN::prac2_Instance_50053] of  Ingredient

	(ingredient+name "uvas"))

([MAIN::prac2_Instance_50054] of  Ingredient

	(ingredient+name "caracoles"))

([MAIN::prac2_Instance_50056] of  Ingredient

	(ingredient+name "jamon"))

([MAIN::prac2_Instance_50057] of  Ingredient

	(ingredient+name "queso mascarpone"))

([MAIN::prac2_Instance_50058] of  Ingredient

	(ingredient+name "bizcochos"))

([MAIN::prac2_Instance_50059] of  Ingredient

	(ingredient+name "cafe"))

([MAIN::prac2_Instance_50060] of  Ingredient

	(ingredient+name "manteca"))

([MAIN::prac2_Instance_50061] of  Ingredient

	(ingredient+name "azucar"))

([MAIN::prac2_Instance_6] of  Ingredient

	(ingredient+name "ajo"))

([MAIN::prac2_Instance_7] of  Ingredient

	(ingredient+name "guisantes"))

([MAIN::prac2_Instance_8] of  Ingredient

	(ingredient+name "ternera"))

([MAIN::prac2v1_Instance_2] of  Ingredient

	(ingredient+name "calabacines"))

([MAIN::Profiteroles_de_Chocolate] of  Traditional+Dessert

	(hot TRUE)
	(ingredients
		[prac2_Instance_50039]
		[prac2_Instance_50050]
		[prac2_Instance_50051])
	(name_ "Profiteroles de Chocolate")
	(price 8)
	(season ALL)
	(type CAKE))

([MAIN::Pudding_de_Esp%C3%A1rragos] of  Gourmet+Second+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_10001]
		[prac2_Instance_10011]
		[prac2_Instance_30024])
	(name_ "Pudding de Esparragos")
	(price 18)
	(season ALL)
	(type VEGETAL))

([MAIN::Puligny+Montrachet] of  Winery

	(name_ "Puligny Montrachet")
	(produces [Puligny+Montrachet+White+Burgundy]))

([MAIN::Puligny+Montrachet+White+Burgundy] of  White+Burgundy

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Puligny+Montrachet])
	(name_ "Puligny Montrachet White Burgundy")
	(sugar DRY))

([MAIN::Pure_de_Maracuya] of  Gourmet+Dessert

	(hot FALSE)
	(ingredients [prac2_Instance_50046])
	(name_ "Pure de Maracuya")
	(price 16)
	(season ALL)
	(type FRUIT))

([MAIN::Pure_de_Pera_Williams] of  Gourmet+Dessert

	(hot FALSE)
	(ingredients [prac2_Instance_50045])
	(name_ "Pure de Pera Williams")
	(price 18)
	(season ALL)
	(type FRUIT))

([MAIN::Raviolis_con_Carne_y_Espinacas] of  Traditional+First+Course

	(associated+wine [Montevina__White_Zinfandel])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30047]
		[prac2_Instance_10013]
		[prac2_Instance_4]
		[prac2_Instance_30048]
		[prac2_Instance_20013]
		[prac2_Instance_1]
		[prac2_Instance_5]
		[prac2_Instance_10006])
	(name_ "Ravioli con Carne y Espinacas")
	(price 15)
	(season ALL)
	(type PASTA))

([MAIN::Raviolis_de_Foie_con_Salsa_Roquefort] of  Modern+First+Course

	(associated+wine [Maurice_Car_Rie_White_Zinfandel])
	(hot TRUE)
	(ingredients
		[prac2_Instance_5]
		[prac2_Instance_40038]
		[prac2_Instance_40037]
		[prac2_Instance_30047]
		[prac2_Instance_30040])
	(name_ "Raviolis de Foie con Salsa Roquefort")
	(price 24)
	(season ALL)
	(type PASTA))

([MAIN::Red+Bordeaux] of  Wine+template

	(best+wineries
		[Chateau+Lafite+Rothschild]
		[Chateau+Margaux+Winery]
		[wines_00087]
		[wines_00088]
		[wines_00089]))

([MAIN::Red+Burgundy] of  Wine+template
)

([MAIN::Red+Merlot] of  Wine+template
)

([MAIN::Red+Zinfandel] of  Wine+template
)

([MAIN::Reposteria_Variada_de_Frutas_del_Bosque] of  Gourmet+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50041]
		[prac2_Instance_50042]
		[prac2_Instance_50040]
		[prac2_Instance_50043]
		[prac2_Instance_50034])
	(name_ "Reposteria Variada de Frutas del Bosque")
	(price 22)
	(season SUMMER)
	(type FRUIT))

([MAIN::Riesling] of  Wine+template
)

([MAIN::Riesling+grape] of  Wine+grape

	(name_ "Riesling grape"))

([MAIN::Risotto_de_Setas] of  Modern+First+Course

	(associated+wine [Maurice_Car_Rie_White_Zinfandel])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30011]
		[prac2_Instance_10004]
		[prac2_Instance_40022]
		[prac2_Instance_6]
		[prac2_Instance_30040]
		[prac2_Instance_5]
		[prac2_Instance_40023])
	(name_ "Risotto de Setas")
	(price 22)
	(season ALL)
	(type PASTA))

([MAIN::Rollito_de_Berenjena_al_Caramelo_Rellenos_de_Almendra_y_Agua_de_Rosas] of  Gourmet+First+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40052]
		[prac2_Instance_40051]
		[prac2_Instance_40049]
		[prac2_Instance_40050]
		[prac2_Instance_6]
		[prac2_Instance_5]
		[prac2_Instance_40027])
	(name_ "Rollito de Berenjena al Caramelo Rellenos de Almendra y Agua de Rosas")
	(price 40)
	(season ALL)
	(type VEGETAL))

([MAIN::Salmon_Ahumado_con_Tostaditas] of  Modern+First+Course

	(associated+wine [Ventana+Chenin+Blanc])
	(hot FALSE)
	(ingredients
		[prac2_Instance_5]
		[prac2_Instance_40030]
		[prac2_Instance_40029])
	(name_ "Salmon Ahumado con Tostaditas")
	(price 24)
	(season ALL)
	(type FISH))

([MAIN::Salpicon_de_Marisco] of  Gourmet+First+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot FALSE)
	(ingredients
		[prac2_Instance_30014]
		[prac2_Instance_20023]
		[prac2_Instance_20016]
		[prac2_Instance_40027])
	(name_ "Salpicon de Marisco")
	(price 38)
	(season ALL)
	(type SEAFOOD))

([MAIN::Salsa_de_Bogavante_y_Rape] of  Modern+First+Course

	(associated+wine [Ventana+Chenin+Blanc])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30010]
		[prac2_Instance_20009]
		[prac2_Instance_5]
		[prac2_Instance_30031]
		[prac2_Instance_3]
		[prac2_Instance_30011]
		[prac2_Instance_20016])
	(name_ "Salsa de Bogavante y Rape")
	(price 25)
	(season ALL)
	(type CREAM))

([MAIN::Saltimbocca_de_Ternera] of  Regional+Second+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30011]
		[prac2_Instance_10013]
		[prac2_Instance_4]
		[prac2_Instance_10003]
		[prac2_Instance_40023]
		[prac2_Instance_40037]
		[prac2_Instance_8]
		[prac2_Instance_50056])
	(name_ "Saltimbocca de Ternera")
	(price 23)
	(region Italian+region)
	(season ALL)
	(type MEAT))

([MAIN::Sancerre] of  Wine+template
)

([MAIN::Santa+Cruz+Mountain+Vineyard] of  Winery

	(location Santa+Cruz+Mountains+region)
	(name_ "Santa Cruz Mountain Vineyard")
	(produces [Santa+Cruz+Mountain+Vineyard+Cabernet+Sauvignon]))

([MAIN::Santa+Cruz+Mountain+Vineyard+Cabernet+Sauvignon] of  Cabernet+Sauvignon

	(body FULL)
	(flavor STRONG)
	(maker [Santa+Cruz+Mountain+Vineyard])
	(name_ "Santa Cruz Mountain Vineyard Cabernet Sauvignon")
	(price 30)
	(sugar DRY))

([MAIN::Saucelito+Canyon] of  Winery

	(name_ "Saucelito Canyon")
	(produces [Saucelito+Canyon+Zinfandel]))

([MAIN::Saucelito+Canyon+Zinfandel] of  Red+Zinfandel

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Saucelito+Canyon])
	(name_ "Saucelito Canyon Zinfandel")
	(price 17)
	(sugar DRY))

([MAIN::Sauterne] of  Wine+template
)

([MAIN::Sauvignon+Blanc] of  Wine+template
)

([MAIN::Sauvignon+Blanc+grape] of  Wine+grape

	(name_ "Sauvignon Blanc grape"))

([MAIN::Schloss+Rothermel] of  Winery

	(location German+region)
	(name_ "Schloss Rothermel"))

([MAIN::Schloss+Volrad] of  Winery

	(location German+region)
	(name_ "Schloss Volrad"))

([MAIN::Sean+Thackrey] of  Winery

	(name_ "Sean Thackrey"))

([MAIN::Selaks] of  Winery

	(name_ "Selaks")
	(produces
		[Selaks+Ice+Wine]
		[Selaks+Sauvignon+Blanc]))

([MAIN::Selaks+Ice+Wine] of  Ice+Wine

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Selaks])
	(name_ "Selaks Ice Wine")
	(price 18))

([MAIN::Selaks+Sauvignon+Blanc] of  Sauvignon+Blanc

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Selaks])
	(name_ "Selaks Sauvignon Blanc")
	(price 14)
	(sugar DRY))

([MAIN::Semillon] of  Wine+template
)

([MAIN::Semillon+grape] of  Wine+grape

	(name_ "Semillon grape"))

([MAIN::Sevre+Et+Maine] of  Winery

	(name_ "Sevre Et Maine"))

([MAIN::Sopa_con_Salsichas] of  Traditional+First+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_10014]
		[prac2_Instance_30031]
		[prac2_Instance_5]
		[prac2_Instance_30024]
		[prac2_Instance_30033]
		[prac2_Instance_10003]
		[prac2_Instance_30034])
	(name_ "Sopa con Salchichas")
	(price 11)
	(season WINTER)
	(type SOUP))

([MAIN::Sopa_Minestrone] of  Regional+First+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30011]
		[prac2_Instance_40040]
		[prac2_Instance_30004]
		[prac2_Instance_30036]
		[prac2_Instance_30033]
		[prac2_Instance_10003]
		[prac2_Instance_30005]
		[prac2_Instance_10014]
		[prac2_Instance_3])
	(name_ "Sopa Minestrona")
	(price 14)
	(region Italian+region)
	(season ALL)
	(type SOUP))

([MAIN::Soufle_de_Chocolate] of  Gourmet+Dessert

	(hot FALSE)
	(ingredients [prac2_Instance_50039])
	(name_ "Soufle de Chocolate")
	(price 17)
	(season ALL)
	(type CREAM))

([MAIN::St.+Emillion] of  Wine+template
)

([MAIN::St._Honore] of  Regional+Dessert

	(associated+wine [Whitehall+Lane+Primavera])
	(hot FALSE)
	(ingredients
		[prac2_Instance_50060]
		[prac2_Instance_10013]
		[prac2_Instance_20013]
		[prac2_Instance_10000]
		[prac2_Instance_50061])
	(name_ "St. Honore")
	(price 13)
	(region French+region)
	(season ALL)
	(type CAKE))

([MAIN::Sterling+Vineyards] of  Winery

	(location Napa+Valley+region)
	(name_ "Sterling Vineyards")
	(produces
		[wines-current_00049]
		[wines-current_00050]
		[wines-current_00051]))

([MAIN::Stonleigh] of  Winery

	(name_ "Stonleigh"))

([MAIN::Suprema_de_Salmon_al_Papillote_de_Romero_y_Tomates_Confitados] of  Gourmet+Second+Course

	(associated+wine [Mountadam+Chardonnay])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40030]
		[prac2_Instance_20016]
		[prac2_Instance_6]
		[prac2_Instance_40040]
		[prac2_Instance_5]
		[prac2_Instance_10009])
	(name_ "Suprema de Salmon al Papillote de Romero y Tomates Confitados")
	(price 41)
	(season ALL)
	(type FISH))

([MAIN::Sweet+Reisling] of  Wine+template
)

([MAIN::Tarta_de_Puerros] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30004]
		[prac2_Instance_20010]
		[prac2_Instance_10011]
		[prac2_Instance_30005]
		[prac2_Instance_40026]
		[prac2_Instance_40022])
	(name_ "Tarta de Puerros")
	(price 8)
	(season ALL)
	(type VEGETAL))

([MAIN::Tarta_Santa_Menorquina] of  Modern+Dessert

	(hot FALSE)
	(ingredients
		[prac2_Instance_50035]
		[prac2_Instance_50034]
		[prac2_Instance_50039]
		[prac2_Instance_50038]
		[prac2_Instance_20013])
	(name_ "Tarta Santa Menorquina")
	(price 15)
	(season ALL)
	(type CAKE))

([MAIN::Tartaleta_de_Crema_de_Calabaza_con_Habitas_a_la_Menta_y_Copos_de_Yema] of  Gourmet+First+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_40040]
		[prac2_Instance_40042]
		[prac2_Instance_40043]
		[prac2_Instance_40041]
		[prac2_Instance_6]
		[prac2_Instance_10009]
		[prac2_Instance_5])
	(name_ "Tartaleta de Crema de Calabaza con Habitas a la Menta y Copos de Yema")
	(price 38)
	(season ALL)
	(type CREAM))

([MAIN::Tartar_de_Ternera_al_Perfume_de_Calvados] of  Gourmet+Second+Course

	(associated+wine [Forman+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients [prac2_Instance_50032])
	(name_ "Tartar de Ternera al Perfume de Calvados")
	(price 60)
	(season ALL)
	(type MEAT))

([MAIN::Taylor] of  Winery

	(name_ "Taylor")
	(produces [Taylor+Port]))

([MAIN::Taylor+Port] of  Port

	(maker [Taylor])
	(name_ "Taylor Port")
	(price 49))

([MAIN::Ternera_Asada] of  Traditional+Second+Course

	(associated+wine [Marietta+Cabernet+Sauvignon])
	(hot TRUE)
	(ingredients
		[prac2_Instance_5]
		[prac2_Instance_4]
		[prac2_Instance_8]
		[prac2_Instance_3]
		[prac2_Instance_30040]
		[prac2_Instance_10006])
	(name_ "Ternera Asada")
	(price 12)
	(season ALL)
	(type MEAT))

([MAIN::Tiramis%C3%BA] of  Regional+Dessert

	(associated+wine [Whitehall+Lane+Primavera])
	(hot FALSE)
	(ingredients
		[prac2_Instance_50057]
		[prac2_Instance_50058]
		[prac2_Instance_50059])
	(name_ "TiramisÃº")
	(price 9)
	(region Italian+region)
	(season ALL)
	(type CAKE))

([MAIN::Ventana] of  Winery

	(name_ "Ventana")
	(produces [Ventana+Chenin+Blanc]))

([MAIN::Ventana+Chenin+Blanc] of  Chenin+Blanc

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Ventana])
	(name_ "Ventana Chenin Blanc")
	(price 18)
	(sugar OFF-DRY))

([MAIN::Vichysoisse] of  Regional+First+Course

	(associated+wine [Mountadam+Pinot+Noir])
	(hot TRUE)
	(ingredients
		[prac2_Instance_30040]
		[prac2_Instance_10006]
		[prac2_Instance_4]
		[prac2_Instance_20013]
		[prac2_Instance_30005])
	(name_ "Vichysoisse")
	(price 15)
	(region French+region)
	(season ALL)
	(type CREAM))

([MAIN::White+Burgundy] of  Wine+template
)

([MAIN::White+Zinfandel] of  Wine+template
)

([MAIN::Whitehall+Lane] of  Winery

	(name_ "Whitehall Lane")
	(produces
		[Whitehall+Lane+Primavera]
		[Whitehall+Lane+Cabernet+Franc]))

([MAIN::Whitehall+Lane+Cabernet+Franc] of  Cabernet+Franc

	(body MEDIUM)
	(flavor MODERATE)
	(maker [Whitehall+Lane])
	(name_ "Whitehall Lane Cabernet Franc")
	(price 15)
	(sugar DRY))

([MAIN::Whitehall+Lane+Primavera] of  Dessert+wine

	(body LIGHT)
	(flavor DELICATE)
	(maker [Whitehall+Lane])
	(name_ "Whitehall Lane Primavera")
	(price 10))


([MAIN::wines-current_00049] of  Red+Merlot

	(body FULL)
	(flavor STRONG)
	(grape [Merlot+grape])
	(maker [Sterling+Vineyards])
	(name_ "Sterling Merlot")
	(price 25)
	(sugar DRY))

([MAIN::wines-current_00050] of  Chardonnay

	(grape [Chardonnay+grape])
	(maker [Sterling+Vineyards])
	(name_ "Sterling Chardonnay")
	(price 15))

([MAIN::wines-current_00051] of  Cabernet+Sauvignon

	(grape [Cabernet+Sauvignon+grape])
	(maker [Sterling+Vineyards])
	(name_ "Sterling Cabernet Sauvignon")
	(price 26)
	(sugar DRY))

([MAIN::wines_00087] of  Winery

	(name_ "Chateau Latour"))

([MAIN::wines_00088] of  Winery

	(name_ "Chateau Haut-Brion"))

([MAIN::wines_00089] of  Winery

	(name_ "Chateau Mouton-Rothschild"))

([MAIN::Zarzuela_del_Mediterraneo_y_Bogavante] of  Modern+Second+Course

	(hot TRUE)
	(ingredients
		[prac2_Instance_30010]
		[prac2_Instance_30056]
		[prac2_Instance_30015]
		[prac2_Instance_20009]
		[prac2_Instance_30027]
		[prac2_Instance_5]
		[prac2_Instance_30014]
		[prac2_Instance_20016])
	(name_ "Zarzuela del Mediterraneo y Bogavante")
	(price 30)
	(season ALL)
	(type FISH))

([MAIN::Zinfandel+grape] of  Wine+grape

	(name_ "Zinfandel grape"))

)

;;; INICIO DE PROGRAMA

(defclass MAIN::Resultado
	(is-a USER)
	(role concrete)
	(single-slot valor
		(type INSTANCE))
	(single-slot cantidad
		(type INTEGER))
)


(defmodule MAIN (export ?ALL))

(deftemplate recomendacion "Recomendacion resultante del sistema experto"
	(slot nombre)
	(slot bebidaDrink)
	(multislot Menuslist)
	(slot final?)
)

(deffunction pregunta (?pregunta $?valores-permitidos)
	(progn$ (?var ?valores-permitidos) (lowcase ?var))
	(format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
	(bind ?respuesta (read))
	(while (not (member (upcase ?respuesta) ?valores-permitidos)) do
		(format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
		(bind ?respuesta (read))
	)
	?respuesta
)
   
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(> ?respuesta ?rangini)(< ?respuesta ?rangfi))) do
		(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction pregunta-general (?pregunta)
	(format t "¿%s? " ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

(deffunction si-o-no-p (?pregunta)
	(bind ?respuesta (pregunta ?pregunta SI NO S N))
	(if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
		then TRUE 
		else FALSE
	)
)

(defclass Menu
	(is-a USER)
	(slot nombre)
	(slot estilo)
	(multislot platos)
	(slot bebida)
	(slot precio)
	(slot presupuesto)
)

(deftemplate estado-menu
	(slot Menu)
	(slot estado)
)

(deftemplate menu-actual
	(slot Menu)
	(slot presupuesto-restante)
	(slot precio-total)
)

(deftemplate articulos-apropiados
	(slot Menu)
	(multislot lista-plato1)
	(multislot lista-plato2)
	(multislot lista-dessert)
	(multislot lista-bebida)
)


(defclass Datos
	(is-a USER)
	(slot nombre)
	(slot tipoplato1)
	(slot tipoplato2)
	(slot tipodessert)	
	(slot alcohol)
	(slot presupuesto)
)

(deftemplate info-cliente
	(slot datos)
)

(defmessage-handler Menu imprimir ()

	(format t "Nombre: %s%n" ?self:nombre)
	(printout t "---------------------------------------" crlf)
	(format t "Precio: %d%n" ?self:precio)
	(format t "Estilo: %s%n" ?self:estilo)
	(format t "bebida: %s%n" ?self:bebida)

	(if (> (length$ ?self:platos) 0)
		then
		(printout t "Platos:" crlf)
		(printout t "---------------------" crlf)
	)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?self:platos))
		do
			(bind ?res (nth$ ?i ?self:platos))
			(format t "   %s%n" (send ?res get-valor))
			(bind ?i (+ ?i 1))
	)
				
	(printout t "=======================================" crlf crlf)		
)

(defmessage-handler First+course imprimir ()

	;;Imprimir plato	
	;;(format t "Nombre: %s%n" ?self:name)
)

(defrule final-recomendacion
  (declare (salience 10))
  ?rec <- (recomendacion (final? ok) (Menuslist $?lista-menus))
  =>
	(modify ?rec (final? imprimir))
	(focus impresion)
)

(defrule portada-inicial
	(declare (salience 10))
	=>
	(printout t "===================================================" crlf)
  	(printout t "=         Elaboracion de menus RICO RICO          =" crlf)
	(printout t "===================================================" crlf)
  	(printout t crlf)  	
  	(focus inicializacion)
)

(defmodule inicializacion "Modulo para inicializar el sistema experto"
	(import MAIN ?ALL)
	(export ?ALL)
)


(defglobal ?*presupuesto* = 0)

(defrule init
	(not (object (is-a Menu)))
	=>
	(assert (recomendacion (nombre "recomen")))				
	(bind ?ins (make-instance info of Datos))
	(assert (info-cliente (datos ?ins)))
)	


(defrule menu-a-crear
	?rec <- (recomendacion (Menuslist $?lista-menus & : (= (length ?lista-menus) 0)))
	=>
	(bind ?cjto-respuestas (create$ 0))
	(bind ?respuesta "")
	(printout t "¿Cual de los siguientes estilos de comida quiere para el evento?" crlf)
	(printout t "    1. Clasico" crlf)
	(printout t "    2. Moderno" crlf)
	(printout t "    3. Regional" crlf)
	(printout t "    4. Sibarita" crlf)
				
	(printout t "Introduce el numero que indica el estilo que quiere: ")
	(bind ?respuesta (read))
	
	(switch ?respuesta
		(case 1 then
			(bind ?ins (make-instance firstmenu of Menu))
			(send ?ins put-nombre "Menu1")
			(send ?ins put-estilo "Clasico")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 1 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;segundo menu
			(bind ?ins (make-instance secondmenu of Menu))
			(send ?ins put-nombre "Menu2")
			(send ?ins put-estilo "Clasico")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 2 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;tercer menu
			(bind ?ins (make-instance tercermenu of Menu))
			(send ?ins put-nombre "Menu3")
			(send ?ins put-estilo "Clasico")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 3 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
		)
		(case 2 then
			(bind ?ins (make-instance firstmenu of Menu))
			(send ?ins put-nombre "Menu1")
			(send ?ins put-estilo "Moderno")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 1 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;segundo menu
			(bind ?ins (make-instance secondmenu of Menu))
			(send ?ins put-nombre "Menu2")
			(send ?ins put-estilo "Moderno")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 2 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;tercer menu
			(bind ?ins (make-instance tercermenu of Menu))
			(send ?ins put-nombre "Menu3")
			(send ?ins put-estilo "Moderno")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 3 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
		)
		(case 3 then
			(bind ?ins (make-instance firstmenu of Menu))
			(send ?ins put-nombre "Menu1")
			(send ?ins put-estilo "Regional")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 1 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;segundo menu
			(bind ?ins (make-instance secondmenu of Menu))
			(send ?ins put-nombre "Menu2")
			(send ?ins put-estilo "Regional")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 2 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;tercer menu
			(bind ?ins (make-instance tercermenu of Menu))
			(send ?ins put-nombre "Menu3")
			(send ?ins put-estilo "Regional")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 3 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
		)
		(case 4 then
			(bind ?ins (make-instance firstmenu of Menu))
			(send ?ins put-nombre "Menu1")
			(send ?ins put-estilo "Sibarita")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 1 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;segundo menu
			(bind ?ins (make-instance secondmenu of Menu))
			(send ?ins put-nombre "Menu2")
			(send ?ins put-estilo "Sibarita")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 2 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
			;;tercer menu
			(bind ?ins (make-instance tercermenu of Menu))
			(send ?ins put-nombre "Menu3")
			(send ?ins put-estilo "Sibarita")
			(send ?ins put-precio 0)
			(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
			(bind ?lista-menus (insert$ ?lista-menus 3 ?ins))								
			(assert (estado-menu (Menu ?ins) (estado pendiente)))
		)
	)
	(modify ?rec (Menuslist ?lista-menus))
)

(defrule obtener-informacion-menu
	(exists (estado-menu (Menu ?)(estado pendiente)))
	(estado-menu (Menu ?me)(estado pendiente))
	=>
	(assert (menu-actual (Menu ?me)))
	(assert (articulos-apropiados (Menu ?me)))	
	(format t "%n%nCreando menu %s%n" (send ?me get-nombre))
	(printout t "=========PREGUNTAS=============" crlf crlf)
	(focus preguntas-generales-menu)
)

(defrule fin-menu
	(declare (salience 10))
	?act <- (menu-actual (Menu ?m))
	(exists (estado-menu (Menu ?)(estado pendiente)))
	(estado-menu (Menu ?mm)(estado pendiente))
	=>
	(retract ?act)
)

(defrule calcular-recomendacion
	(declare (salience 10))
	?act <- (menu-actual (Menu ?m1))
	?estado <- (estado-menu (Menu ?m2 & : (eq ?m1 ?m2))(estado listo-para-calcular))
	=>
	(focus calculo-de-recomendacion)
)

(defrule calcular-recomendacion-segundo-intento
	(exists (estado-menu (Menu ?)(estado fallo-en-calculo)))
	(estado-menu (Menu ?me)(estado fallo-en-calculo))
	=>
	(assert (menu-actual (Menu ?me)))
	(focus calculo-de-recomendacion)
)

(defrule paso-a-resultados
	(estado-menu (Menu ?))
	(not (exists (estado-menu (Menu ?)(estado ?x & : (neq ?x ok)))))
	?rec <- (recomendacion (final? ?y & : (or (eq ?y nil)(neq ?y ok))))
	=>
	(modify ?rec (final? ok))
)

(defmodule preguntas-generales-menu "Modulo de preguntas generales de menus"
	(import MAIN ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule presupuesto-menu
	(not (menuu presupuestod ?))
	(menu-actual (Menu ?men))
	?rec <- (info-cliente (datos ?cl))	
	=>
	(bind ?presup (pregunta-numerica "Qué presupuesto dispone para el menu" 0 10000000))
	(send ?men put-presupuesto ?presup)
	(send ?cl put-presupuesto ?presup)
	(assert (menuu presupuestod ok))
)


(defrule paso-preguntas-especificas
	(menuu presupuestod ok)
	(menu-actual (Menu ?me))
	=>
	(bind ?resultado (find-instance ((?mm Menu)) (eq ?mm ?me)))
	(if (> (length$ ?resultado) 0)
		then
		 (focus preguntas-especificas-menu)
	)
		
	(assert (menuu completada ok))
)

(defrule siguiente-menu
	?pres <- (menuu presupuestod ok)
	?comp <- (menuu completada ok)
	?act <- (menu-actual (Menu ?m1))
	?estado <- (estado-menu (Menu ?m2 & : (eq ?m1 ?m2))(estado listo-para-calcular))
	=>
	;;(retract ?pres)
	;;(retract ?comp)
	(pop-focus)
)

(defmodule preguntas-especificas-menu "Modulo para preguntas especificas del menu"
	(import MAIN ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule preguntas-plato1
	(declare (salience 10))
	(not (preguntas plato1 ?))
	(menu-actual (Menu ?me))
	?rec <- (info-cliente (datos ?cl))	
	=>			
		(bind ?respuesta (upcase (pregunta "que tipo de comida le gustaria como primer plato?" VEGETAL PASTA SOUP FISH SEAFOOD CREAM)))
		(send ?cl put-tipoplato1 ?respuesta)	
		(assert (preguntas plato1 ok))
)

(defrule decision-plato1
	(not (menuu plato1 ?))
	(menu-actual (Menu ?me))
	?act <- (info-cliente (datos ?cl))	
	?rec <- (articulos-apropiados (lista-plato1 $?lista-platos & : (= (length ?lista-platos) 0)))
	=>	
		(if (= (str-compare (send ?me get-estilo) "Clasico") 0)
		  then
			(bind ?platos (find-all-instances ((?plato Traditional+First+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato1)) 0)))		
		)
		
		(if (= (str-compare (send ?me get-estilo) "Moderno") 0)
		  then
			(bind ?platos (find-all-instances ((?plato Modern+First+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato1)) 0)))		
		)
		(if (= (str-compare (send ?me get-estilo) "Regional") 0)
		  then
			(bind ?platos (find-all-instances ((?plato Regional+First+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato1)) 0)))		
		)
		(if (= (str-compare (send ?me get-estilo) "Sibarita") 0)
		  then
			(bind ?platos (find-all-instances ((?plato Gourmet+First+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato1)) 0)))		
		)
		
		(modify ?rec (lista-plato1 ?platos))	
		(assert (menuu plato1 ok))
)

(defrule preguntas-plato2
	(declare (salience 10))
	(not (preguntas plato2 ?))
	(menu-actual (Menu ?me))
	?rec <- (info-cliente (datos ?cl))	
	=>	
	(bind ?respuesta (upcase (pregunta "que tipo de comida le gusta como segundo plato?" FISH MEAT FOWL VEGETAL)))
	(send ?cl put-tipoplato2 ?respuesta)	
	
	(assert (preguntas plato2 ok))
)

(defrule decision-plato2
	(not (menuu plato2 ?))
	(menu-actual (Menu ?me))
	?act <- (info-cliente (datos ?cl))	
	?rec <- (articulos-apropiados (lista-plato2 $?lista-platos & : (= (length ?lista-platos) 0)))
	=>	
		(if (= (str-compare (send ?me get-estilo) "Clasico") 0)
		  then	
			(bind ?platos (find-all-instances ((?plato Traditional+Second+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato2)) 0)))
		)
		
		(if (= (str-compare (send ?me get-estilo) "Moderno") 0)
		  then	
			(bind ?platos (find-all-instances ((?plato Modern+Second+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato2)) 0)))
		)
		(if (= (str-compare (send ?me get-estilo) "Regional") 0)
		  then	
			(bind ?platos (find-all-instances ((?plato Regional+Second+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato2)) 0)))
		)
		(if (= (str-compare (send ?me get-estilo) "Sibarita") 0)
		  then	
			(bind ?platos (find-all-instances ((?plato Gourmet+Second+Course))
				(= (str-compare ?plato:type (send ?cl get-tipoplato2)) 0)))
		)
		
		(modify ?rec (lista-plato2 ?platos))	
		(assert (menuu plato2 ok))
)


(defrule preguntas-dessert
	(declare (salience 10))
	(not (preguntas dessert ?))
	(menu-actual (Menu ?me))
	?rec <- (info-cliente (datos ?cl))	
	=>	
	(bind ?respuesta (upcase (pregunta "que tipo de postre le gustaria?" FRUIT CAKE ICECREAM CREAM)))
	(send ?cl put-tipodessert ?respuesta)	
	
	(assert (preguntas dessert ok))
)

(defrule decision-dessert
	(not (menuu dessert ?))
	(menu-actual (Menu ?me))
	?act <- (info-cliente (datos ?cl))	
	?rec <- (articulos-apropiados (lista-dessert $?lista-platos & : (= (length ?lista-platos) 0)))
	=>	
		(if (= (str-compare (send ?me get-estilo) "Clasico") 0)
		  then		
			(bind ?platos (find-all-instances ((?plato Traditional+Dessert))
				(= (str-compare ?plato:type (send ?cl get-tipodessert)) 0)))		
		)

		(if (= (str-compare (send ?me get-estilo) "Moderno") 0)
		  then		
			(bind ?platos (find-all-instances ((?plato Modern+Dessert))
				(= (str-compare ?plato:type (send ?cl get-tipodessert)) 0)))		
		)
		(if (= (str-compare (send ?me get-estilo) "Regional") 0)
		  then		
			(bind ?platos (find-all-instances ((?plato Regional+Dessert))
				(= (str-compare ?plato:type (send ?cl get-tipodessert)) 0)))		
		)
		(if (= (str-compare (send ?me get-estilo) "Sibarita") 0)
		  then		
			(bind ?platos (find-all-instances ((?plato Gourmet+Dessert))
				(= (str-compare ?plato:type (send ?cl get-tipodessert)) 0)))		
		)
		
		(modify ?rec (lista-dessert ?platos))	
		(assert (menuu dessert ok))
)

(defrule preguntas-bebida
	(declare (salience 10))
	(not (preguntas bebida ?))
	(menu-actual (Menu ?me))
	?rec <- (info-cliente (datos ?cl))	
	=>			
		(if (si-o-no-p "El menu la quiere con vino?")
			then
				(bind ?respuesta (upcase (pregunta "que tipo de vino?"  RED WHITE)))
				(send ?cl put-alcohol ?respuesta)	
			else
				(send ?cl put-alcohol SOFT)		
		)
		(assert (preguntas bebida ok))		
)

(defrule decision-bebida
	(not (menuu bebida ?))
	(menu-actual (Menu ?me))
	?act <- (info-cliente (datos ?cl))	
	?rec <- (articulos-apropiados (lista-bebida $?lista-beb & : (= (length ?lista-beb) 0)))
	=>		
		(bind ?tipobebida (send ?cl get-alcohol))
		;;con alcohol
		(if (= (str-compare ?tipobebida RED) 0)
		  then				
			(bind ?bebidas (find-all-instances ((?bebida Red+wine))
				(= (str-compare ?bebida:color (send ?cl get-alcohol)) 0)))
			(modify ?rec (lista-bebida ?bebidas))	
		)
		
		(if (= (str-compare ?tipobebida WHITE) 0)				
		  then
			(bind ?bebidas (find-all-instances ((?bebida White+wine))
				(= (str-compare ?bebida:color (send ?cl get-alcohol)) 0)))
			(modify ?rec (lista-bebida ?bebidas))	
		)
	
		(if (= (str-compare ?tipobebida SOFT) 0)
		  then				
			(bind ?bebidas (find-all-instances ((?bebida Soft+drink))
				(= (str-compare ?tipobebida SOFT) 0)))
			(modify ?rec (lista-bebida ?bebidas))	
		)
		
		(assert (menuu bebida ok))
)


(defrule fin-preguntas-menu
	?plato1 <- (menuu plato1 ok)
	?plato2 <- (menuu plato2 ok)
	?dessert <- (menuu dessert ok)
	?bebidas <- (menuu bebida ok)
	(menu-actual (Menu ?me))
	?estado <- (estado-menu (Menu ?m1 & : (eq ?m1 ?me)))
	=>
	(retract ?plato1)
	(retract ?plato2)
	(retract ?dessert)
	(retract ?bebidas)
	(modify ?estado (estado listo-para-calcular))
	(pop-focus)
)

(defmodule calculo-de-recomendacion
	(import MAIN ?ALL)
	(import preguntas-especificas-menu ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule seleccionar-plato1-en-menu
	(declare (salience 10))
	(not (seleccion plato1 ?))
	?act <- (menu-actual (Menu ?me))
	?aaprop <- (articulos-apropiados (Menu ?m2 & : (eq ?m2 ?me))(lista-plato1 $?lista-platos))	
	=>
		(bind ?i 1)
		(if (<= ?i (length$ ?lista-platos))
			then
				(bind ?plato1 (nth$ ?i ?lista-platos))				
				(bind ?pre (send ?me get-precio))										
				(send ?me put-platos (insert$ (send ?me get-platos) 1 (make-instance of Resultado (valor ?plato1)(cantidad 1))))
				(send ?me put-precio (+ (send ?plato1 get-price) ?pre))				
				(bind ?i (+ ?i 1))
				(if (> (length$ ?lista-platos) 1)
					then				
						(unmake-instance ?plato1)	
				)
		)		
	     (assert (seleccion plato1 ok))		   				
)

(defrule seleccionar-plato2-en-menu
	(declare (salience 10))
	(not (seleccion plato2 ?))
	?act <- (menu-actual (Menu ?me))
	?aaprop <- (articulos-apropiados (Menu ?m2 & : (eq ?m2 ?me))(lista-plato2 $?lista-platos))	
	=>
		(bind ?i 1)
		(if (<= ?i (length$ ?lista-platos))
			then
				(bind ?plato2 (nth$ ?i ?lista-platos))				
				(bind ?pre (send ?me get-precio))
						
				(send ?me put-platos (insert$ (send ?me get-platos) 1 (make-instance of Resultado (valor ?plato2)(cantidad 1))))
				(send ?me put-precio (+ (send ?plato2 get-price) ?pre))				
				(bind ?i (+ ?i 1))	
				(if (> (length$ ?lista-platos) 1)
					then				
						(unmake-instance ?plato2)	
				)				
		)		
	     (assert (seleccion plato2 ok))		   		
	
)

(defrule seleccionar-dessert-en-menu
	(declare (salience 10))
	(not (seleccion dessert ?))
	?act <- (menu-actual (Menu ?me))
	?aaprop <- (articulos-apropiados (Menu ?m2 & : (eq ?m2 ?me))(lista-dessert $?lista-platos))	
	=>
		(bind ?i 1)
		(if (<= ?i (length$ ?lista-platos))
			then
				(bind ?dessert (nth$ ?i ?lista-platos))				
				(bind ?pre (send ?me get-precio))
						
				(send ?me put-platos (insert$ (send ?me get-platos) 1 (make-instance of Resultado (valor ?dessert)(cantidad 1))))
				(send ?me put-precio (+ (send ?dessert get-price) ?pre))				
				(bind ?i (+ ?i 1))	
				(if (> (length$ ?lista-platos) 1)
					then				
						(unmake-instance ?dessert)	
				)				
		)		
	     (assert (seleccion dessert ok))		   		
)

(defrule seleccionar-bebida-en-menu
	(declare (salience 10))
	(not (seleccion bebida ?))
	?act <- (menu-actual (Menu ?me)) 
	?aaprop <- (articulos-apropiados (Menu ?m2 & : (eq ?m2 ?me))(lista-bebida $?lista-beb))	
	=>
		(bind ?i 1)
		(if (<= ?i (length$ ?lista-beb))
			then
				(bind ?pre (send ?me get-precio))
				(bind ?bebida (nth$ ?i ?lista-beb))				
				(send ?me put-bebida ?bebida)
				(send ?me put-precio (+ (send ?bebida get-price) ?pre))				
				(if (> (length$ ?lista-beb) 1)
					then				
						(unmake-instance ?bebida)	
				)				
		)		
	     (assert (seleccion bebida ok))		   				
)

(defrule validacion-menu-precio
	(declare (salience 10))
	(not (valida-precio-menu ?))
	?act <- (menu-actual (Menu ?me)) 
	?plato1 <- (seleccion plato1 ok)
	?plato2 <- (seleccion plato2 ok)
	?dessert <- (seleccion dessert ok)
	?bebidas <- (seleccion bebida ok)
	?rec <- (info-cliente (datos ?cl))	
	=>
	(bind ?preciototal (send ?me get-precio))
	(bind ?presupuesto (send ?cl get-presupuesto))
	(if (> ?preciototal (* ?presupuesto 1.2))
	  then
	     (send ?me put-precio 0)	
		(retract ?plato1)
		(retract ?plato2)
		(retract ?dessert)
		(retract ?bebidas)	
	)	
			     				     
     (assert (valida-precio-menu ok))		   	     
)

(defrule fin-calculo
	?estado <- (estado-menu (estado listo-para-calcular))
	?act <- (menu-actual (Menu ?me))	
	?plato1 <- (seleccion plato1 ok)
	?plato2 <- (seleccion plato2 ok)
	?dessert <- (seleccion dessert ok)
	?bebidas <- (seleccion bebida ok)
	?validacion <- (valida-precio-menu ok)
	=>
	(modify ?estado (estado ok))
	(assert (Calculo fin ok))
	(retract ?plato1)	
	(retract ?plato2)	
	(retract ?dessert)	
	(retract ?bebidas)	
	(retract ?validacion)	
	(retract ?act)	
)

(defrule volver-estado-anterior
	?calc <- (Calculo fin ok)
	=>
	(retract ?calc)
	(pop-focus)
)


(defmodule impresion "Modulo de impresion"
	(import MAIN ?ALL)
)

(defrule imprimir
	?rec <- (recomendacion (final? imprimir) (Menuslist $?lista-menus))
	?rec2 <- (articulos-apropiados (lista-plato1 $?lista-platos))
	=>
	(printout t "LISTA DE MENUS RESULTANTES" crlf crlf)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?lista-menus))
		do
			(bind ?curr-me (nth$ ?i ?lista-menus))
			(printout t (send ?curr-me imprimir))
			(bind ?i (+ ?i 1))
	)
		
	(modify ?rec (final? se_acabo))
	(pop-focus)
)