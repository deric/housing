;;; Autora Eva Pallares
;;; Practica de Sistemas Basados en el Conocimiento
;;; Recomendacion de mobiliario para la vivienda por Mikeo
;;; Junio 2007

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot estilo
		(type SYMBOL)
		(allowed-values clasico moderno hippie pijo)
		(create-accessor read-write))
	(multislot cjtoMuebles
		(type INSTANCE)
;+		(allowed-classes Mueble)
		(create-accessor read-write))
	(single-slot tiene_espejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot funda_preferida
		(type INSTANCE)
;+		(allowed-classes FundaSofa)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_sofa
		(type SYMBOL)
		(allowed-values individual 2plazas esquina)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot descripcion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot num_plazas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot presupuestoMax
		(type FLOAT)
		(default 6000.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot diametro
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_cama
		(type SYMBOL)
		(allowed-values doble individual)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_personas_casa
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot material
		(type SYMBOL)
		(allowed-values madera metal cristal plastico piel vidrio porcelana ceramica pladur tela textil mimbre)
		(create-accessor read-write))
	(single-slot anchura
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot cjtoIluminacion
		(type INSTANCE)
;+		(allowed-classes Iluminacion)
		(create-accessor read-write))
	(single-slot tipo_relleno
		(type SYMBOL)
		(allowed-values espuma pluma)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot hijos
		(type SYMBOL)
		(allowed-values nino adolescente adulto)
		(create-accessor read-write))
	(single-slot edad_per
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot cjtoDecoracion
		(type INSTANCE)
;+		(allowed-classes Decoracion)
		(create-accessor read-write))
	(single-slot tiene_animales
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot extensible
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot profundidad
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot espejo_preferido
		(type INSTANCE)
;+		(allowed-classes Espejo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot longitud_max
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero+de+piezas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot cjtoLenceriaHogar
		(type INSTANCE)
;+		(allowed-classes LenceriaHogar)
		(create-accessor read-write))
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precioTotal
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_per
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estilo_per
		(type SYMBOL)
		(allowed-values pijo clasico hippie moderno)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot silla_preferida
		(type INSTANCE)
;+		(allowed-classes SillaFija)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_perchero
		(type SYMBOL)
		(allowed-values traje chaqueta)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_espejo
		(type SYMBOL)
		(allowed-values completo facial)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot cjtoMenajeHogar
		(type INSTANCE)
;+		(allowed-classes MenajeHogar)
		(create-accessor read-write))
	(single-slot habitacion
		(type SYMBOL)
		(allowed-values dormitorio cocina bano comedor despacho)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Articulo
	(is-a USER)
	(role concrete)
	(single-slot anchura
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot descripcion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot estilo
		(type SYMBOL)
		(allowed-values clasico moderno hippie pijo)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot habitacion
		(type SYMBOL)
		(allowed-values dormitorio cocina bano comedor despacho)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot material
		(type SYMBOL)
		(allowed-values madera metal cristal plastico piel vidrio porcelana ceramica pladur tela textil mimbre)
		(create-accessor read-write))
	(single-slot precio
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot profundidad
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Decoracion
	(is-a Articulo)
	(role concrete))

(defclass Espejo
	(is-a Decoracion)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_espejo
		(type SYMBOL)
		(allowed-values completo facial)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot diametro
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Reloj
	(is-a Decoracion)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot diametro
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass GalanDeNoche
	(is-a Decoracion)
	(role concrete))

(defclass Revistero
	(is-a Decoracion)
	(role concrete))

(defclass LenceriaHogar
	(is-a Articulo)
	(role concrete))

(defclass Alfombra
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Edredon
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_cama
		(type SYMBOL)
		(allowed-values doble individual)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Sabana
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_cama
		(type SYMBOL)
		(allowed-values doble individual)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Toalla
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Manta
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_cama
		(type SYMBOL)
		(allowed-values doble individual)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cojin
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_cama
		(type SYMBOL)
		(allowed-values doble individual)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo_relleno
		(type SYMBOL)
		(allowed-values espuma pluma)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass FundaSofa
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot tipo_sofa
		(type SYMBOL)
		(allowed-values individual 2plazas esquina)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass FundaMesa
	(is-a LenceriaHogar)
	(role concrete)
	(single-slot num_plazas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass MenajeHogar
	(is-a Articulo)
	(role concrete))

(defclass Bateria
	(is-a MenajeHogar)
	(role concrete)
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Vajilla
	(is-a MenajeHogar)
	(role concrete)
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cuberteria
	(is-a MenajeHogar)
	(role concrete)
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass ConjuntoCafe
	(is-a MenajeHogar)
	(role concrete)
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass ConjuntoVasos
	(is-a MenajeHogar)
	(role concrete)
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass ConjuntoCopas
	(is-a MenajeHogar)
	(role concrete)
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass ConjuntoCoctel
	(is-a MenajeHogar)
	(role concrete)
	(single-slot apto_lavavajillas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot apto_vitroceramica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass JuegoBano
	(is-a MenajeHogar)
	(role concrete))

(defclass Iluminacion
	(is-a Articulo)
	(role concrete))

(defclass LamparaPie
	(is-a Iluminacion)
	(role concrete))

(defclass LamparaMesita
	(is-a Iluminacion)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass LamparaParet
	(is-a Iluminacion)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass LamparaTecho
	(is-a Iluminacion)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Mueble
	(is-a Articulo)
	(role concrete))

(defclass Silla
	(is-a Mueble)
	(role concrete))

(defclass SillaFija
	(is-a Silla)
	(role concrete))

(defclass SillaPlegable
	(is-a Silla)
	(role concrete))

(defclass SillaGiratoria
	(is-a Silla)
	(role concrete))

(defclass Mesa
	(is-a Mueble)
	(role concrete)
	(single-slot num_plazas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot longitud_max
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot silla_preferida
		(type INSTANCE)
;+		(allowed-classes SillaFija)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass MesaFija
	(is-a Mesa)
	(role concrete)
	(single-slot extensible
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Mesitas
	(is-a Mesa)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Escritorios
	(is-a Mesa)
	(role concrete))

(defclass MesaPlegable
	(is-a Mesa)
	(role concrete))

(defclass Tocador
	(is-a Mesa)
	(role concrete)
	(single-slot espejo_preferido
		(type INSTANCE)
;+		(allowed-classes Espejo)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cama
	(is-a Mueble)
	(role concrete))

(defclass CamaIndividual
	(is-a Cama)
	(role concrete))

(defclass CamaMatrimonio
	(is-a Cama)
	(role concrete))

(defclass CamaLitera
	(is-a Cama)
	(role concrete))

(defclass Sofa
	(is-a Mueble)
	(role concrete)
	(single-slot num_plazas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot funda_preferida
		(type INSTANCE)
;+		(allowed-classes FundaSofa)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass 2o3Plazas
	(is-a Sofa)
	(role concrete))

(defclass SofaIndividual
	(is-a Sofa)
	(role concrete))

(defclass Esquina
	(is-a Sofa)
	(role concrete))

(defclass Armario
	(is-a Mueble)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiene_espejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Bajo
	(is-a Armario)
	(role concrete))

(defclass Completo
	(is-a Armario)
	(role concrete))

(defclass Habitacion
	(is-a USER)
	(role concrete)
	(multislot cjtoLenceriaHogar
		(type INSTANCE)
;+		(allowed-classes LenceriaHogar)
		(create-accessor read-write))
	(single-slot precioTotal
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot estilo
		(type SYMBOL)
		(allowed-values clasico moderno hippie pijo)
		(create-accessor read-write))
	(multislot cjtoMuebles
		(type INSTANCE)
;+		(allowed-classes Mueble)
		(create-accessor read-write))
	(multislot cjtoDecoracion
		(type INSTANCE)
;+		(allowed-classes Decoracion)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot material
		(type SYMBOL)
		(allowed-values madera metal cristal plastico piel vidrio porcelana ceramica pladur tela textil mimbre)
		(create-accessor read-write))
	(single-slot profundidad
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anchura
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot presupuestoMax
		(type FLOAT)
		(default 6000.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot cjtoMenajeHogar
		(type INSTANCE)
;+		(allowed-classes MenajeHogar)
		(create-accessor read-write))
	(multislot cjtoIluminacion
		(type INSTANCE)
;+		(allowed-classes Iluminacion)
		(create-accessor read-write)))

(defclass Cocina
	(is-a Habitacion)
	(role concrete))

(defclass Comedor
	(is-a Habitacion)
	(role concrete))

(defclass Dormitorio
	(is-a Habitacion)
	(role concrete)
	(single-slot clasificacion_edades
		(type SYMBOL)
		(allowed-values nino adulto)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Bano
	(is-a Habitacion)
	(role concrete))

(defclass Despacho
	(is-a Habitacion)
	(role concrete))

(defclass Persona
	(is-a USER)
	(role concrete)
	(single-slot edad_per
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_per
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiene_animales
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estilo_per
		(type SYMBOL)
		(allowed-values pijo clasico hippie moderno)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_personas_casa
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Matrimonio
	(is-a Persona)
	(role concrete))

(defclass Familia
	(is-a Persona)
	(role concrete)
	(multislot hijos
		(type SYMBOL)
		(allowed-values nino adolescente adulto)
		(create-accessor read-write)))

(defclass Soltero
	(is-a Persona)
	(role concrete))

(defclass SolteroCompartePiso
	(is-a Persona)
	(role concrete)
)
	

;;; ---------------------------------------------------------------------------------------------------------------------
;;; // ---------------------------------------------- ENGINE --------------------------------------------------------- //
;;; ---------------------------------------------------------------------------------------------------------------------

(defclass MAIN::Resultado
	(is-a USER)
	(role concrete)
	(single-slot valor
		(type INSTANCE))
	(single-slot cantidad
		(type INTEGER))
)


(defmodule MAIN (export ?ALL))

;;************
;;* TEMPLATE *
;;************

(deftemplate recomendacion "Recomendacion resultante del sistema experto"
	(slot persona)
	(multislot habitaciones)
	(slot final?)
)

;;************
;;* MENSAJES *
;;************

(defmessage-handler Familia pon-hijo (?hijo)
	(bind ?hijos-actuales (send ?self get-hijos))
	(if (eq (length$ ?hijos-actuales) 0)
		then
			(send ?self put-hijos (create$ ?hijo))
		else
			(send ?self put-hijos (insert$ ?hijos-actuales 1 ?hijo))
	)
)

(defmessage-handler Habitacion imprimir ()
	
	(printout t "----------------------------------" crlf)
	(format t "Habitacion: %s%n" ?self:nombre)
	(printout t "----------------------------------" crlf crlf)
	
	; Imprimir muebles
	(if (> (length$ ?self:cjtoMuebles) 0)
		then
		(printout t "Muebles" crlf)
		(printout t "---------------------" crlf)
	)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?self:cjtoMuebles))
		do
			(bind ?res (nth$ ?i ?self:cjtoMuebles))
			(bind ?curr-elem (send ?res get-valor))
			(bind ?cant (send ?res get-cantidad))
			(format t "   %d) %d x %s: %s%n" ?i ?cant (send ?curr-elem get-nombre) (send ?curr-elem get-descripcion))
			(format t "       Medidas: %f x %f%n" (send ?curr-elem get-anchura) (send ?curr-elem get-profundidad))
			(format t "       Precio: %f%n%n" (send ?curr-elem get-precio))
			(bind ?i (+ ?i 1))
	)
	
	
	; Imprimir menaje hogar
	(if (> (length$ ?self:cjtoMenajeHogar) 0)
		then
			(printout t "Menaje del hogar" crlf)
			(printout t "---------------------" crlf)
	)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?self:cjtoMenajeHogar))
		do
			(bind ?res (nth$ ?i ?self:cjtoMenajeHogar))
			(bind ?curr-elem (send ?res get-valor))
			(bind ?cant (send ?res get-cantidad))
			(format t "   %d) %d x %s: %s%n" ?i ?cant (send ?curr-elem get-nombre) (send ?curr-elem get-descripcion))
			(format t "       Precio: %f%n%n" (send ?curr-elem get-precio))
			(bind ?i (+ ?i 1))
	)
	
	; Imprimir lenceria hogar
	(if (> (length$ ?self:cjtoLenceriaHogar) 0)
		then
			(printout t "Lenceria de hogar" crlf)
			(printout t "---------------------" crlf)
	)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?self:cjtoLenceriaHogar))
		do
			(bind ?res (nth$ ?i ?self:cjtoLenceriaHogar))
			(bind ?curr-elem (send ?res get-valor))
			(bind ?cant (send ?res get-cantidad))
			(format t "   %d) %d x %s: %s%n" ?i ?cant (send ?curr-elem get-nombre) (send ?curr-elem get-descripcion))
			(format t "       Precio: %f%n%n" (send ?curr-elem get-precio))
			(bind ?i (+ ?i 1))
	)
	
	; Imprimir iluminacion
	(if (> (length$ ?self:cjtoIluminacion) 0)
		then
			(printout t "Iluminacion" crlf)
			(printout t "---------------------" crlf)
	)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?self:cjtoIluminacion))
		do
			(bind ?res (nth$ ?i ?self:cjtoIluminacion))
			(bind ?curr-elem (send ?res get-valor))
			(bind ?cant (send ?res get-cantidad))
			(format t "   %d) %d x %s: %s%n" ?i ?cant (send ?curr-elem get-nombre) (send ?curr-elem get-descripcion))
			(format t "       Precio: %f%n%n" (send ?curr-elem get-precio))
			(bind ?i (+ ?i 1))
	)
	
	; Imprimir decoracion
	(if (> (length$ ?self:cjtoDecoracion) 0)
		then
			(printout t "Decoracion" crlf)
			(printout t "---------------------" crlf)
	)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?self:cjtoDecoracion))
		do
			(bind ?res (nth$ ?i ?self:cjtoDecoracion))
			(bind ?curr-elem (send ?res get-valor))
			(bind ?cant (send ?res get-cantidad))
			(format t "   %d) %d x %s: %s%n" ?i ?cant (send ?curr-elem get-nombre) (send ?curr-elem get-descripcion))
			(format t "       Precio: %f%n%n" (send ?curr-elem get-precio))
			(bind ?i (+ ?i 1))
	)
	
	(format t "Precio total de los articulos recomendados: %f%n" ?self:precioTotal)
	(printout t "-------------------------------------------------------------------" crlf crlf)
	
)

;;*************
;;* FUNCIONES *
;;*************


;;; Funciones para realizar preguntas

;;; Obtiene una respuesta del conjunto de posibles respuestas
(deffunction pregunta (?pregunta $?valores-permitidos)
	(progn$ (?var ?valores-permitidos) (lowcase ?var))
	(format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
	(bind ?respuesta (read))
	(while (not (member (lowcase ?respuesta) ?valores-permitidos)) do
		(format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
		(bind ?respuesta (read))
	)
	?respuesta
)
   
;;; Obtiene una respuesta dins el rango permitido
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(> ?respuesta ?rangini)(< ?respuesta ?rangfi))) do
		(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Obtiene una respuesta 
(deffunction pregunta-general (?pregunta)
	(format t "¿%s? " ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

;;; Realiza una pregunta binaria
(deffunction si-o-no-p (?pregunta)
	(bind ?respuesta (pregunta ?pregunta si no s n))
	(if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
		then TRUE 
		else FALSE
	)
)

;;**********
;;* REGLAS *
;;**********


;;; Presentacion

(defrule rotulo-inicial
	(declare (salience 10))
	=>
	(printout t "---------------------------------------------------" crlf)
  (printout t "------ Sistema Experto para amueblar tu hogar -----" crlf)
  (printout t "---------------------------------------------------" crlf)
  (printout t crlf)
  (focus preguntas-personales)
)

(defrule su-recomendacion-es
  (declare (salience 10))
  ?rec <- (recomendacion (persona ?per) (final? ok) (habitaciones $?lista-hab))
  =>
	(modify ?rec (final? imprimir))
	(focus impresion)
)
  
;;; Modulo de preguntas-personales

(defmodule preguntas-personales "Modulo para conocer al usuario del SE"
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule su-nombre
	(not (object (is-a Persona)))
	=>
	(bind ?nombre (pregunta-general "Como se llama"))
	(bind ?user (make-instance usuario of Persona))
	(send ?user put-nombre_per ?nombre)
	(assert (recomendacion (persona ?user)))
	(assert (Persona nombre ok))
)

(defrule su-edad
	(not (Persona edad ?))
	?user <- (object (is-a Persona))
	=>
	(bind ?edad (pregunta-numerica "Cuantos años tiene" 0 100))
	(send ?user put-edad_per ?edad)
	(assert (Persona edad ok))
)

(defrule su-estado-civil
	(not (Persona estado-civil ?))
	(object (is-a Persona))
	=>
	(if (si-o-no-p "Esta casado/a")
		then
			(assert (Persona estado-civil matrimonio))
		else
			(assert (Persona estado-civil no-casado))
	)
)

(defrule tiene-hijos
	?x <- (Persona estado-civil matrimonio)
	?user <- (object (is-a Persona))
	?rec <- (recomendacion (persona ?))
	=>
	(if (si-o-no-p "Tiene hijos/hijas")
		then
		
			; Estamos delante de una familia
			
			(bind ?family (make-instance family of Familia))
			(send ?family put-nombre_per (send ?user get-nombre_per))
			(send ?family put-edad_per (send ?user get-edad_per))
			(modify ?rec (persona ?family))
			(send ?user delete)
			
			(bind ?n-hijos (pregunta-numerica "Cuantos tiene" 0 10))
			(bind ?i ?n-hijos)
			(while (> ?i 0) do
				(bind ?edad-hijoi (pregunta-numerica (format nil "Cuantos años tiene su hijo %d" (+ (- ?n-hijos ?i) 1)) 0 100))
				(if (< ?edad-hijoi 13)
					then
						(send ?family pon-hijo nino)
					else
						(if (> ?edad-hijoi 12)
							then
								(send ?family pon-hijo adulto)
						)
				)
				(bind ?i (- ?i 1))
			)
			
			(send ?family put-numero_personas_casa (+ ?n-hijos 2))
			(retract ?x)
			(assert (Persona estado-civil ok))
			
		else
			; Estamos delante de un matrimonio
			
			(bind ?par (make-instance pareja of Matrimonio))
			(send ?par put-nombre_per (send ?user get-nombre_per))
			(send ?par put-edad_per (send ?user get-edad_per))
			(modify ?rec (persona ?par))
			(send ?user delete)
			
			(send ?par put-numero_personas_casa 2)
			(retract ?x)
			(assert (Persona estado-civil ok))
	)
)

(defrule no-casado
	?x <- (Persona estado-civil no-casado)
	?user <- (object (is-a Persona))
	?rec <- (recomendacion (persona ?))
	=>
	(if (si-o-no-p "Vive con su pareja")
		then
			; Estamos delante de un matrimonio
			
			(bind ?par (make-instance pareja_solt of Matrimonio))
			(send ?par put-nombre_per (send ?user get-nombre_per))
			(send ?par put-edad_per (send ?user get-edad_per))
			(modify ?rec (persona ?par))
			(send ?user delete)
			
			(send ?par put-numero_personas_casa 2)
			(retract ?x)
			(assert (Persona estado-civil matrimonio))
		else
			(if (si-o-no-p "Comparte piso con amigos/amigas")
				then
					(bind ?respuesta (pregunta-numerica "Con cuantas personas" 0 10))
					
					; Estamos delante de un piso de solteros
			
					(bind ?scp (make-instance sol-comp of SolteroCompartePiso))
					(send ?scp put-nombre_per (send ?user get-nombre_per))
					(send ?scp put-edad_per (send ?user get-edad_per))
					(modify ?rec (persona ?scp))
					(send ?user delete)
					
					(send ?scp put-numero_personas_casa (+ ?respuesta 1))
					(retract ?x)
					(assert (Persona estado-civil ok))
				else
					; Estamos delante de un soltero
			
					(bind ?sol (make-instance soltero of Soltero))
					(send ?sol put-nombre_per (send ?user get-nombre_per))
					(send ?sol put-edad_per (send ?user get-edad_per))
					(modify ?rec (persona ?sol))
					(send ?user delete)
					
					(send ?sol put-numero_personas_casa 1)
					(retract ?x)
					(assert (Persona estado-civil ok))
			)
	)
)

(defrule tiene-animales
	(not (Persona tiene-animales ?))
	?user <- (object (is-a Persona))
	=>
	(send ?user put-tiene_animales (si-o-no-p "Tiene animales en casa"))
	(assert (Persona tiene-animales ok))
)

(defrule cambio-modulo-estilo-persona
	(Persona nombre ok)
	(Persona edad ok)
	(Persona estado-civil ok)
	(Persona tiene-animales ok)
	=>
	(focus preguntas-estilo-persona)
)

; Modulo de preguntas-estilo-persona

(defmodule preguntas-estilo-persona "Modulo para definir el estilo de la persona"
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(export ?ALL)
)

(defrule estilo-persona
	(not (Persona estilo ?))
	(not (Persona orientacion-estilo ?))
	=>
	(if (si-o-no-p "Consideras que sigues las tendencias de la moda")
		then
			(assert (Persona orientacion-estilo moderno))
		else
			(assert (Persona orientacion-estilo hippie-clasico))
	)
)

(defrule estilo-pijo-o-moderno
	(not (Persona estilo ?))
	?x <- (Persona orientacion-estilo moderno)
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Tienes un coche de lujo, como por ejemplo las gamas altas de Mercedes, Audi, Porche, Ferrari, etc.")
		then
			(send ?user put-estilo_per pijo)
			(retract ?x)
			(assert (Persona estilo ok))
		else
			(send ?user put-estilo_per moderno)
			(retract ?x)
			(assert (Persona estilo ok))
	)
)

(defrule estilo-hippie-o-clasico
	(not (Persona estilo ?))
	?x <- (Persona orientacion-estilo hippie-clasico)
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Crees en la paz y el amor por encima de todos los valores")
		then
			(if (si-o-no-p "Te gusta el amor libre rechazando el matrimonio")
				then
					(send ?user put-estilo_per hippie)
					(retract ?x)
					(assert (Persona estilo ok))
				else
					(retract ?x)
					(assert (Persona orientacion-estilo clasico))
			)
		else
				(retract ?x)
				(assert (Persona orientacion-estilo clasico))
	)
)

(defrule estilo-clasico
	(not (Persona estilo ?))
	?x <- (Persona orientacion-estilo clasico)
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Crees en los valores tradicionales de la familia")
		then
			(send ?user put-estilo_per clasico)
			(retract ?x)
			(assert (Persona estilo ok))
		else
			(if (si-o-no-p "Te gusta la música clasica")
				then
					(send ?user put-estilo_per clasico)
					(retract ?x)
					(assert (Persona estilo ok))
				else
					(retract ?x)
					(assert (Persona orientacion-estilo indefinido))
			)
	)
)

(defrule estilo-indefinido
	(not (Persona estilo ?))
	?x <- (Persona orientacion-estilo indefinido)
	?user <- (object (is-a Persona))
	=>
	(bind ?respuesta (pregunta "Cómo te consideras" hippie pijo moderno clasico))
	(send ?user put-estilo_per ?respuesta)
	(retract ?x)
	(assert (Persona estilo ok))
)

(defrule cambio-a-modulo-inicializacion
	(Persona estilo ok)
	=>
	(focus inicializacion)
)

; Modulo para inicializar el sistema experto

(defmodule inicializacion "Modulo para inicializar el sistema experto"
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(import preguntas-estilo-persona ?ALL)
	(export ?ALL)
)

(deftemplate estado-habitacion
	(slot habitacion)
	(slot estado)
)

(deftemplate habitacion-actual
	(slot habitacion)
	(slot area-restante)
	(slot presupuesto-restante)
	(slot precio-total)
	(slot prioridad-actual)
)

(defclass elemento
	(is-a USER)
	(role concrete)
	(slot prioridad)
	(multislot lista-articulos)
	(slot cantidad)
	(slot elemento-relacionado)
)

(deftemplate articulos-apropiados
	(slot habitacion)
	(multislot lista-elementos)
)

(defglobal ?*presupuesto* = 0)

(defrule habitaciones-a-amueblar
	?rec <- (recomendacion (habitaciones $?lista-hab & : (= (length ?lista-hab) 0)))
	=>
	(bind ?cjto-respuestas (create$ 0))
	(bind ?respuesta "")
	(while (<> (str-compare (str-cat ?respuesta) "fin") 0)
		do
			(printout t "¿Cual de las siguientes habitaciones quiere que este SE le ayude a amueblar?" crlf)
			(printout t "   ")
			(if (member$ 1 ?cjto-respuestas)
				then
					(printout t "*1. Comedor" crlf)
				else
					(printout t " 1. Comedor" crlf)
			)
			(printout t "    2. Dormitorio" crlf)
			(printout t "   ")
			(if (member$ 3 ?cjto-respuestas)
				then
					(printout t "*3. Cocina" crlf)
				else
					(printout t " 3. Cocina" crlf)
			)
			(printout t "   ")
			(if (member$ 4 ?cjto-respuestas)
				then
					(printout t "*4. Baño" crlf)
				else
					(printout t " 4. Baño" crlf)
			)
			
			(if (> (length ?lista-hab) 0)
				then
					(printout t "Hasta ahora ha elegido [")
					(bind ?i 1)
					(while (<= ?i (length ?lista-hab))
						do
							(bind ?curr-hab (nth$ ?i ?lista-hab))
							(if (= ?i (length ?lista-hab))
								then
									(format t "%s" (send ?curr-hab get-nombre))
								else
									(format t "%s, " (send ?curr-hab get-nombre))
							)
							(bind ?i (+ ?i 1)) 
					)
					(printout t "]" crlf)
			)
			
			(printout t "Introduce el numero que indica la habitacion que quiere amueblar ("fin" para finalizar): ")
			(bind ?respuesta (read))
			
			(switch ?respuesta
				(case 1 then
					(bind ?ins (make-instance h-comedor of Comedor))
					(send ?ins put-nombre "Comedor")
					(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
					(bind ?lista-hab (insert$ ?lista-hab 1 ?ins))
					
					(assert (estado-habitacion (habitacion ?ins) (estado pendiente)))
				)
				(case 2 then
					(bind ?ins (make-instance of Dormitorio))
					(printout t "Introduzca un nombre identificativo para el dormitorio: ")
					(bind ?id (readline))
					(send ?ins put-nombre ?id)
					(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
					(bind ?lista-hab (insert$ ?lista-hab 1 ?ins))
					
					(assert (estado-habitacion (habitacion ?ins) (estado pendiente)))
				)
				(case 3 then
					(bind ?ins (make-instance h-cocina of Cocina))
					(send ?ins put-nombre "Cocina")
					(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
					(bind ?lista-hab (insert$ ?lista-hab 1 ?ins))
					
					(assert (estado-habitacion (habitacion ?ins) (estado pendiente)))
				)
				(case 4 then
					(bind ?ins (make-instance h-bano of Bano))
					(send ?ins put-nombre "Baño")
					(bind ?cjto-respuestas (insert$ ?cjto-respuestas 1 ?respuesta))
					(bind ?lista-hab (insert$ ?lista-hab 1 ?ins))
					
					(assert (estado-habitacion (habitacion ?ins) (estado pendiente)))
				)
			)
	)
	(modify ?rec (habitaciones ?lista-hab))
)

(defrule amueblar-siguiente-habitacion
	(exists (estado-habitacion (habitacion ?)(estado pendiente)))
	(estado-habitacion (habitacion ?hab)(estado pendiente))
	=>
	(assert (habitacion-actual (habitacion ?hab)))
	(format t "%n%nAmueblando %s%n" (send ?hab get-nombre))
	(printout t "---------------------------------------------------" crlf crlf)
	(focus preguntas-generales-habitacion)
)

(defrule fin-habitacion
	(declare (salience 10))
	?act <- (habitacion-actual (habitacion ?h))
	(exists (estado-habitacion (habitacion ?)(estado pendiente)))
	(estado-habitacion (habitacion ?hab)(estado pendiente))
	=>
	(retract ?act)
)

(defrule calcular-recomendacion
	(declare (salience 10))
	?act <- (habitacion-actual (habitacion ?h1))
	?estado <- (estado-habitacion (habitacion ?h2 & : (eq ?h1 ?h2))(estado listo-para-calcular))
	=>
	(focus calculo-de-recomendacion)
)

(defrule calcular-recomendacion-segundo-intento
	(exists (estado-habitacion (habitacion ?)(estado fallo-en-calculo)))
	(estado-habitacion (habitacion ?hab)(estado fallo-en-calculo))
	=>
	(assert (habitacion-actual (habitacion ?hab)))
	(focus calculo-de-recomendacion)
)

(defrule paso-a-resultados
	(estado-habitacion (habitacion ?))
	(not (exists (estado-habitacion (habitacion ?)(estado ?x & : (neq ?x ok)))))
	?rec <- (recomendacion (persona ?per)(final? ?y & : (or (eq ?y nil)(neq ?y ok))))
	=>
	(modify ?rec (final? ok))
)

; Modulo de preguntas generales de las habitaciones

(defmodule preguntas-generales-habitacion "Modulo de preguntas generales de las habitaciones"
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(import preguntas-estilo-persona ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule presupuesto-habitacion
	(not (Habitacion presupuesto ?))
	(habitacion-actual (habitacion ?hab))
	=>
	(bind ?presup (pregunta-numerica "Qué presupuesto dispone para amueblar la habitación" 0 10000000))
	(send ?hab put-presupuestoMax ?presup)
	(assert (Habitacion presupuesto ok))
)

(defrule tomar-medidas
	(not (Habitacion medidas ?))
	(habitacion-actual (habitacion ?hab))
	=>
	(if (si-o-no-p "Es la habitación cuadrada")
		then
			(bind ?lado (pregunta-numerica "Cuánto mide un lado (en cm)" 0 10000000))
			(send ?hab put-anchura ?lado)
			(send ?hab put-profundidad ?lado)
		else
			(bind ?anchura (pregunta-numerica "Cuánto mide la pared lateral (en cm)" 0 10000000))
			(send ?hab put-anchura ?anchura)
			(bind ?prof (pregunta-numerica "Cuánto mide la pared frontal (en cm)" 0 10000000))
			(send ?hab put-profundidad ?prof)
	)
	(assert (Habitacion medidas ok))
)

(defrule material-preferido
	(not (Habitacion material-pref ?))
	(habitacion-actual (habitacion ?hab))
	?user <- (object (is-a Persona))
	=>
	(bind ?estilo (send ?user get-estilo_per))
	(if (or (= (str-compare ?estilo pijo) 0) (= (str-compare ?estilo moderno) 0))
		then
			(if (si-o-no-p "Prefiere los muebles de pladur")
				then
					(send ?hab put-material (create$ "pladur"))
				else
					(if (si-o-no-p "Le gusta que los muebles estén combinados con cristal")
						then
							(send ?hab put-material (create$ madera cristal))
						else
							(send ?hab put-material (create$ madera))
					)
			)
		else
			(if (= (str-compare ?estilo hippie) 0)
				then
					(if (si-o-no-p "Prefiere los muebles de madera")
						then
							(if (si-o-no-p "Le gusta que los muebles estén combinados con cristal")
								then
									(send ?hab put-material (create$ madera cristal))
								else
									(send ?hab put-material (create$ madera))
							)
						else
							(send ?hab put-material (create$ mimbre))
					)
				else
					(if (si-o-no-p "Le gusta que los muebles estén combinados con cristal")
						then
							(send ?hab put-material (create$ madera cristal))
						else
							(send ?hab put-material (create$ madera))
					)
			)
	)
	(assert (Habitacion material-pref ok))
)

(defrule paso-preguntas-especificas
	(Habitacion material-pref ok)
	(Habitacion medidas ok)
	(Habitacion presupuesto ok)
	(habitacion-actual (habitacion ?hab))
	=>
	(bind ?resultado (find-instance ((?com Comedor)) (eq ?com ?hab)))
	(if (> (length$ ?resultado) 0)
		then
			(focus preguntas-especificas-comedor)
	)
	
	(bind ?resultado (find-instance ((?coc Cocina)) (eq ?coc ?hab)))
	(if (> (length$ ?resultado) 0)
		then
			(focus preguntas-especificas-cocina)
	)
	
	(bind ?resultado (find-instance ((?dor Dormitorio)) (eq ?dor ?hab)))
	(if (> (length$ ?resultado) 0)
		then
			(focus preguntas-especificas-dormitorio)
	)
	
	(bind ?resultado (find-instance ((?ban Bano)) (eq ?ban ?hab)))
	(if (> (length$ ?resultado) 0)
		then
			(focus preguntas-especificas-bano)
	)
	
	(assert (Habitacion completada ok))
)

(defrule siguiente-habitacion
	?mat <- (Habitacion material-pref ok)
	?med <- (Habitacion medidas ok)
	?pres <- (Habitacion presupuesto ok)
	?comp <- (Habitacion completada ok)
	?act <- (habitacion-actual (habitacion ?h1))
	?estado <- (estado-habitacion (habitacion ?h2 & : (eq ?h1 ?h2))(estado listo-para-calcular))
	=>
	(retract ?mat)
	(retract ?med)
	(retract ?pres)
	(retract ?comp)
	(pop-focus)
)

; Modulo para preguntas especificas del comedor

(defmodule preguntas-especificas-comedor "Modulo para preguntas especificas del comedor"
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(import preguntas-estilo-persona ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule decision-sofa
	(not (Comedor sofa ?))
	(habitacion-actual (habitacion ?hab))
	(not (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab))))
	?user <- (object (is-a Persona))
	=>
	(bind ?lelem (create$))
	(bind ?aaprop (assert (articulos-apropiados (habitacion ?hab))))
	(bind ?funda FALSE)
	(bind ?pers (find-instance ((?fcn Familia)) (member$ nino ?fcn:hijos)))
	
	(if (and (neq (send ?user get-estilo_per) pijo) (or (> (length$ ?pers) 0) (eq (send ?user get-tiene_animales) TRUE)))
		then
			(bind ?funda TRUE)
			
			; Funda 2o3plazas
			
			(bind ?funda2o3plazas (find-all-instances ((?funda FundaSofa))
				(and (= (str-compare ?funda:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?funda:estilo) (eq ?funda:tipo_sofa 2plazas))))
			(bind ?elem-funda-2o3plazas (make-instance of elemento (prioridad 5) (lista-articulos $?funda2o3plazas) (cantidad 1)))
			
			; Funda Individual
			
			(bind ?fundaindividuales (find-all-instances ((?funda FundaSofa))
				(and (= (str-compare ?funda:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?funda:estilo) (eq ?funda:tipo_sofa individual))))
			(bind ?elem-funda-individual (make-instance of elemento (prioridad 5) (lista-articulos $?fundaindividuales) (cantidad 1)))
			
			; Funda Individual
			
			(bind ?fundaesquinas (find-all-instances ((?funda FundaSofa))
				(and (= (str-compare ?funda:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?funda:estilo) (eq ?funda:tipo_sofa individual))))
			(bind ?elem-funda-esquina (make-instance of elemento (prioridad 5) (lista-articulos $?fundaesquinas) (cantidad 1)))
	)
	
	(if (si-o-no-p "Suele pasar muchas horas viendo el televisor")
		then
			(if (si-o-no-p "Le gustaría tener sofás individuales")
				then
					(if (or (= (str-compare (send ?user get-estilo_per) pijo) 0) (= (str-compare (send ?user get-estilo_per) moderno) 0))
						then
							(bind ?pers (find-instance ((?fcn Familia)) TRUE))
							(if (> (length$ ?pers) 0)
								then
									; Sofa2o3 plazas de tela + 2 SofaIndividual de tela	
									
									(printout t "Familia" crlf)
									(send ?user print)
									
									(bind ?sofas2o3plazas (find-all-instances ((?sofa 2o3Plazas))
										(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
									(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofas2o3plazas) (cantidad 1)))
									(if (eq ?funda TRUE)
										then
											(send ?elem put-elemento-relacionado ?elem-funda-2o3plazas)
									)
									(bind ?lelem (insert$ ?lelem 1 ?elem))

									(bind ?sofasIndividual (find-all-instances ((?sofa SofaIndividual))
										(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
									(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofasIndividual) (cantidad 1)))
									(if (eq ?funda TRUE)
										then
											(send ?elem put-elemento-relacionado ?elem-funda-individual)
									)
																		
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									(bind ?lelem (insert$ ?lelem 1 ?elem)) ; insertamos dos veces para facilitar el calculo
									
								else
									; Sofa2o3 plazas de tela + 2 SofaIndividual de piel
									
									(printout t "No Familia" crlf)
									(printout t ?pers crlf)
									(send ?user print)
									
									(bind ?sofas2o3plazas (find-all-instances ((?sofa 2o3Plazas))
										(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ piel ?sofa:material))))
									(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofas2o3plazas) (cantidad 1)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									(if (eq ?funda TRUE)
										then
											(send ?elem put-elemento-relacionado ?elem-funda-2o3plazas)
									)
																		
									(bind ?sofasIndividual (find-all-instances ((?sofa SofaIndividual))
										(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ piel ?sofa:material))))
									(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofasIndividual) (cantidad 1)))
									(if (eq ?funda TRUE)
										then
											(send ?elem put-elemento-relacionado ?elem-funda-individual)
									)
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									(bind ?lelem (insert$ ?lelem 1 ?elem)) ; insertamos dos veces para facilitar el calculo
							)
						else
								; Sofa2o3 plazas de tela + 2 SofaIndividual de tela	
									
								(bind ?sofas2o3plazas (find-all-instances ((?sofa 2o3Plazas))
									(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
								(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofas2o3plazas) (cantidad 1)))
								(if (eq ?funda TRUE)
									then
										(send ?elem put-elemento-relacionado ?elem-funda-2o3plazas)
								)
								(bind ?lelem (insert$ ?lelem 1 ?elem))
								
								(bind ?sofasIndividual (find-all-instances ((?sofa SofaIndividual))
									(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
								(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofasIndividual) (cantidad 1)))
								(if (eq ?funda TRUE)
									then
										(send ?elem put-elemento-relacionado ?elem-funda-individual)
								)
								(bind ?lelem (insert$ ?lelem 1 ?elem))
								(bind ?lelem (insert$ ?lelem 1 ?elem)) ; insertamos dos veces para facilitar el calculo
							
					)
				else ; No le gustan los sofas individuales
					(if (or (= (str-compare (send ?user get-estilo_per) pijo) 0) (= (str-compare (send ?user get-estilo_per) moderno) 0))
						then ; pijo o moderno
							(bind ?pers (find-instance ((?fcn Familia)) TRUE))
							(if (> (length$ ?pers) 0)
								then ; con ninos
									; SofaEsquina de tela
									
									(bind ?sofasEsquina (find-all-instances ((?sofa Esquina))
										(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
									(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofasEsquina) (cantidad 1)))
									(if (eq ?funda TRUE)
										then
											(send ?elem put-elemento-relacionado ?elem-funda-esquina)
									)
									(bind ?lelem (insert$ ?lelem 1 ?elem))
		
								else ; sin ninos
									; SofaEsquina de piel
									
									(bind ?sofasEsquina (find-all-instances ((?sofa Esquina))
										(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ piel ?sofa:material))))
									(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofasEsquina) (cantidad 1)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
							)
						else ; hippie o clasico
							; SofaEsquina de tela
						
							(bind ?sofasEsquina (find-all-instances ((?sofa Esquina))
								(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
							(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofasEsquina) (cantidad 1)))
							(if (eq ?funda TRUE)
								then
									(send ?elem put-elemento-relacionado ?elem-funda-esquina)
							)
							(bind ?lelem (insert$ ?lelem 1 ?elem))
					)
			)
		else ; No se tira mucho tiempo viendo la television
			(if (or (= (str-compare (send ?user get-estilo_per) pijo) 0) (= (str-compare (send ?user get-estilo_per) moderno) 0))
				then
					(bind ?pers (find-instance ((?fcn Familia)) TRUE))
					(if (> (length$ ?pers) 0)
						then
							; Sofa2o3 plazas de tela
							
							(bind ?sofas2o3plazas (find-all-instances ((?sofa 2o3Plazas))
								(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
							(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofas2o3plazas) (cantidad 1)))
							(bind ?lelem (insert$ ?lelem 1 ?elem))
							
						else
							; Sofa2o3 plazas de piel
							
							(bind ?sofas2o3plazas (find-all-instances ((?sofa 2o3Plazas))
								(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ piel ?sofa:material))))
							(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofas2o3plazas) (cantidad 1)))
							(bind ?lelem (insert$ ?lelem 1 ?elem))

					)
				else
						; Sofa2o3 plazas de tela	
							
						(bind ?sofas2o3plazas (find-all-instances ((?sofa 2o3Plazas))
							(and (= (str-compare ?sofa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?sofa:estilo) (member$ tela ?sofa:material))))
						(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?sofas2o3plazas) (cantidad 1)))
						(bind ?lelem (insert$ ?lelem 1 ?elem))
					
			)
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Comedor sofa ok))
)

(defrule decision-mesa-sillas
	(not (Comedor mesa-sillas ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab))(lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>

	(if (si-o-no-p "Come o cena alguna vez en el comedor")
		then
			(bind ?ocupas (send ?user get-numero_personas_casa))
			(if (and (< ?ocupas 5) (si-o-no-p "Le gustaria tener una mesa extensible para mas personas"))
				then
					(bind ?ocupas (+ ?ocupas 2))
					(bind ?comensales (+ ?ocupas (mod ?ocupas 2)))
					
					(if (neq (send ?user get-estilo_per) pijo)
						then
							(bind ?manteles (find-all-instances ((?mantel FundaMesa))
								(and (= (str-compare ?mantel:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mantel:estilo) (= ?mantel:num_plazas ?comensales))))
							(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?manteles) (cantidad 1)))
							(bind ?lelem (insert$ ?lelem 1 ?elem))
					)
					
					(if (si-o-no-p "Le gustaria tener las sillas a conjunto con la mesa")
						then
							(if (si-o-no-p "Le gustaria tener las sillas para todas las plazas de la mesa")
								then
									; Mesa + sillas preferidas	
					
									(bind ?mesas (find-all-instances ((?mesa MesaFija))
										(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
									
									(bind ?sillas (create$))
									(bind ?i 1)
									(while (<= ?i (length$ ?mesas))
										do
											(bind ?sillas (insert$ ?sillas 1 (send (nth$ ?i ?mesas) get-silla_preferida)))
											(bind ?i (+ ?i 1))
									)
										
									(bind ?sillas-elem (make-instance of elemento (prioridad 2) (lista-articulos $?sillas) (cantidad ?comensales)))
									(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1) (elemento-relacionado ?sillas-elem)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									
								else
									; Mesa + sillas preferidas y 2 plegables
									
									(bind ?mesas (find-all-instances ((?mesa MesaFija))
										(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
									
									(bind ?sillas (create$))
									(bind ?i 1)
									(while (<= ?i (length$ ?mesas))
										do
											(bind ?sillas (insert$ ?sillas 1 (send (nth$ ?i ?mesas) get-silla_preferida)))
											(bind ?i (+ ?i 1))
									)
									
									(bind ?sillas-elem (make-instance of elemento (prioridad 2) (lista-articulos $?sillas) (cantidad ?comensales)))
									(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1) (elemento-relacionado ?sillas-elem)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									
									(bind ?splegables (find-all-instances ((?splegable SillaPlegable))
										(and (= (str-compare ?splegable:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?splegable:estilo))))
									(bind ?elem (make-instance of elemento (prioridad 4) (lista-articulos $?splegables) (cantidad 2)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
							)
						else
							(bind ?respuesta (pregunta "Prefiere sillas fijas o plegables" Fijas Plegables))
							(if (= (str-compare "fijas" (lowcase ?respuesta)) 0)
								then
									(if (si-o-no-p "Le gustaria tener las sillas para todas las plazas de la mesa")
										then
											; Mesa + sillas no preferidas
											
											(bind ?mesas (find-all-instances ((?mesa MesaFija))
												(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
											(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1)))
											(bind ?lelem (insert$ ?lelem 1 ?elem))
											
											(bind ?sillas (find-all-instances ((?silla SillaFija))
												(and (= (str-compare ?silla:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
											(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?sillas) (cantidad ?comensales)))
											(bind ?lelem (insert$ ?lelem 1 ?elem))
											
										else
											; Mesa + sillas no preferidas + plegables
											
											(bind ?mesas (find-all-instances ((?mesa MesaFija))
												(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
											(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1)))
											(bind ?lelem (insert$ ?lelem 1 ?elem))
											
											(bind ?sillas (find-all-instances ((?silla SillaFija))
												(and (= (str-compare ?silla:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
											(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?sillas) (cantidad ?comensales)))
											(bind ?lelem (insert$ ?lelem 1 ?elem))
											
											(bind ?splegables (find-all-instances ((?splegable SillaPlegable))
												(and (= (str-compare ?splegable:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?splegable:estilo))))
											(bind ?elem (make-instance of elemento (prioridad 4) (lista-articulos $?splegables) (cantidad 2)))
											(bind ?lelem (insert$ ?lelem 1 ?elem))
									)
								else
									; Mesa + sillas plegables
									
									(bind ?mesas (find-all-instances ((?mesa MesaFija))
										(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
									(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									
									(bind ?splegables (find-all-instances ((?splegable SillaPlegable))
										(and (= (str-compare ?splegable:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?splegable:estilo))))
									(bind ?elem (make-instance of elemento (prioridad 4) (lista-articulos $?splegables) (cantidad ?comensales)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
							)
					)
					
				else
					(bind ?comensales (+ ?ocupas (mod ?ocupas 2)))
					
					(if (neq (send ?user get-estilo_per) pijo)
						then
							(bind ?manteles (find-all-instances ((?mantel FundaMesa))
								(and (= (str-compare ?mantel:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mantel:estilo) (= ?mantel:num_plazas ?comensales))))
							(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?manteles) (cantidad 1)))
							(bind ?lelem (insert$ ?lelem 1 ?elem))
					)
					
					(if (si-o-no-p "Le gustaria tener las sillas a conjunto con la mesa")
						then
							; Mesa + sillas preferidas
							
							(bind ?mesas (find-all-instances ((?mesa MesaFija))
								(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
							
							(bind ?sillas (create$))
							(bind ?i 1)
							(while (<= ?i (length$ ?mesas))
								do
									(bind ?sillas (insert$ ?sillas 1 (send (nth$ ?i ?mesas) get-silla_preferida)))
									(bind ?i (+ ?i 1))
							)
							
							(bind ?sillas-elem (make-instance of elemento (prioridad 2) (lista-articulos $?sillas) (cantidad ?comensales)))
							(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1) (elemento-relacionado ?sillas-elem)))
							(bind ?lelem (insert$ ?lelem 1 ?elem))
									
						else
							(bind ?respuesta (pregunta "Prefiere sillas fijas o plegables" Fijas Plegables))
							(if (= (str-compare "fijas" (lowcase ?respuesta)) 0)
								then
									; Mesa + sillas no preferidas
									
									(bind ?mesas (find-all-instances ((?mesa MesaFija))
										(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
									(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									
									(bind ?sillas (find-all-instances ((?silla SillaFija))
										(and (= (str-compare ?silla:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
									(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?sillas) (cantidad ?comensales)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
											
								else
									; Mesa + sillas plegables
									
									(bind ?mesas (find-all-instances ((?mesa MesaFija))
										(and (= (str-compare ?mesa:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?comensales))))
									(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									
									(bind ?splegables (find-all-instances ((?splegable SillaPlegable))
										(and (= (str-compare ?splegable:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?splegable:estilo))))
									(bind ?elem (make-instance of elemento (prioridad 4) (lista-articulos $?splegables) (cantidad ?comensales)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
							)
					)
			)
			(modify ?aaprop (lista-elementos ?lelem))
	)
	(assert (Comedor mesa-sillas ok))
)

(defrule decision-muebles
	(not (Comedor muebles ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab))(lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	
	(if (si-o-no-p "Sueles celebrar fiestas en casa")
		then
			; Muebles pequenos
			
			(bind ?muebles (find-all-instances ((?mueble Bajo))
				(and (= (str-compare ?mueble:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mueble:estilo) (or (subsetp (send ?hab get-material) ?mueble:material) (subsetp ?mueble:material (send ?hab get-material))))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?muebles) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
      
		else
			; Muebles completos
			
			(bind ?muebles (find-all-instances ((?mueble Completo))
				(and (= (str-compare ?mueble:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mueble:estilo) (or (subsetp (send ?hab get-material) ?mueble:material) (subsetp ?mueble:material (send ?hab get-material))))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?muebles) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			(if (si-o-no-p "Le gusta poder estar en el sofa y apoyar los pies en el suelo y no tener frio")
				then
					(bind ?alfombras (find-all-instances ((?alfombra Alfombra))
						(and (= (str-compare ?alfombra:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?alfombra:estilo))))
					(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?alfombras) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Comedor muebles ok))
)

(defrule decision-decoracion
	(not (Comedor decoracion ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab))(lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	
	; Mesitas de comedor
	
	(if (si-o-no-p "Le gusta beber algo mientras mira el televisor y esta en el sofa")
		then
			(bind ?mesitas (find-all-instances ((?mesita Mesitas))
				(and (= (str-compare ?mesita:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?mesita:estilo) (or (subsetp (send ?hab get-material) ?mesita:material) (subsetp ?mesita:material (send ?hab get-material))))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?mesitas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	; Revisteros
	
	(if (si-o-no-p "Le gusta leer periodicos o revistas")
		then
			(bind ?revisteros (find-all-instances ((?revistero Revistero))
				(and (= (str-compare ?revistero:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?revistero:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?revisteros) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	; Lamparas
	
	(bind ?respuesta (pregunta "Donde tiene las entradas de luz" techo pared))
	(if (= (str-compare "techo" (lowcase ?respuesta)) 0)
		then
			(bind ?lamparas (find-all-instances ((?lampara LamparaTecho))
				(and (= (str-compare ?lampara:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
		else
			(bind ?lamparas (find-all-instances ((?lampara LamparaParet))
				(and (= (str-compare ?lampara:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	; Lampara de pie
	
	(if (si-o-no-p "Le gustaria tener mas luz en la sala que la que proporciona la entrada establecida")
		then
			(bind ?lpies (find-all-instances ((?lpie LamparaPie))
				(and (= (str-compare ?lpie:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?lpie:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?lpies) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	; Reloj de pie
	
	(if (si-o-no-p "Le gusta controlar que hora es en todo momento")
		then
			(bind ?relojes (find-all-instances ((?reloj Reloj))
				(and (= (str-compare ?reloj:habitacion "comedor") 0) (member$ (send ?user get-estilo_per) ?reloj:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?relojes) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Comedor decoracion ok))
)

(defrule fin-preguntas-comedor
	?sofa <- (Comedor sofa ok)
	?mesa <- (Comedor mesa-sillas ok)
	?muebles <- (Comedor muebles ok)
	?deco <- (Comedor decoracion ok)
	(habitacion-actual (habitacion ?hab))
	?estado <- (estado-habitacion (habitacion ?h1 & : (eq ?h1 ?hab)))
	=>
	(retract ?sofa)
	(retract ?mesa)
	(retract ?muebles)
	(retract ?deco)
	(modify ?estado (estado listo-para-calcular))
	(pop-focus)
)

; Modulo para preguntas especificas del cocina

(defmodule preguntas-especificas-cocina "Modulo para preguntas especificas del cocina"
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(import preguntas-estilo-persona ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule decision-mobiliario
	(not (Cocina muebles ?))
	(habitacion-actual (habitacion ?hab))
	(not (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab))))
	?user <- (object (is-a Persona))
	=>
	(bind ?lelem (create$))
	(bind ?aaprop (assert (articulos-apropiados (habitacion ?hab))))
	
	(bind ?muebles (find-all-instances ((?mueble Completo))
		(and (= (str-compare ?mueble:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?mueble:estilo))))
	(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?muebles) (cantidad 1)))
	(bind ?lelem (insert$ ?lelem 1 ?elem))
	
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Cocina muebles ok))
)

(defrule decision-mesa
	(not (Cocina mesa ?))
	=>
	(if (si-o-no-p "Suele comer en la cocina")
		then
			(assert (Cocina mesa ok))
			(if (si-o-no-p "Le gusta tener siempre la mesa disponible")
				then
					(assert (Cocina tipo-mesa fija))
				else
					(assert (Cocina tipo-mesa plegable))
					(assert (Cocina conjunto no))
			)
			else
					(assert (Cocina mesa no))
	)
)

(defrule decision-mesa-extensible
	(not (Cocina mesa-extensible ?))
	(Cocina mesa ok)
	(Cocina tipo-mesa ?tipo)
	?user <- (object (is-a Persona))
	(test (< (send ?user get-numero_personas_casa) 8))
	=>
	(if (and (eq ?tipo fija)(si-o-no-p "Le gustaria tener una mesa extensible para mas personas"))
		then
			(assert (Cocina comensales (+ (send ?user get-numero_personas_casa) 2)))
			(assert (Cocina mesa-extensible si))
		else
			(assert (Cocina comensales (send ?user get-numero_personas_casa)))
			(assert (Cocina mesa-extensible no))
	)
)

(defrule decision-conjunto
	(not (Cocina conjunto ?))
	(Cocina mesa ok)
	(Cocina tipo-mesa fija)
	=>
	(if (si-o-no-p "Le gustaría tener las sillas a conjunto con la mesa")
		then
			(assert (Cocina conjunto si))
		else
			(assert (Cocina conjunto no))
	)
)

(defrule decision-sillas
	(not (Cocina sillas-fijas ?))
	(not (Cocina sillas-plegables ?))
	(Cocina mesa ok)
	(Cocina tipo-mesa ?tipo)
	(Cocina comensales ?comensales)
	=>
	(if (eq ?tipo plegable)
		then
			(assert (Cocina sillas-fijas 0))
			(assert (Cocina sillas-plegables (+ ?comensales (mod ?comensales 2))))
		else
			(if (si-o-no-p "Le gustaria tener las sillas para todas las plazas de la mesa")
				then
					(assert (Cocina sillas-fijas (+ ?comensales (mod ?comensales 2))))
					(assert (Cocina sillas-plegables 0))
				else
					(assert (Cocina sillas-fijas (- (+ ?comensales (mod ?comensales 2)) 2)))
					(assert (Cocina sillas-plegables 2)) 
			)
	)
)

(defrule anadir-mesa-sillas
	(not (Cocina mesa-anadida ?))
	(Cocina mesa ok)
	(Cocina tipo-mesa ?tipo)
	(Cocina conjunto ?conj)
	(Cocina sillas-fijas ?fijas)
	(Cocina sillas-plegables ?plegables)
	(Cocina mesa-extensible ?ext)
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (eq ?tipo plegable)
		then
			; Poner mesa plegable con las sillas plegables
			
			(if (< ?plegables 8)
				then
					(bind ?plazas ?plegables)
				else
					(bind ?plazas 8)
			)
			
			(bind ?mesas (find-all-instances ((?mesa MesaPlegable))
				(and (= (str-compare ?mesa:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?plazas))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?mesas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			(bind ?sillas (find-all-instances ((?silla SillaPlegable))
				(and (= (str-compare ?silla:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?sillas) (cantidad ?plegables)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
		else
			; Mesa fija
			(if (eq ?conj si)
				then
					(bind ?plazas (+ ?fijas ?plegables))
					(if (eq ?ext si)
						then
							(bind ?plazas (- ?plazas 2))
					)
					
					(bind ?mesas (find-all-instances ((?mesa MesaFija))
						(and (= (str-compare ?mesa:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?plazas))))
					
					(bind ?sillas (create$))
					(bind ?i 1)
					(while (<= ?i (length$ ?mesas))
						do
							(bind ?sillas (insert$ ?sillas 1 (send (nth$ ?i ?mesas) get-silla_preferida)))
							(bind ?i (+ ?i 1))
					)
						
					(bind ?sillas-elem (make-instance of elemento (prioridad 2) (lista-articulos $?sillas) (cantidad ?fijas)))
					(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1) (elemento-relacionado ?sillas-elem)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
					
				else
					
					(bind ?mesas (find-all-instances ((?mesa MesaFija))
						(and (= (str-compare ?mesa:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?mesa:estilo) (= ?mesa:num_plazas ?plazas))))
					(bind ?elem (make-instance of elemento (prioridad 2) (lista-articulos $?mesas) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
					
					(bind ?sillas (find-all-instances ((?silla SillaFija))
						(and (= (str-compare ?silla:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?sillas) (cantidad ?fijas)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
			
			(if (> ?plegables 0)
				then
					(bind ?sillas (find-all-instances ((?silla SillaPlegable))
						(and (= (str-compare ?silla:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?sillas) (cantidad ?plegables)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
	)
	(assert (Cocina mesa-anadida ok))
	(modify ?aaprop (lista-elementos ?lelem))
)

(defrule decision-luz
	(not (Cocina luz ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(bind ?respuesta (pregunta "Donde tiene las entradas de luz" techo pared))
	(if (= (str-compare (lowcase ?respuesta) "techo") 0)
		then
			(bind ?lamparas (find-all-instances ((?lampara LamparaTecho))
				(and (= (str-compare ?lampara:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
		else
			(bind ?lamparas (find-all-instances ((?lampara LamparaParet))
				(and (= (str-compare ?lampara:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	(assert (Cocina luz ok))
	(modify ?aaprop (lista-elementos ?lelem))
)

(defrule decision-reloj
	(not (Cocina reloj ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Le gusta controlar que hora es en todo momento")
		then
			(bind ?relojes (find-all-instances ((?reloj Reloj))
				(and (= (str-compare ?reloj:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?reloj:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?relojes) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))			
	)
	(assert (Cocina reloj ok))
	(modify ?aaprop (lista-elementos ?lelem))
)

(defrule decision-menaje
	(not (Cocina menaje ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	; Vajilla
	(if (not (si-o-no-p "Dispone de vajilla"))
		then
			(bind ?array (find-all-instances ((?item Vajilla))
				(and (= (str-compare ?item:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?item:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?array) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))	
	)
	
	; Bateria
	(if (not (si-o-no-p "Dispone de bateria"))
		then
			(bind ?array (find-all-instances ((?item Bateria))
				(and (= (str-compare ?item:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?item:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?array) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))	
	)
	
	; Cuberteria
	(if (not (si-o-no-p "Dispone de cuberteria"))
		then
			(bind ?array (find-all-instances ((?item Cuberteria))
				(and (= (str-compare ?item:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?item:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?array) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)

	; Cjto de cafe
	(if (si-o-no-p "Le gusta tomar cafe")
		then
			(bind ?array (find-all-instances ((?item ConjuntoCafe))
				(and (= (str-compare ?item:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?item:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?array) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	; Cjto de vasos
	(if (not (si-o-no-p "Dispone de conjunto de vasos"))
		then
			(bind ?array (find-all-instances ((?item ConjuntoVasos))
				(and (= (str-compare ?item:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?item:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?array) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)

	; Cjto de copas
	(if (si-o-no-p "Suele celebrar celebraciones con brindis")
		then
			(bind ?array (find-all-instances ((?item ConjuntoCopas))
				(and (= (str-compare ?item:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?item:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?array) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	(if (and (eq (send ?user get-estilo_per) pijo) (si-o-no-p "Le gustan los cócteles"))
		then
			(bind ?array (find-all-instances ((?item ConjuntoCoctel))
				(and (= (str-compare ?item:habitacion "cocina") 0) (member$ (send ?user get-estilo_per) ?item:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?array) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	(assert (Cocina menaje ok))
	(modify ?aaprop (lista-elementos ?lelem))
)
	
(defrule fin-preguntas-cocina
	?menaje <- (Cocina menaje ok)
	?reloj <- (Cocina reloj ok)
	?luz <- (Cocina luz ok)
	?mesa-ana <- (Cocina mesa-anadida ok)
	?sfijas <- (Cocina sillas-fijas ?)
	?splegables <- (Cocina sillas-plegables ?)
	?mesa <- (Cocina mesa ?)
	?tipo-mesa <- (Cocina tipo-mesa ?)
	?comensales <- (Cocina comensales ?)
	?ext <- (Cocina mesa-extensible ?)
	?muebles <- (Cocina muebles ok)
	(habitacion-actual (habitacion ?hab))
	?estado <- (estado-habitacion (habitacion ?h1 & : (eq ?h1 ?hab)))
	=>
	(retract ?menaje)
	(retract ?reloj)
	(retract ?luz)
	(retract ?mesa-ana)
	(retract ?sfijas)
	(retract ?splegables)
	(retract ?mesa)
	(retract ?tipo-mesa)
	(retract ?comensales)
	(retract ?ext)
	(retract ?muebles)
	(modify ?estado (estado listo-para-calcular))
	(pop-focus)
)


; Modulo para preguntas especificas del dormitorio

(defmodule preguntas-especificas-dormitorio "Modulo para preguntas especificas del dormitorio"
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(import preguntas-estilo-persona ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule tipo-dormitorio
	(not (Dormitorio tipo ?))
	(habitacion-actual (habitacion ?hab))
	(not (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab))))
	?user <- (object (is-a Persona))
	=>
	(bind ?lelem (create$))
	(bind ?aaprop (assert (articulos-apropiados (habitacion ?hab))))
	
	(if (si-o-no-p "Se trata de un dormitorio de matrimonio")
		then
			(bind ?camas (find-all-instances ((?cama CamaMatrimonio))
				(and (= (str-compare ?cama:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cama:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?camas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			(assert (Dormitorio tipo matrimonio))
			(assert (Dormitorio escritorio ok))
			(assert (Dormitorio para 2))
		else
			(bind ?pers (find-instance ((?fcn Familia)) TRUE))
			(if (> (length$ ?pers) 0)
				then
					; Puede ser para crios
					(if (si-o-no-p "Se trata de una habitacion para ninos")
						then
							(if (> (length$ (send ?user get-hijos)) 1)
								then
									(bind ?cant (pregunta-numerica "Cuantos ninos van a dormir en la habitacion" 0 10))
									(assert (Dormitorio para ?cant))
									(if (and (> ?cant 1) (si-o-no-p "Le gustaria tener literas"))
										then
											(bind ?cant-literas (div ?cant 2))
											(bind ?cant-camas (mod ?cant 2))
											
											(bind ?literas (find-all-instances ((?litera CamaLitera))
												(and (= (str-compare ?litera:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?litera:estilo))))
											(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?literas) (cantidad ?cant-literas)))
											(bind ?lelem (insert$ ?lelem 1 ?elem))
											
											(if (> ?cant-camas 0)
												then
													(bind ?camas (find-all-instances ((?cama CamaIndividual))
														(and (= (str-compare ?cama:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cama:estilo))))
													(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?camas) (cantidad ?cant-camas)))
													(bind ?lelem (insert$ ?lelem 1 ?elem))
											)
											
										else
											(bind ?camas (find-all-instances ((?cama CamaIndividual))
												(and (= (str-compare ?cama:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cama:estilo))))
											(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?camas) (cantidad ?cant)))
											(bind ?lelem (insert$ ?lelem 1 ?elem))
									)
								else
									(bind ?camas (find-all-instances ((?cama CamaIndividual))
										(and (= (str-compare ?cama:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cama:estilo))))
									(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?camas) (cantidad 1)))
									(bind ?lelem (insert$ ?lelem 1 ?elem))
									(assert (Dormitorio para 1))
							)
							(bind ?armarios (find-all-instances ((?armario Completo))
								(and (= (str-compare ?armario:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?armario:estilo) (eq ?armario:tiene_espejo FALSE) (eq ?armario:clasificacion_edades nino))))
							(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?armarios) (cantidad 1)))
							(bind ?lelem (insert$ ?lelem 1 ?elem))
							
							(assert (Dormitorio tipo nino))
							(assert (Dormitorio armario ok))
							(assert (Dormitorio vestidor no))
							(assert (Dormitorio tocador ok))
							(assert (Dormitorio galan ok))
					)
				else
					(assert (Dormitorio tipo adulto))
					(bind ?cant (pregunta-numerica "Cuantas personas van a dormir en la habitacion" 0 10))
					(assert (Dormitorio para ?cant))
					
					(bind ?camas (find-all-instances ((?cama CamaIndividual))
						(and (= (str-compare ?cama:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cama:estilo))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?camas) (cantidad ?cant)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
			
	)
	
	(modify ?aaprop (lista-elementos ?lelem))
)

(defrule vestidor-matrimonio
	(not (Dormitorio vestidor ?))
	(Dormitorio tipo matrimonio)
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Dispone de vestidor a parte")
		then
			(assert (Dormitorio vestidor si))
		else
			(assert (Dormitorio vestidor no))
	)
)

(defrule decision-armarios-adulto
	(not (Dormitorio armario ?))
	(Dormitorio tipo adulto)
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Le gustaria poder almacenar ropa")
		then
			(if (si-o-no-p "Le gusta mirarse al espejo mientras se viste")
				then
					(bind ?armarios (find-all-instances ((?armario Completo))
						(and (= (str-compare ?armario:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?armario:estilo) (eq ?armario:tiene_espejo TRUE) (eq ?armario:clasificacion_edades adulto))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?armarios) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
				else
					(bind ?armarios (find-all-instances ((?armario Completo))
						(and (= (str-compare ?armario:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?armario:estilo) (eq ?armario:tiene_espejo FALSE) (eq ?armario:clasificacion_edades adulto))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?armarios) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
	)
	(assert (Dormitorio armario ok))
	(assert (Dormitorio vestidor no))
	(modify ?aaprop (lista-elementos ?lelem))
)

(defrule decision-armarios-matrimonio
	(not (Dormitorio armario ?))
	(Dormitorio tipo matrimonio)
	(Dormitorio vestidor ?vest)
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Le gusta mirarse al espejo mientras se viste")
		then
			(if (eq ?vest si)
				then
					; Si tiene vestidor, incluir espejo completo
					
					(bind ?espejos (find-all-instances ((?espejo Espejo))
						(and (= (str-compare ?espejo:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?espejo:estilo) (eq ?espejo:tipo_espejo completo) (eq ?espejo:clasificacion_edades adulto))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?espejos) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
					
				else
					; Si no tiene vestidor, incluir un armario con espejo
					
					(bind ?armarios (find-all-instances ((?armario Completo))
						(and (= (str-compare ?armario:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?armario:estilo) (eq ?armario:tiene_espejo TRUE) (eq ?armario:clasificacion_edades adulto))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?armarios) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Dormitorio armario ok))
)

(defrule decision-escritorio
	(not (Dormitorio escritorio ?))
	(Dormitorio tipo ?x & : (or (eq ?x adulto) (eq ?x nino)))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Le gustaria tener escritorio")
		then
			(bind ?escritorios (find-all-instances ((?escritorio Escritorios))
				(and (= (str-compare ?escritorio:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?escritorio:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 4) (lista-articulos $?escritorios) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
		
			(if (si-o-no-p "Le gustaria tener silla giratoria")
				then
					(bind ?sillas (find-all-instances ((?silla SillaGiratoria))
						(and (= (str-compare ?silla:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
					(bind ?elem (make-instance of elemento (prioridad 4) (lista-articulos $?sillas) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
				else
					(bind ?sillas (find-all-instances ((?silla SillaPlegable))
						(and (= (str-compare ?silla:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?silla:estilo))))
					(bind ?elem (make-instance of elemento (prioridad 4) (lista-articulos $?sillas) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)

			(modify ?aaprop (lista-elementos ?lelem))
	)
	(assert (Dormitorio escritorio ok))
)

(defrule decision-tocador
	(not (Dormitorio tocador ?))
	(Dormitorio tipo ?x & : (or (eq ?x matrimonio) (eq ?x adulto)))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Le gusta tener tocador")
		then
			(bind ?tocadores (find-all-instances ((?tocador Tocador))
				(and (= (str-compare ?tocador:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?tocador:estilo))))
			
			(bind ?espejos (create$))
			(bind ?i 1)
			(while (<= ?i (length$ ?tocadores))
				do
					(bind ?espejos (insert$ ?espejos 1 (send (nth$ ?i ?tocadores) get-espejo_preferido)))
					(bind ?i (+ ?i 1))
			)
			
			(bind ?espejos-elem (make-instance of elemento (prioridad 3) (lista-articulos $?espejos) (cantidad 1)))
			(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?tocadores) (cantidad 1) (elemento-relacionado ?espejos-elem)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Dormitorio tocador ok))
)

(defrule decision-luz
	(not (Dormitorio luz ?))
	(Dormitorio tipo ?tipo-dorm)
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(bind ?respuesta (pregunta "Donde tiene las entradas de luz" techo pared))
	(if (= (str-compare "techo" (lowcase ?respuesta)) 0)
		then
			(if (eq ?tipo-dorm nino)
				then
					(bind ?lamparas (find-all-instances ((?lampara LamparaTecho))
						(and (= (str-compare ?lampara:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo) (eq ?lampara:clasificacion_edades nino))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
				else
					(bind ?lamparas (find-all-instances ((?lampara LamparaTecho))
						(and (= (str-compare ?lampara:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo) (eq ?lampara:clasificacion_edades adulto))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
		else
			(if (eq ?tipo-dorm nino)
				then
					(bind ?lamparas (find-all-instances ((?lampara LamparaParet))
						(and (= (str-compare ?lampara:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo) (eq ?lampara:clasificacion_edades nino))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
				else
					(bind ?lamparas (find-all-instances ((?lampara LamparaParet))
						(and (= (str-compare ?lampara:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo) (eq ?lampara:clasificacion_edades adulto))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?lamparas) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Dormitorio luz ok))
)

(defrule decision-lamparas
	(not (Dormitorio lampara ?))
	(not (Dormitorio mesita ?))
	(Dormitorio tipo ?tipo-dorm)
	(Dormitorio para ?cant)
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	
	(bind ?edad ?tipo-dorm)
	(if (eq ?tipo-dorm matrimonio)
		then
			(bind ?edad adulto)
	)
	
	(if (or (si-o-no-p "Le gusta leer por las noches") (si-o-no-p "Le gusta tener cosas a mano en la cama tales como despertador, joyero, etc"))
		then
			; 2 mesitas + 2 lamparas
			(bind ?mesitas (find-all-instances ((?mesita Mesitas))
				(and (= (str-compare ?mesita:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?mesita:estilo) (eq ?mesita:clasificacion_edades ?edad))))
			(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?mesitas) (cantidad ?cant)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			(bind ?lamparas (find-all-instances ((?lampara LamparaMesita))
				(and (= (str-compare ?lampara:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?lampara:estilo) (eq ?lampara:clasificacion_edades ?edad))))
			(bind ?elem (make-instance of elemento (prioridad 3) (lista-articulos $?lamparas) (cantidad ?cant)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			(modify ?aaprop (lista-elementos ?lelem))
	)
	(assert (Dormitorio mesita ok))
	(assert (Dormitorio lampara ok))
)

(defrule decision-lenceria
	(not (Dormitorio lenceria ?))
	(Dormitorio tipo ?tipo-dorm)
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (eq ?tipo-dorm matrimonio)
		then
			(if (eq (send ?user get-estilo_per) pijo)
				then
					(bind ?cojines (find-all-instances ((?cojin Cojin))
						(and (= (str-compare ?cojin:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cojin:estilo) (eq ?cojin:clasificacion_edades adulto) (eq ?cojin:tipo_cama doble) (eq ?cojin:tipo_relleno pluma))))
					(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?cojines) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
				else
					(bind ?cojines (find-all-instances ((?cojin Cojin))
						(and (= (str-compare ?cojin:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cojin:estilo) (eq ?cojin:clasificacion_edades adulto) (eq ?cojin:tipo_cama doble) (eq ?cojin:tipo_relleno espuma))))
					(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?cojines) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
			
			; Edredon
			(bind ?edredones (find-all-instances ((?edredon Edredon))
				(and (= (str-compare ?edredon:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?edredon:estilo) (eq ?edredon:clasificacion_edades adulto) (eq ?edredon:tipo_cama doble))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?edredones) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			; Sabana
			(bind ?sabanas (find-all-instances ((?sabana Sabana))
				(and (= (str-compare ?sabana:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?sabana:estilo) (eq ?sabana:clasificacion_edades adulto) (eq ?sabana:tipo_cama doble))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?sabanas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			; Alfombra
			(bind ?alfombras (find-all-instances ((?alfombra Alfombra))
				(and (= (str-compare ?alfombra:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?alfombra:estilo) (eq ?alfombra:clasificacion_edades adulto))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?alfombras) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			; Manta
			(bind ?mantas (find-all-instances ((?manta Manta))
				(and (= (str-compare ?manta:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?manta:estilo) (eq ?manta:clasificacion_edades adulto) (eq ?manta:tipo_cama doble))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?mantas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
		else
			(if (eq (send ?user get-estilo_per) pijo)
				then
					(bind ?cojines (find-all-instances ((?cojin Cojin))
						(and (= (str-compare ?cojin:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cojin:estilo) (eq ?cojin:clasificacion_edades ?tipo-dorm) (eq ?cojin:tipo_cama individual) (eq ?cojin:tipo_relleno pluma))))
					(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?cojines) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
				else
					(bind ?cojines (find-all-instances ((?cojin Cojin))
						(and (= (str-compare ?cojin:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?cojin:estilo) (eq ?cojin:clasificacion_edades ?tipo-dorm) (eq ?cojin:tipo_cama individual) (eq ?cojin:tipo_relleno espuma))))
					(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?cojines) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)

			; Edredon
			(bind ?edredones (find-all-instances ((?edredon Edredon))
				(and (= (str-compare ?edredon:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?edredon:estilo) (eq ?edredon:clasificacion_edades ?tipo-dorm) (eq ?edredon:tipo_cama individual))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?edredones) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			; Sabana
			(bind ?sabanas (find-all-instances ((?sabana Sabana))
				(and (= (str-compare ?sabana:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?sabana:estilo) (eq ?sabana:clasificacion_edades ?tipo-dorm) (eq ?sabana:tipo_cama individual))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?sabanas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			; Alfombra
			(bind ?alfombras (find-all-instances ((?alfombra Alfombra))
				(and (= (str-compare ?alfombra:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?alfombra:estilo) (eq ?alfombra:clasificacion_edades ?tipo-dorm))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?alfombras) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
			
			; Manta
			(bind ?mantas (find-all-instances ((?manta Manta))
				(and (= (str-compare ?manta:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?manta:estilo) (eq ?manta:clasificacion_edades ?tipo-dorm) (eq ?manta:tipo_cama individual))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?mantas) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Dormitorio lenceria ok))
)

(defrule decision-galan
	(not (Dormitorio galan ?))
	(Dormitorio tipo ?tipo-dorm & : (neq ?tipo-dorm nino))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Suele llevar traje")
		then
			(bind ?galanes (find-all-instances ((?galan GalanDeNoche))
				(and (= (str-compare ?galan:habitacion "dormitorio") 0) (member$ (send ?user get-estilo_per) ?galan:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 5) (lista-articulos $?galanes) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Dormitorio galan ok))
)

(defrule fin-preguntas-dormitorio
	?galan <- (Dormitorio galan ok)
	?luz <- (Dormitorio luz ok)
	?lenceria <- (Dormitorio lenceria ok)
	?mesita <- (Dormitorio mesita ok)
	?lampara <- (Dormitorio lampara ok)
	?escritorio <- (Dormitorio escritorio ok)
	?armario <- (Dormitorio armario ok)
	?tocador <- (Dormitorio tocador ok)
	?tipo <- (Dormitorio tipo ?)
	?para <- (Dormitorio para ?)
	?vestidor <- (Dormitorio vestidor ?)
	(habitacion-actual (habitacion ?hab))
	?estado <- (estado-habitacion (habitacion ?h1 & : (eq ?h1 ?hab)))
	=>
	(retract ?galan)
	(retract ?luz)
	(retract ?lenceria)
	(retract ?mesita)
	(retract ?lampara)
	(retract ?escritorio)
	(retract ?armario)
	(retract ?tocador)
	(retract ?tipo)
	(retract ?para)
	(retract ?vestidor)
	(modify ?estado (estado listo-para-calcular))
	(pop-focus)
)

; Modulo para preguntas especificas del bano

(defmodule preguntas-especificas-bano "Modulo para preguntas especificas del bano"
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(import preguntas-estilo-persona ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(defrule decision-muebles
	(not (Bano muebles ?))
	(habitacion-actual (habitacion ?hab))
	(not (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab))))
	?user <- (object (is-a Persona))
	=>
	(bind ?lelem (create$))
	(bind ?aaprop (assert (articulos-apropiados (habitacion ?hab))))
	
	(if (si-o-no-p "Le gusta guardar las cremas, colonia, secador, etc en el bano")
		then
			(if (si-o-no-p "Le gustaria que el espejo llevase luz incorporada")
				then
					(bind ?muebles (find-all-instances ((?mueble Bajo))
						(and (= (str-compare ?mueble:habitacion "bano") 0) (member$ (send ?user get-estilo_per) ?mueble:estilo) (eq ?mueble:tiene_espejo TRUE))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?muebles) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
					(assert (Bano espejo ok))
				else
					(bind ?muebles (find-all-instances ((?mueble Bajo))
						(and (= (str-compare ?mueble:habitacion "bano") 0) (member$ (send ?user get-estilo_per) ?mueble:estilo) (eq ?mueble:tiene_espejo FALSE))))
					(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?muebles) (cantidad 1)))
					(bind ?lelem (insert$ ?lelem 1 ?elem))
			)
	)
	
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Bano muebles ok))
)

(defrule decision-espejo
	(not (Bano espejo ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (si-o-no-p "Le gusta mirarse en el espejo cuando esta en el bano")
		then
			(bind ?espejos (find-all-instances ((?espejo Espejo))
				(and (= (str-compare ?espejo:habitacion "bano") 0) (member$ (send ?user get-estilo_per) ?espejo:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?espejos) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Bano espejo ok))
)

(defrule decision-juego-bano
	(not (Bano juego ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(if (not (si-o-no-p "Dispone de set de bano (jabonera, bandeja, …)"))
		then
			(bind ?juegos (find-all-instances ((?juego JuegoBano))
				(and (= (str-compare ?juego:habitacion "bano") 0) (member$ (send ?user get-estilo_per) ?juego:estilo))))
			(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?juegos) (cantidad 1)))
			(bind ?lelem (insert$ ?lelem 1 ?elem))
	)
	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Bano juego ok))
)

(defrule decision-toallas
	(not (Bano toallas ?))
	(habitacion-actual (habitacion ?hab))
	?aaprop <- (articulos-apropiados (habitacion ?h1 & : (eq ?h1 ?hab)) (lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	=>
	(bind ?toallas (find-all-instances ((?toalla Toalla))
		(and (= (str-compare ?toalla:habitacion "bano") 0) (member$ (send ?user get-estilo_per) ?toalla:estilo))))
	(bind ?elem (make-instance of elemento (prioridad 1) (lista-articulos $?toallas) (cantidad 1)))
	(bind ?lelem (insert$ ?lelem 1 ?elem))

	(modify ?aaprop (lista-elementos ?lelem))
	(assert (Bano toallas ok))
)

(defrule fin-preguntas-bano
	?muebles <- (Bano muebles ok)
	?espejo <- (Bano espejo ok)
	?juego <- (Bano juego ok)
	?toallas <- (Bano toallas ok)
	(habitacion-actual (habitacion ?hab))
	?estado <- (estado-habitacion (habitacion ?h1 & : (eq ?h1 ?hab)))
	=>
	(retract ?muebles)
	(retract ?espejo)
	(retract ?juego)
	(retract ?toallas)
	(modify ?estado (estado listo-para-calcular))
	(pop-focus)
)


; Modulo para calcular la recomendacion de una habitacion

(defmodule calculo-de-recomendacion
	(import MAIN ?ALL)
	(import preguntas-personales ?ALL)
	(import preguntas-estilo-persona ?ALL)
	(import inicializacion ?ALL)
	(export ?ALL)
)

(deffunction calc-area (?anchura ?profundidad)
	(bind ?area (* ?anchura ?profundidad))
	?area
)

(deffunction cabe-en-habitacion (?hab-area-restante ?hab-anchura ?hab-profundidad ?mueb-anchura ?mueb-profundidad)
	(bind ?respuesta FALSE)
	(bind ?mueb-area (calc-area ?mueb-anchura ?mueb-profundidad))
	
	; Comprobamos las areas
	(if (> ?hab-area-restante ?mueb-area)
		then
			; Si que cabe por area, ahora veamos como lo podemos encajar en la habitacion
			(if (and (>= ?hab-anchura ?mueb-anchura) (>= ?hab-profundidad ?mueb-profundidad))
				then
					; Si que cabe!!!
					(bind ?respuesta TRUE)
				else
					; Comprobamos si cabe en transversal
					(if (and (>= ?hab-anchura ?mueb-profundidad) (>= ?hab-profundidad ?mueb-anchura))
						then
							; Si que cabe!!!
							(bind ?respuesta TRUE)
					)
			)
	)
	?respuesta
)

(deftemplate anadir-articulo
	(multislot articulo)
	(slot cantidad)
	(slot prioridad)
	(slot estado)
)

(defrule calcular
	?act <- (habitacion-actual (habitacion ?hab))
	?estado <- (estado-habitacion (habitacion ?h1 & : (eq ?h1 ?hab)) (estado ?x & : (or (eq ?x listo-para-calcular)(eq ?x fallo-en-calculo))))
	?aaprop <- (articulos-apropiados (habitacion ?h2 & : (eq ?h2 ?hab))(lista-elementos $?lelem))
	?user <- (object (is-a Persona))
	(not (anadir-articulo (articulo ?)))
	=>
		(modify ?act (area-restante (/ (* (calc-area (send ?hab get-anchura) (send ?hab get-profundidad)) 3) 4)) (presupuesto-restante (+ (send ?hab get-presupuestoMax) ?*presupuesto*)) (precio-total 0) (prioridad-actual 1))
		
		(bind ?i 1)
		(while (<= ?i (length$ ?lelem))
			do
				(bind ?curr-elem (nth$ ?i ?lelem))
				(if (> (length$ (send ?curr-elem get-lista-articulos)) 0)
					then
						(assert (anadir-articulo (articulo (send ?curr-elem get-lista-articulos)) (cantidad (send ?curr-elem get-cantidad)) (estado pendiente) (prioridad (send ?curr-elem get-prioridad))))
				)
				
				; Meter articulos relacionados
				
				(if (neq (send ?curr-elem get-elemento-relacionado) nil)
					then
						(bind ?ele-rel (send ?curr-elem get-elemento-relacionado))
						(assert (anadir-articulo (articulo (send ?ele-rel get-lista-articulos)) (cantidad (send ?ele-rel get-cantidad)) (estado pendiente) (prioridad (send ?ele-rel get-prioridad))))
				)

				(bind ?i (+ ?i 1))
		)
)

(defrule meter-articulo-en-habitacion
	(declare (salience 10))
	?act <- (habitacion-actual (habitacion ?hab) (area-restante ?area) (presupuesto-restante ?pres) (precio-total ?precio) (prioridad-actual ?threshold))
	?anadir <- (anadir-articulo (articulo $?lista-art)(estado pendiente)(cantidad ?cant)(prioridad ?prio & : (eq ?prio ?threshold)))
	?user <- (object (is-a Persona))
	=>
		(bind ?colocado FALSE)
		(bind ?i 1)
		(while (and (not ?colocado) (<= ?i (length$ ?lista-art)))
			do
				(bind ?art (nth$ ?i ?lista-art))
				
				(bind ?res (find-all-instances ((?mueble Mueble)) (eq ?mueble ?art)))
				(if (> (length$ ?res) 0)
					then
						(bind ?hab-anchura (send ?hab get-anchura))
						(bind ?hab-profundidad (send ?hab get-profundidad))
						(bind ?mueb-anchura (send ?art get-anchura))
						(bind ?mueb-profundidad (send ?art get-profundidad))
						
						(if (and (cabe-en-habitacion ?area ?hab-anchura ?hab-profundidad (* ?mueb-anchura ?cant) (* ?mueb-profundidad ?cant)) (>= ?pres (* (send ?art get-precio) ?cant)))
							then
								; Cabe y tenemos dinero, pues para dentro!!
								(send ?hab put-cjtoMuebles (insert$ (send ?hab get-cjtoMuebles) 1 (make-instance of Resultado (valor ?art)(cantidad ?cant))))
								(modify ?act (presupuesto-restante (- ?pres (* (send ?art get-precio) ?cant))) (area-restante (- ?area (* (calc-area ?mueb-anchura ?mueb-profundidad) ?cant))) (precio-total (+ ?precio (* (send ?art get-precio) ?cant))))
								(modify ?anadir (estado ok))
								(bind ?colocado TRUE)
						)
				)
				
				(bind ?res (find-all-instances ((?lenceria LenceriaHogar)) (eq ?lenceria ?art)))
				(if (> (length$ ?res) 0)
					then
						(if (>= ?pres (* (send ?art get-precio) ?cant))
							then
								; Tenemos dinero, pues para dentro!!
								(send ?hab put-cjtoLenceriaHogar (insert$ (send ?hab get-cjtoLenceriaHogar) 1 (make-instance of Resultado (valor ?art)(cantidad ?cant))))
								(modify ?act (presupuesto-restante (- ?pres (* (send ?art get-precio) ?cant))) (precio-total (+ ?precio (* (send ?art get-precio) ?cant))))
								(modify ?anadir (estado ok))
								(bind ?colocado TRUE)
						)
				)
				
				(bind ?res (find-all-instances ((?menaje MenajeHogar)) (eq ?menaje ?art)))
				(if (> (length$ ?res) 0)
					then
						(if (>= ?pres (* (send ?art get-precio) ?cant))
							then
								; Tenemos dinero, pues para dentro!!
								(send ?hab put-cjtoMenajeHogar (insert$ (send ?hab get-cjtoMenajeHogar) 1 (make-instance of Resultado (valor ?art)(cantidad ?cant))))
								(modify ?act (presupuesto-restante (- ?pres (* (send ?art get-precio) ?cant))) (precio-total (+ ?precio (* (send ?art get-precio) ?cant))))
								(modify ?anadir (estado ok))
								(bind ?colocado TRUE)
						)
				)
				
				(bind ?res (find-all-instances ((?deco Decoracion)) (eq ?deco ?art)))
				(if (> (length$ ?res) 0)
					then
						(if (>= ?pres (* (send ?art get-precio) ?cant))
							then
								; Tenemos dinero, pues para dentro!!
								(send ?hab put-cjtoDecoracion (insert$ (send ?hab get-cjtoDecoracion) 1 (make-instance of Resultado (valor ?art)(cantidad ?cant))))
								(modify ?act (presupuesto-restante (- ?pres (* (send ?art get-precio) ?cant))) (precio-total (+ ?precio (* (send ?art get-precio) ?cant))))
								(modify ?anadir (estado ok))
								(bind ?colocado TRUE)
						)
				)
				
				(bind ?res (find-all-instances ((?ilum Iluminacion)) (eq ?ilum ?art)))
				(if (> (length$ ?res) 0)
					then
						(if (>= ?pres (* (send ?art get-precio) ?cant))
							then
								; Tenemos dinero, pues para dentro!!
								(send ?hab put-cjtoIluminacion (insert$ (send ?hab get-cjtoIluminacion) 1 (make-instance of Resultado (valor ?art)(cantidad ?cant))))
								(modify ?act (presupuesto-restante (- ?pres (* (send ?art get-precio) ?cant))) (precio-total (+ ?precio (* (send ?art get-precio) ?cant))))
								(modify ?anadir (estado ok))
								(bind ?colocado TRUE)
						)
				)
				(bind ?i (+ ?i 1))	
		)
		
		; Si no se ha metido algun articulo, marcamos para comprobar despues
		(if (not ?colocado)
			then
				(modify ?anadir (estado fallo))
		)
)

(defrule subir-prioridad
	?act <- (habitacion-actual (prioridad-actual ?threshold))
	(and (exists (anadir-articulo (articulo ?lista-art)(estado pendiente)(cantidad ?cant)(prioridad ?prio & : (> ?prio ?threshold))))
		(not (exists (anadir-articulo (articulo ?lista-art)(estado pendiente)(cantidad ?cant)(prioridad ?prio & : (<= ?prio ?threshold))))))
	=>
	(modify ?act (prioridad-actual (+ ?threshold 1)))
)

(defrule fin-calculo
	(exists (anadir-articulo (articulo ?)))
	(and (not (exists (anadir-articulo (estado pendiente)))) (not (exists (anadir-articulo (estado fallo)))))
	?estado <- (estado-habitacion (estado listo-para-calcular))
	?act <- (habitacion-actual (habitacion ?hab) (area-restante ?area) (presupuesto-restante ?pres) (precio-total ?precio))
	=>
	(modify ?estado (estado ok))
	(bind ?*presupuesto* (+ ?pres ?*presupuesto*))
	(send ?hab put-precioTotal ?precio)
	(assert (Calculo fin ok))
	(retract ?act)
)

(defrule fallo-calculo
	(exists (anadir-articulo (articulo ?)))
	(and (not (exists (anadir-articulo (estado pendiente)))) (exists (anadir-articulo (estado fallo))))
	?estado <- (estado-habitacion (estado listo-para-calcular))
	?act <- (habitacion-actual (habitacion ?hab) (area-restante ?area) (presupuesto-restante ?pres) (precio-total ?precio))
	=>
	(send ?hab put-cjtoMenajeHogar (create$))
	(send ?hab put-cjtoLenceriaHogar (create$))
	(send ?hab put-cjtoMuebles (create$))
	(send ?hab put-cjtoDecoracion (create$))
	(send ?hab put-cjtoIluminacion (create$))
	(retract ?act)
	(modify ?estado (estado fallo-en-calculo))
	(assert (Calculo fin ok))
)

(defrule fin-calculo-con-fallo
	(exists (anadir-articulo (articulo ?)))
	(and (not (exists (anadir-articulo (estado pendiente)))) (exists (anadir-articulo (estado fallo))))
	?estado <- (estado-habitacion (estado fallo-en-calculo))
	?act <- (habitacion-actual (habitacion ?hab) (area-restante ?area) (presupuesto-restante ?pres) (precio-total ?precio))
	=>
	(retract ?act)
	(send ?hab put-precioTotal ?precio)
	(modify ?estado (estado ok))
	(assert (Calculo fin ok))
)

(defrule eliminar-hechos-aux-calculo
	?anadir <- (anadir-articulo (articulo ?))
	(Calculo fin ok)
	=>
	(retract ?anadir)
)

(defrule volver-estado-anterior
	(not (anadir-articulo (articulo ?art)))
	?calc <- (Calculo fin ok)
	=>
	(retract ?calc)
	(pop-focus)
)

; Modulo de impresion
(defmodule impresion "Modulo de impresion"
	(import MAIN ?ALL)
)

(defrule imprimir
	?rec <- (recomendacion (persona ?per) (final? imprimir) (habitaciones $?lista-hab))
	=>
	(printout t "---------------------------------------------------------------------" crlf)
	(format t "Sr/a. %s,%n" (send ?per get-nombre_per))
	(printout t "Aqui tiene la recomendacion para las habitaciones que escogio" crlf crlf)
	
	(bind ?i 1)
	(while (<= ?i (length$ ?lista-hab))
		do
			(bind ?curr-hab (nth$ ?i ?lista-hab))
			(printout t (send ?curr-hab imprimir))
			(bind ?i (+ ?i 1))
	)
	(modify ?rec (final? se_acabo))
	(pop-focus)
)
