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
	(role concrete))
	
(definstances articulos

([Mikeo_Instance_0] of  Espejo

	(anchura 40.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo de pie, de diseÃ±o.")
	(diametro 0)
	(estilo moderno)
	(habitacion dormitorio)
	(material vidrio)
	(nombre "Krash")
	(precio 20.0)
	(profundidad 0.0)
	(tipo_espejo completo))

([Mikeo_Instance_1] of  Espejo

	(anchura 40.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo de pie con estilo y elegante.")
	(diametro 0)
	(estilo pijo)
	(habitacion dormitorio)
	(material vidrio)
	(nombre "Blum")
	(precio 24.95)
	(profundidad 0.0)
	(tipo_espejo completo))

([Mikeo_Instance_10000] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla elegante tapizada en piel.")
	(estilo pijo)
	(habitacion comedor)
	(material madera piel)
	(nombre "York")
	(precio 126.0)
	(profundidad 58.0))

([Mikeo_Instance_10001] of  SillaFija

	(anchura 55.0)
	(descripcion "Silla de diseno actual tapizada en piel.")
	(estilo moderno)
	(habitacion comedor)
	(material madera piel)
	(nombre "Mara")
	(precio 100.0)
	(profundidad 55.0))

([Mikeo_Instance_10002] of  SillaFija

	(anchura 48.0)
	(descripcion "Silla comoda de estilo intemporal")
	(estilo clasico)
	(habitacion comedor)
	(material madera tela)
	(nombre "Cast")
	(precio 100.0)
	(profundidad 52.0))

([Mikeo_Instance_10003] of  SillaFija

	(anchura 52.0)
	(descripcion "Silla relajante de madera.")
	(estilo hippie)
	(habitacion comedor)
	(material madera tela)
	(nombre "Fly")
	(precio 70.0)
	(profundidad 52.0))

([Mikeo_Instance_10004] of  SillaFija

	(anchura 45.0)
	(descripcion "Silla comoda y versatil.")
	(estilo hippie)
	(habitacion comedor)
	(material plastico)
	(nombre "FlyLess")
	(precio 25.0)
	(profundidad 52.0))

([Mikeo_Instance_10005] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de madera. Versatil y elegante.")
	(estilo pijo)
	(habitacion comedor)
	(material madera)
	(nombre "Bombai")
	(precio 39.95)
	(profundidad 47.0))

([Mikeo_Instance_10006] of  Esquina

	(anchura 243.0)
	(descripcion "Sofa esquina de 4 plazas. Elegante, comodo y con diseno exclusivo. Tapizado de piel.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_20020])
	(habitacion comedor)
	(material piel)
	(nombre "TopFeel")
	(num_plazas 4)
	(precio 1389.5)
	(profundidad 150.0))

([Mikeo_Instance_10007] of  Esquina

	(anchura 243.0)
	(descripcion "Sofa esquina de 4 plazas. Elegante, comodo y con diseno exclusivo. Tapizado de tela.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_20020])
	(habitacion comedor)
	(material tela)
	(nombre "Top")
	(num_plazas 4)
	(precio 1050.0)
	(profundidad 150.0))

([Mikeo_Instance_10008] of  Esquina

	(anchura 243.0)
	(descripcion "Sofa esquina de 4 plazas. Comodo y diseno intemporal. Tapizado de tela.")
	(estilo clasico)
	(funda_preferida [MAIN::Mikeo_Instance_20020])
	(habitacion comedor)
	(material tela)
	(nombre "ForEver")
	(num_plazas 4)
	(precio 850.0)
	(profundidad 150.0))

([Mikeo_Instance_10010] of  Esquina

	(anchura 243.0)
	(descripcion "Sofa esquina de 4 plazas. Disenado para disfrutar de la paz y la tranquilidad. Tapizado de tela.")
	(estilo hippie)
	(funda_preferida [MAIN::Mikeo_Instance_20020])
	(habitacion comedor)
	(material tela)
	(nombre "ChangeMind")
	(num_plazas 4)
	(precio 600.0)
	(profundidad 150.0))

([Mikeo_Instance_10011] of  FundaSofa

	(anchura 0.0)
	(descripcion "Funda de sofa invidual con diseno artistico.")
	(estilo moderno clasico hippie)
	(habitacion comedor)
	(material tela)
	(nombre "TreeInd")
	(precio 25.0)
	(profundidad 0.0)
	(tipo_sofa individual))

([Mikeo_Instance_10012] of  2o3Plazas

	(anchura 200.0)
	(descripcion "Sofa de dos plazas. Elegante, comodo y con diseno exclusivo. Tapizado de piel.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material piel)
	(nombre "TopFeelTwo")
	(num_plazas 2)
	(precio 749.0)
	(profundidad 97.0))

([Mikeo_Instance_10013] of  2o3Plazas

	(anchura 235.0)
	(descripcion "Sofa de tres plazas. Elegante, comodo y con diseno exclusivo. Tapizado de piel.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material piel)
	(nombre "TopFeelThree")
	(num_plazas 3)
	(precio 849.0)
	(profundidad 97.0))

([Mikeo_Instance_10016] of  SofaIndividual

	(anchura 100.0)
	(descripcion "Sofa individual. Elegante, comodo y con diseno exclusivo. Tapizado de piel.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_10011])
	(habitacion comedor)
	(material piel)
	(nombre "TopFeelOne")
	(num_plazas 1)
	(precio 350.0)
	(profundidad 88.0))

([Mikeo_Instance_10017] of  SofaIndividual

	(anchura 100.0)
	(descripcion "Sofa individual. Elegante, comodo y con diseno exclusivo. Tapizado de tela.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_10011])
	(habitacion comedor)
	(material tela)
	(nombre "TopOne")
	(num_plazas 1)
	(precio 275.0)
	(profundidad 88.0))

([Mikeo_Instance_10018] of  SofaIndividual

	(anchura 100.0)
	(descripcion "Sofa individual. Comodo y diseno intemporal. Tapizado de tela.")
	(estilo clasico)
	(funda_preferida [MAIN::Mikeo_Instance_10011])
	(habitacion comedor)
	(material tela)
	(nombre "ForEverOne")
	(num_plazas 1)
	(precio 299.0)
	(profundidad 88.0))

([Mikeo_Instance_10019] of  SofaIndividual

	(anchura 100.0)
	(descripcion "Sofa individual. Disenado para disfrutar de la paz y la tranquilidad. Tapizado de tela.")
	(estilo hippie)
	(funda_preferida [MAIN::Mikeo_Instance_10011])
	(habitacion comedor)
	(material tela)
	(nombre "ChangeMindOne")
	(num_plazas 1)
	(precio 230.0)
	(profundidad 88.0))

([Mikeo_Instance_10020] of  2o3Plazas

	(anchura 200.0)
	(descripcion "Sofa de dos plazas. Elegante, comodo y con diseno exclusivo. Tapizado de tela.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material tela)
	(nombre "TopTwo")
	(num_plazas 2)
	(precio 649.0)
	(profundidad 97.0))

([Mikeo_Instance_10021] of  2o3Plazas

	(anchura 235.0)
	(descripcion "Sofa de tres plazas. Elegante, comodo y con diseno exclusivo. Tapizado de tela.")
	(estilo moderno pijo)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material tela)
	(nombre "TopThree")
	(num_plazas 3)
	(precio 749.0)
	(profundidad 97.0))

([Mikeo_Instance_10022] of  2o3Plazas

	(anchura 200.0)
	(descripcion "Sofa de dos plazas. Comodo y diseno intemporal. Tapizado de tela.")
	(estilo clasico)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material tela)
	(nombre "ForEverTwo")
	(num_plazas 2)
	(precio 560.0)
	(profundidad 88.0))

([Mikeo_Instance_10023] of  2o3Plazas

	(anchura 235.0)
	(descripcion "Sofa de tres plazas. Comodo y diseno intemporal. Tapizado de tela.")
	(estilo clasico)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material tela)
	(nombre "ForEverThree")
	(num_plazas 3)
	(precio 660.0)
	(profundidad 88.0))

([Mikeo_Instance_10024] of  2o3Plazas

	(anchura 200.0)
	(descripcion "Sofa de dos plazas. Disenado para disfrutar de la paz y la tranquilidad. Tapizado de tela.")
	(estilo hippie)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material tela)
	(nombre "ChangeMindTwo")
	(num_plazas 2)
	(precio 540.0)
	(profundidad 88.0))

([Mikeo_Instance_10025] of  2o3Plazas

	(anchura 200.0)
	(descripcion "Sofa de tres plazas. Disenado para disfrutar de la paz y la tranquilidad. Tapizado de tela.")
	(estilo hippie)
	(funda_preferida [MAIN::Mikeo_Instance_20019])
	(habitacion comedor)
	(material tela)
	(nombre "ChangeMindThree")
	(num_plazas 3)
	(precio 600.0)
	(profundidad 88.0))

([Mikeo_Instance_10027] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de comedor sofisticada con madera natural de alta calidad. Para dos personas, extensible a cuatro. Material madera.")
	(estilo pijo)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 119.0)
	(material madera)
	(nombre "FashTwo")
	(num_plazas 2)
	(precio 250.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10044]))

([Mikeo_Instance_10028] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de comedor sofisticada con madera natural de alta calidad. Para cuatro personas, extensible a seis. Material madera.")
	(estilo pijo)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 189.0)
	(material madera)
	(nombre "FashFour")
	(num_plazas 4)
	(precio 400.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10044]))

([Mikeo_Instance_10029] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de comedor sofisticada con madera natural de alta calidad. Para seis personas, extensible a ocho. Material madera.")
	(estilo pijo)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 235.0)
	(material madera)
	(nombre "FashSix")
	(num_plazas 6)
	(precio 550.0)
	(profundidad 90.0)
	(silla_preferida [MAIN::Mikeo_Instance_10044]))

([Mikeo_Instance_10030] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de comedor de diseÃ±o exclusivo. Para dos personas, extensible a cuatro. Material madera.")
	(estilo moderno)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 119.0)
	(material madera)
	(nombre "DisnewTwo")
	(num_plazas 2)
	(precio 230.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10045]))

([Mikeo_Instance_10031] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de comedor de diseÃ±o exclusivo. Para cuatro personas, extensible a seis. Material madera.")
	(estilo moderno)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 189.0)
	(material madera)
	(nombre "DisnewFour")
	(num_plazas 4)
	(precio 350.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10045]))

([Mikeo_Instance_10032] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de comedor de diseÃ±o exclusivo. Para seis personas, extensible a ocho. Material madera.")
	(estilo moderno)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 235.0)
	(material madera)
	(nombre "DisnewSix")
	(num_plazas 6)
	(precio 500.0)
	(profundidad 90.0)
	(silla_preferida [MAIN::Mikeo_Instance_10045]))

([Mikeo_Instance_10033] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de comedor con un diseÃ±o cuidado y de estilo tradicional. Para dos personas, extensible a cuatro. Material madera.")
	(estilo clasico)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 119.0)
	(material madera)
	(nombre "PreserveTwo")
	(num_plazas 2)
	(precio 240.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10046]))

([Mikeo_Instance_10034] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de comedor con un diseÃ±o cuidado y de estilo tradicional. Para cuatro personas, extensible a seis. Material madera.")
	(estilo clasico)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 189.0)
	(material madera)
	(nombre "PreserveFour")
	(num_plazas 4)
	(precio 380.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10046]))

([Mikeo_Instance_10035] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de comedor con un diseÃ±o cuidado y de estilo tradicional. Para seis personas, extensible a ocho. Material madera.")
	(estilo clasico)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 235.0)
	(material madera)
	(nombre "PreserveSix")
	(num_plazas 6)
	(precio 500.0)
	(profundidad 90.0)
	(silla_preferida [MAIN::Mikeo_Instance_10046]))

([Mikeo_Instance_10036] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de comedor inspirada en los 60. Para dos personas, extensible a cuatro. Material madera.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 119.0)
	(material madera)
	(nombre "FlowTwo")
	(num_plazas 2)
	(precio 210.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10047]))

([Mikeo_Instance_10037] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de comedor inspirada en los 60. Para cuatro personas, extensible a seis. Material madera.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 189.0)
	(material madera)
	(nombre "FlowFour")
	(num_plazas 4)
	(precio 300.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10047]))

([Mikeo_Instance_10038] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de comedor inspirada en los 60. Para seis personas, extensible a ocho. Material madera.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 235.0)
	(material madera)
	(nombre "FlowSix")
	(num_plazas 6)
	(precio 480.0)
	(profundidad 90.0)
	(silla_preferida [MAIN::Mikeo_Instance_10047]))

([Mikeo_Instance_10039] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de comedor inspirada en los 60. Para dos personas, extensible a cuatro. Material mimbre.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 119.0)
	(material mimbre)
	(nombre "FlowplasTwo")
	(num_plazas 2)
	(precio 100.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10048]))

([Mikeo_Instance_10040] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de comedor inspirada en los 60. Para cuatro personas, extensible a seis. Material mimbre.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 189.0)
	(material mimbre)
	(nombre "FlowplasFour")
	(num_plazas 4)
	(precio 150.0)
	(profundidad 78.0)
	(silla_preferida [MAIN::Mikeo_Instance_10048]))

([Mikeo_Instance_10041] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de comedor inspirada en los 60. Para seis personas, extensible a ocho. Material mimbre.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion comedor)
	(longitud_max 235.0)
	(material mimbre)
	(nombre "FlowplasSix")
	(num_plazas 6)
	(precio 199.0)
	(profundidad 90.0)
	(silla_preferida [MAIN::Mikeo_Instance_10048]))

([Mikeo_Instance_10044] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla exlusiva a conjunto con la mesa modelo FashTwo, FashFour o FashSix")
	(estilo pijo)
	(habitacion comedor)
	(material madera)
	(nombre "FashChair")
	(precio 170.0)
	(profundidad 58.0))

([Mikeo_Instance_10045] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla exlusiva a conjunto con la mesa modelo DisnewTwo, DisnewFour o DisnewSix")
	(estilo moderno)
	(habitacion comedor)
	(material madera)
	(nombre "DisnewChair")
	(precio 135.0)
	(profundidad 58.0))

([Mikeo_Instance_10046] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla exlusiva a conjunto con la mesa modelo PreserveTwo, PreserveFour o PreserveSix")
	(estilo clasico)
	(habitacion comedor)
	(material madera)
	(nombre "PreserveChair")
	(precio 126.0)
	(profundidad 58.0))

([Mikeo_Instance_10047] of  SillaFija

	(anchura 45.0)
	(descripcion "Silla exlusiva a conjunto con la mesa modelo FlowTwo, FlowFour o FlowSix")
	(estilo hippie)
	(habitacion comedor)
	(material madera)
	(nombre "FlowChair")
	(precio 75.0)
	(profundidad 56.0))

([Mikeo_Instance_10048] of  SillaFija

	(anchura 45.0)
	(descripcion "Silla exlusiva a conjunto con la mesa modelo FlowplasTwo, FlowplasFour o FourplasSix.")
	(estilo hippie)
	(habitacion comedor)
	(material plastico)
	(nombre "FlowplasChair")
	(precio 30.0)
	(profundidad 56.0))

([Mikeo_Instance_18] of  Espejo

	(anchura 75.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo facial de tocador estilo clasico.")
	(diametro 0)
	(estilo clasico)
	(habitacion dormitorio)
	(material vidrio)
	(nombre "Anes")
	(precio 69.9)
	(profundidad 57.0)
	(tipo_espejo facial))

([Mikeo_Instance_20] of  Espejo

	(anchura 80.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo facial de tocador con elegante y de diseÃ±o.")
	(diametro 0)
	(estilo moderno pijo)
	(habitacion dormitorio)
	(material vidrio)
	(nombre "Musa")
	(precio 75.5)
	(profundidad 0.0)
	(tipo_espejo facial))

([Mikeo_Instance_20000] of  Completo

	(anchura 140.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto sofisticado con espejo en las puertas centrales.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "SofisticMirror")
	(precio 315.0)
	(profundidad 58.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_20001] of  Completo

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto sofisticado.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "Sofistic")
	(precio 250.0)
	(profundidad 58.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_20002] of  Completo

	(anchura 140.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto de diseno con espejo en las puertas centrales.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "TomyMirror")
	(precio 300.0)
	(profundidad 58.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_20003] of  Completo

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto de diseno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "Tomy")
	(precio 249.0)
	(profundidad 58.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_20004] of  Completo

	(anchura 140.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto funcional con espejo en las puertas centrales.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "OriMirror")
	(precio 250.0)
	(profundidad 58.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_20005] of  Completo

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto funcional.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "Ori")
	(precio 202.0)
	(profundidad 58.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_20006] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de madera. Innovadora y versatil.")
	(estilo moderno)
	(habitacion comedor)
	(material madera)
	(nombre "Island")
	(precio 35.0)
	(profundidad 47.0))

([Mikeo_Instance_20007] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de madera. Comoda y versatil.")
	(estilo clasico)
	(habitacion comedor)
	(material madera)
	(nombre "Forever")
	(precio 32.0)
	(profundidad 47.0))

([Mikeo_Instance_20008] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de madera. Comoda, relajante y versatil.")
	(estilo hippie)
	(habitacion comedor)
	(material plastico)
	(nombre "Java")
	(precio 30.0)
	(profundidad 47.0))

([Mikeo_Instance_20010] of  FundaMesa

	(anchura 80.0)
	(descripcion "Mantel de plastico para mesa de hasta 4 comensales.")
	(estilo moderno)
	(habitacion comedor)
	(material plastico)
	(nombre "AndreaFour")
	(num_plazas 4)
	(precio 20.0)
	(profundidad 120.0))

([Mikeo_Instance_20011] of  FundaMesa

	(anchura 80.0)
	(descripcion "Mantel de plastico para mesa de hasta 4 comensales.")
	(estilo clasico)
	(habitacion comedor)
	(material plastico)
	(nombre "IndaFour")
	(num_plazas 4)
	(precio 19.9)
	(profundidad 120.0))

([Mikeo_Instance_20012] of  FundaMesa

	(anchura 80.0)
	(descripcion "Mantel de plastico para mesa de hasta 4 comensales.")
	(estilo hippie)
	(habitacion comedor)
	(material plastico)
	(nombre "YesFour")
	(num_plazas 4)
	(precio 15.95)
	(profundidad 120.0))

([Mikeo_Instance_20013] of  FundaMesa

	(anchura 85.0)
	(descripcion "Mantel de plastico para mesa de hasta 6 comensales.")
	(estilo moderno)
	(habitacion comedor)
	(material plastico)
	(nombre "AndreaSix")
	(num_plazas 6)
	(precio 20.0)
	(profundidad 200.0))

([Mikeo_Instance_20014] of  FundaMesa

	(anchura 85.0)
	(descripcion "Mantel de plastico para mesa de hasta 6 comensales.")
	(estilo clasico)
	(habitacion comedor)
	(material plastico)
	(nombre "IndaSix")
	(num_plazas 6)
	(precio 19.9)
	(profundidad 200.0))

([Mikeo_Instance_20015] of  FundaMesa

	(anchura 85.0)
	(descripcion "Mantel de plastico para mesa de hasta 6 comensales.")
	(estilo hippie)
	(habitacion comedor)
	(material plastico)
	(nombre "YesSix")
	(num_plazas 6)
	(precio 15.95)
	(profundidad 200.0))

([Mikeo_Instance_20016] of  FundaMesa

	(anchura 90.0)
	(descripcion "Mantel de plastico para mesa de hasta 8 comensales.")
	(estilo moderno)
	(habitacion comedor)
	(material plastico)
	(nombre "AndreaEight")
	(num_plazas 8)
	(precio 20.0)
	(profundidad 250.0))

([Mikeo_Instance_20017] of  FundaMesa

	(anchura 90.0)
	(descripcion "Mantel de plastico para mesa de hasta 8 comensales.")
	(estilo clasico)
	(habitacion comedor)
	(material plastico)
	(nombre "IndaEight")
	(num_plazas 8)
	(precio 19.9)
	(profundidad 250.0))

([Mikeo_Instance_20018] of  FundaMesa

	(anchura 90.0)
	(descripcion "Mantel de plastico para mesa de hasta 8 comensales.")
	(estilo hippie)
	(habitacion comedor)
	(material plastico)
	(nombre "YesEight")
	(num_plazas 8)
	(precio 15.95)
	(profundidad 250.0))

([Mikeo_Instance_20019] of  FundaSofa

	(anchura 0.0)
	(descripcion "Funda de sofa 2 o 3 plazas con diseno artistico.")
	(estilo moderno clasico hippie)
	(habitacion comedor)
	(material tela)
	(nombre "TreeDouble")
	(precio 29.95)
	(profundidad 0.0)
	(tipo_sofa 2plazas))

([Mikeo_Instance_20020] of  FundaSofa

	(anchura 0.0)
	(descripcion "Funda de sofa esquina con diseno artistico.")
	(estilo moderno clasico hippie)
	(habitacion comedor)
	(material tela)
	(nombre "TreeComplete")
	(precio 35.0)
	(profundidad 0.0)
	(tipo_sofa esquina))

([Mikeo_Instance_20029] of  Completo

	(anchura 280.0)
	(clasificacion_edades adulto)
	(descripcion "Elegante mueble de comedor de madera.")
	(estilo pijo moderno)
	(habitacion comedor)
	(material madera)
	(nombre "EleganceBig")
	(precio 1000.0)
	(profundidad 56.0))

([Mikeo_Instance_20039] of  Completo

	(anchura 280.0)
	(clasificacion_edades adulto)
	(descripcion "Elegante mueble de comedor de pladur.")
	(estilo pijo moderno)
	(habitacion comedor)
	(material pladur)
	(nombre "EleganceBigPla")
	(precio 1150.0)
	(profundidad 56.0))

([Mikeo_Instance_20040] of  Completo

	(anchura 225.0)
	(clasificacion_edades adulto)
	(descripcion "Elegante mueble de comedor de madera.")
	(estilo pijo moderno)
	(habitacion comedor)
	(material madera)
	(nombre "EleganceMid")
	(precio 800.0)
	(profundidad 56.0))

([Mikeo_Instance_20041] of  Completo

	(anchura 225.0)
	(clasificacion_edades adulto)
	(descripcion "Elegante mueble de comedor de pladur.")
	(estilo pijo moderno)
	(habitacion comedor)
	(material pladur)
	(nombre "EleganceMidPla")
	(precio 895.0)
	(profundidad 56.0))

([Mikeo_Instance_20042] of  Completo

	(anchura 190.0)
	(clasificacion_edades adulto)
	(descripcion "Elegante mueble de comedor de madera.")
	(estilo pijo moderno)
	(habitacion comedor)
	(material madera)
	(nombre "EleganceSmall")
	(precio 650.0)
	(profundidad 56.0))

([Mikeo_Instance_20043] of  Completo

	(anchura 190.0)
	(clasificacion_edades adulto)
	(descripcion "Elegante mueble de comedor de pladur.")
	(estilo pijo moderno)
	(habitacion comedor)
	(material pladur)
	(nombre "EleganceSmallPla")
	(precio 650.0)
	(profundidad 56.0))

([Mikeo_Instance_20044] of  Completo

	(anchura 280.0)
	(clasificacion_edades adulto)
	(descripcion "Intemporal mueble de comedor de madera.")
	(estilo clasico)
	(habitacion comedor)
	(material madera)
	(nombre "ResistBig")
	(precio 800.0)
	(profundidad 56.0))

([Mikeo_Instance_20045] of  Completo

	(anchura 225.0)
	(clasificacion_edades adulto)
	(descripcion "Intemporal mueble de comedor de madera.")
	(estilo clasico)
	(habitacion comedor)
	(material madera)
	(nombre "ResistMid")
	(precio 700.0)
	(profundidad 56.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_20046] of  Completo

	(anchura 190.0)
	(clasificacion_edades adulto)
	(descripcion "Intemporal mueble de comedor de madera.")
	(estilo clasico)
	(habitacion comedor)
	(material madera)
	(nombre "ResistSmall")
	(precio 600.0)
	(profundidad 56.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_20047] of  Completo

	(anchura 280.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble de comedor de madera que recuerdan los anos 60.")
	(estilo hippie)
	(habitacion comedor)
	(material madera)
	(nombre "RetroBig")
	(precio 800.0)
	(profundidad 56.0))

([Mikeo_Instance_20048] of  Completo

	(anchura 225.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble de comedor de madera que recuerdan los anos 60.")
	(estilo hippie)
	(habitacion comedor)
	(material madera)
	(nombre "RetroMid")
	(precio 680.0)
	(profundidad 56.0))

([Mikeo_Instance_20049] of  Completo

	(anchura 190.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble de comedor de madera que recuerdan los anos 60.")
	(estilo hippie)
	(habitacion comedor)
	(material madera)
	(nombre "RetroSmall")
	(precio 500.0)
	(profundidad 56.0))

([Mikeo_Instance_20050] of  Alfombra

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Alfombra elegante de tejidos indus.")
	(estilo pijo)
	(habitacion comedor)
	(material textil)
	(nombre "Betani")
	(precio 300.0)
	(profundidad 80.0))

([Mikeo_Instance_20052] of  Alfombra

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Alfombra original de tejidos escoceses.")
	(estilo moderno)
	(habitacion comedor)
	(material textil)
	(nombre "Refine")
	(precio 300.0)
	(profundidad 80.0))

([Mikeo_Instance_20053] of  Alfombra

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Alfombra lisa.")
	(estilo clasico)
	(habitacion comedor)
	(material textil)
	(nombre "Ori")
	(precio 275.0)
	(profundidad 80.0))

([Mikeo_Instance_20054] of  Alfombra

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Alfombra colorida.")
	(estilo hippie)
	(habitacion comedor)
	(material textil)
	(nombre "Beat")
	(precio 275.0)
	(profundidad 80.0))

([Mikeo_Instance_20055] of  Mesitas

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Mesa de centro elevable.")
	(estilo pijo)
	(habitacion comedor)
	(longitud_max 110.0)
	(material madera)
	(nombre "Wengue")
	(num_plazas 0)
	(precio 415.0)
	(profundidad 60.0))

([Mikeo_Instance_20056] of  Mesitas

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Mesa de centro original i disenada para ser diferente.")
	(estilo moderno)
	(habitacion comedor)
	(longitud_max 110.0)
	(material madera)
	(nombre "Cirer")
	(num_plazas 0)
	(precio 395.0)
	(profundidad 60.0))

([Mikeo_Instance_20059] of  Mesitas

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Mesa de centro con cristal.")
	(estilo clasico)
	(habitacion comedor)
	(longitud_max 110.0)
	(material madera cristal)
	(nombre "Flus")
	(num_plazas 0)
	(precio 450.0)
	(profundidad 60.0))

([Mikeo_Instance_20060] of  Mesitas

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Mesa de centro de madera.")
	(estilo hippie)
	(habitacion comedor)
	(longitud_max 110.0)
	(material madera)
	(nombre "HapiMad")
	(num_plazas 0)
	(precio 270.0)
	(profundidad 60.0))

([Mikeo_Instance_20061] of  Revistero

	(anchura 39.0)
	(descripcion "Revistero original.")
	(estilo moderno)
	(habitacion comedor)
	(material metal)
	(nombre "RevisNew")
	(precio 20.0)
	(profundidad 34.0))

([Mikeo_Instance_20062] of  Revistero

	(anchura 39.0)
	(descripcion "Revistero elegante.")
	(estilo pijo)
	(habitacion comedor)
	(material madera)
	(nombre "RevisEleg")
	(precio 30.0)
	(profundidad 34.0))

([Mikeo_Instance_20063] of  Revistero

	(anchura 39.0)
	(descripcion "Revistero metalico.")
	(estilo hippie)
	(habitacion comedor)
	(material metal)
	(nombre "RevisHip")
	(precio 14.95)
	(profundidad 34.0))

([Mikeo_Instance_20064] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo con focos alogenos.")
	(estilo pijo)
	(habitacion comedor)
	(material metal)
	(nombre "Soogo")
	(precio 85.0)
	(profundidad 50.0))

([Mikeo_Instance_20065] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo de diseno exclusivo.")
	(estilo moderno)
	(habitacion comedor)
	(material metal)
	(nombre "Shei")
	(precio 65.0)
	(profundidad 50.0))

([Mikeo_Instance_20066] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo tradicional.")
	(estilo clasico)
	(habitacion comedor)
	(material metal)
	(nombre "Huie")
	(precio 60.0)
	(profundidad 50.0))

([Mikeo_Instance_20067] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo de mimbre.")
	(estilo hippie)
	(habitacion comedor)
	(material mimbre)
	(nombre "Aloha")
	(precio 50.0)
	(profundidad 50.0))

([Mikeo_Instance_20068] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared elgante.")
	(estilo pijo)
	(habitacion comedor)
	(material metal)
	(nombre "SoogoWall")
	(precio 85.0)
	(profundidad 16.0))

([Mikeo_Instance_20069] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared de diseno exclusivo.")
	(estilo moderno)
	(habitacion comedor)
	(material metal)
	(nombre "SheiWall")
	(precio 80.0)
	(profundidad 16.0))

([Mikeo_Instance_20070] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared tradicional.")
	(estilo clasico)
	(habitacion comedor)
	(material metal)
	(nombre "HuieWall")
	(precio 70.0)
	(profundidad 16.0))

([Mikeo_Instance_20071] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared de mimbre")
	(estilo hippie)
	(habitacion comedor)
	(material mimbre)
	(nombre "AlohaWall")
	(precio 50.0)
	(profundidad 16.0))

([Mikeo_Instance_20072] of  LamparaPie

	(anchura 30.0)
	(descripcion "Pie de salon alogeno con lector.")
	(estilo pijo)
	(habitacion comedor)
	(material metal)
	(nombre "Wendy")
	(precio 100.0)
	(profundidad 30.0))

([Mikeo_Instance_20073] of  LamparaPie

	(anchura 30.0)
	(descripcion "Pie de salon original con lector.")
	(estilo moderno)
	(habitacion comedor)
	(material metal)
	(nombre "Sei")
	(precio 90.0)
	(profundidad 30.0))

([Mikeo_Instance_20074] of  LamparaPie

	(anchura 30.0)
	(descripcion "Pie de salon de metal.")
	(estilo clasico)
	(habitacion comedor)
	(material metal)
	(nombre "Koi")
	(precio 85.0)
	(profundidad 30.0))

([Mikeo_Instance_20075] of  LamparaPie

	(anchura 30.0)
	(descripcion "Pie de salon de metal y mimbre.")
	(estilo hippie)
	(habitacion comedor)
	(material metal mimbre)
	(nombre "Just")
	(precio 60.0)
	(profundidad 30.0))

([Mikeo_Instance_20076] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual elegante, pequena.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChicInd")
	(precio 220.0)
	(profundidad 90.0))

([Mikeo_Instance_20078] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual de diseno, pequena.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "TrendInd")
	(precio 215.0)
	(profundidad 90.0))

([Mikeo_Instance_20079] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual clasica, pequena.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "ServInd")
	(precio 190.0)
	(profundidad 90.0))

([Mikeo_Instance_20080] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual, pequena.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera)
	(nombre "RastInd")
	(precio 170.0)
	(profundidad 90.0))

([Mikeo_Instance_20081] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio elegante, pequena.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChicMat")
	(precio 350.0)
	(profundidad 164.0))

([Mikeo_Instance_20082] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio de diseno, pequena.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "TrendMat")
	(precio 350.0)
	(profundidad 164.0))

([Mikeo_Instance_20083] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio clasica, pequena.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "ServMat")
	(precio 320.0)
	(profundidad 164.0))

([Mikeo_Instance_20084] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio clasica, pequena.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera)
	(nombre "RastMat")
	(precio 300.0)
	(profundidad 164.0))

([Mikeo_Instance_20085] of  CamaLitera

	(anchura 206.0)
	(descripcion "Litera elegante.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "LitEleg")
	(precio 271.0)
	(profundidad 100.0))

([Mikeo_Instance_20086] of  CamaLitera

	(anchura 206.0)
	(descripcion "Litera de diseno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "LitDis")
	(precio 259.0)
	(profundidad 100.0))

([Mikeo_Instance_20087] of  CamaLitera

	(anchura 206.0)
	(descripcion "Litera clasica.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "LitClas")
	(precio 230.0)
	(profundidad 100.0))

([Mikeo_Instance_20088] of  CamaLitera

	(anchura 206.0)
	(descripcion "Litera inspirada en los anos 60.")
	(estilo hippie)
	(habitacion dormitorio)
	(material metal)
	(nombre "Lit60")
	(precio 180.0)
	(profundidad 100.0))

([Mikeo_Instance_21] of  Espejo

	(anchura 40.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo de pie de diseÃ±o neutro.")
	(diametro 0)
	(estilo clasico hippie)
	(habitacion dormitorio)
	(material vidrio)
	(nombre "Stave")
	(precio 30.5)
	(profundidad 0.0)
	(tipo_espejo completo))

([Mikeo_Instance_22] of  Espejo

	(anchura 74.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo de tocador con un diseÃ±o floral.")
	(diametro 0)
	(estilo hippie)
	(habitacion dormitorio)
	(material vidrio)
	(nombre "Noresund")
	(precio 17.95)
	(profundidad 0.0)
	(tipo_espejo facial))

([Mikeo_Instance_23] of  Revistero

	(anchura 39.0)
	(descripcion "Revistero clasico.")
	(estilo clasico)
	(habitacion comedor)
	(material madera)
	(nombre "RevisClas")
	(precio 23.0)
	(profundidad 34.0))

([Mikeo_Instance_3] of  Reloj

	(anchura 0.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj tradicional de colores claros.")
	(diametro 25)
	(estilo clasico)
	(habitacion cocina)
	(material plastico)
	(nombre "Rush")
	(precio 15.0)
	(profundidad 0.0))

([Mikeo_Instance_30000] of  Bajo

	(anchura 201.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble bajo y  exclusivo de madera. Pensado para aquellos que necesitan mas espacio.")
	(estilo pijo)
	(habitacion comedor)
	(material madera)
	(nombre "MobExc")
	(precio 800.0)
	(profundidad 45.5)
	(tiene_espejo FALSE))

([Mikeo_Instance_30001] of  Bajo

	(anchura 201.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble bajo y  exclusivo de pladur. Pensado para aquellos que necesitan mas espacio.")
	(estilo pijo)
	(habitacion comedor)
	(material pladur)
	(nombre "MobExcPla")
	(precio 800.0)
	(profundidad 45.5)
	(tiene_espejo FALSE))

([Mikeo_Instance_30002] of  Bajo

	(anchura 201.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble bajo y  moderno de madera. Pensado para aquellos que necesitan mas espacio.")
	(estilo moderno)
	(habitacion comedor)
	(material madera)
	(nombre "MobMod")
	(precio 750.0)
	(profundidad 45.5)
	(tiene_espejo FALSE))

([Mikeo_Instance_30003] of  Bajo

	(anchura 201.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble bajo y  moderno de pladur. Pensado para aquellos que necesitan mas espacio.")
	(estilo moderno)
	(habitacion comedor)
	(material pladur)
	(nombre "MobModPla")
	(precio 799.0)
	(profundidad 45.5)
	(tiene_espejo FALSE))

([Mikeo_Instance_30004] of  Bajo

	(anchura 201.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble bajo y  clasico de madera. Pensado para aquellos que necesitan mas espacio.")
	(estilo clasico)
	(habitacion comedor)
	(material madera)
	(nombre "MobClas")
	(precio 650.0)
	(profundidad 45.5)
	(tiene_espejo FALSE))

([Mikeo_Instance_30005] of  Bajo

	(anchura 201.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble bajo de madera. Pensado para aquellos que necesitan mas espacio.")
	(estilo hippie)
	(habitacion comedor)
	(material madera)
	(nombre "MobHip")
	(precio 600.0)
	(profundidad 45.5)
	(tiene_espejo FALSE))

([Mikeo_Instance_30006] of  Completo

	(anchura 140.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio combinacion madera y mimbre. Espejo en las puertas centrales.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera mimbre)
	(nombre "NewyorkMirror")
	(precio 110.0)
	(profundidad 58.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_30007] of  Completo

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio combinacion madera y mimbre")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera mimbre)
	(nombre "Newyork")
	(precio 99.0)
	(profundidad 58.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_30008] of  Completo

	(anchura 140.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a con toque sofisticado.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChildChic")
	(precio 289.0)
	(profundidad 58.0))

([Mikeo_Instance_30009] of  Completo

	(anchura 140.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a de diseno original.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChildFash")
	(precio 270.0)
	(profundidad 58.0))

([Mikeo_Instance_30010] of  Completo

	(anchura 140.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a tradicional.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChildEver")
	(precio 230.0)
	(profundidad 58.0))

([Mikeo_Instance_30011] of  Completo

	(anchura 140.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a de madera y mimbre.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera mimbre)
	(nombre "ChildEver")
	(precio 90.0)
	(profundidad 58.0))

([Mikeo_Instance_30012] of  Mesitas

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Mesa de centro de mimbre.")
	(estilo hippie)
	(habitacion comedor)
	(longitud_max 110.0)
	(material mimbre)
	(nombre "HapiMim")
	(num_plazas 0)
	(precio 200.0)
	(profundidad 60.0))

([Mikeo_Instance_30013] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio elegante, grande.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChicMatGran")
	(precio 400.0)
	(profundidad 209.0))

([Mikeo_Instance_30014] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio de diseno, grande.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "TrendMatGran")
	(precio 400.0)
	(profundidad 209.0))

([Mikeo_Instance_30015] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio clasica, grande.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "ServMatGran")
	(precio 360.0)
	(profundidad 209.0))

([Mikeo_Instance_30016] of  CamaMatrimonio

	(anchura 211.0)
	(descripcion "Cama de matrimonio clasica, grande.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera)
	(nombre "RastMatGran")
	(precio 350.0)
	(profundidad 209.0))

([Mikeo_Instance_30017] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual elegante, grande.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChicIndGran")
	(precio 220.0)
	(profundidad 105.0))

([Mikeo_Instance_30018] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual de diseno, grande.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "TrendIndGran")
	(precio 215.0)
	(profundidad 105.0))

([Mikeo_Instance_30019] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual clasica, grande.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "ServIndGran")
	(precio 190.0)
	(profundidad 105.0))

([Mikeo_Instance_30020] of  CamaIndividual

	(anchura 190.0)
	(descripcion "Cama individual, grande.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera)
	(nombre "RastIndGran")
	(precio 170.0)
	(profundidad 105.0))

([Mikeo_Instance_30021] of  Escritorios

	(anchura 130.0)
	(descripcion "Escritorio de madera elegante, sofisticado y grande.")
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 130.0)
	(material madera)
	(nombre "WriteGuayBig")
	(num_plazas 1)
	(precio 556.0)
	(profundidad 70.0))

([Mikeo_Instance_30022] of  Escritorios

	(anchura 130.0)
	(descripcion "Escritorio de madera moderno y grande.")
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 130.0)
	(material madera)
	(nombre "WriteNewBig")
	(num_plazas 1)
	(precio 500.0)
	(profundidad 70.0))

([Mikeo_Instance_30023] of  Escritorios

	(anchura 130.0)
	(descripcion "Escritorio de madera clasico y grande.")
	(estilo clasico)
	(habitacion dormitorio)
	(longitud_max 130.0)
	(material madera)
	(nombre "WriteClasBig")
	(num_plazas 1)
	(precio 485.0)
	(profundidad 70.0))

([Mikeo_Instance_30024] of  Escritorios

	(anchura 130.0)
	(descripcion "Escritorio de madera grande.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 130.0)
	(material madera)
	(nombre "WriteFlowBig")
	(num_plazas 1)
	(precio 400.0)
	(profundidad 70.0))

([Mikeo_Instance_30025] of  Escritorios

	(anchura 130.0)
	(descripcion "Escritorio de mimbre grande.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 130.0)
	(material mimbre)
	(nombre "WriteFlowMimBig")
	(num_plazas 1)
	(precio 220.0)
	(profundidad 70.0))

([Mikeo_Instance_30026] of  Escritorios

	(anchura 110.0)
	(descripcion "Escritorio de madera elegante, sofisticado. Tamano pequeno.")
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "WriteGuay")
	(num_plazas 1)
	(precio 500.0)
	(profundidad 65.0))

([Mikeo_Instance_30027] of  Escritorios

	(anchura 110.0)
	(descripcion "Escritorio de madera moderno. Tamano pequeno.")
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "WriteNew")
	(num_plazas 1)
	(precio 465.0)
	(profundidad 65.0))

([Mikeo_Instance_30028] of  Escritorios

	(anchura 110.0)
	(descripcion "Escritorio de madera clasico. Tamano pequeno.")
	(estilo clasico)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "WriteClas")
	(num_plazas 1)
	(precio 435.0)
	(profundidad 65.0))

([Mikeo_Instance_30029] of  Escritorios

	(anchura 110.0)
	(descripcion "Escritorio de madera. Tamano pequeno.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "WriteFlow")
	(num_plazas 1)
	(precio 345.0)
	(profundidad 65.0))

([Mikeo_Instance_30030] of  Escritorios

	(anchura 110.0)
	(descripcion "Escritorio de mimbre. Tamano pequeno.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material mimbre)
	(nombre "WriteFlowMim")
	(num_plazas 1)
	(precio 180.0)
	(profundidad 65.0))

([Mikeo_Instance_30031] of  SillaGiratoria

	(anchura 57.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo pijo)
	(habitacion dormitorio)
	(material metal piel)
	(nombre "RollChairChic")
	(precio 400.0)
	(profundidad 55.0))

([Mikeo_Instance_30032] of  SillaGiratoria

	(anchura 47.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo moderno)
	(habitacion dormitorio)
	(material metal tela)
	(nombre "RollChairMod")
	(precio 250.0)
	(profundidad 47.0))

([Mikeo_Instance_30033] of  SillaGiratoria

	(anchura 47.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo clasico)
	(habitacion dormitorio)
	(material metal)
	(nombre "RollChairClas")
	(precio 150.0)
	(profundidad 47.0))

([Mikeo_Instance_30034] of  SillaGiratoria

	(anchura 47.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo hippie)
	(habitacion dormitorio)
	(material plastico)
	(nombre "RollChairHip")
	(precio 70.0)
	(profundidad 47.0))

([Mikeo_Instance_4] of  Reloj

	(anchura 0.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj elegante de madera.")
	(diametro 57)
	(estilo pijo)
	(habitacion cocina)
	(material madera)
	(nombre "Bravur")
	(precio 49.95)
	(profundidad 0.0))

([Mikeo_Instance_40001] of  SillaGiratoria

	(anchura 57.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo pijo)
	(habitacion dormitorio)
	(material metal piel)
	(nombre "RollChairChicCheap")
	(precio 200.0)
	(profundidad 55.0))

([Mikeo_Instance_40002] of  SillaGiratoria

	(anchura 47.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo moderno)
	(habitacion dormitorio)
	(material metal tela)
	(nombre "RollChairModCheap")
	(precio 150.0)
	(profundidad 47.0))

([Mikeo_Instance_40003] of  SillaGiratoria

	(anchura 47.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo clasico)
	(habitacion dormitorio)
	(material metal)
	(nombre "RollChairClasCheap")
	(precio 75.0)
	(profundidad 47.0))

([Mikeo_Instance_40004] of  SillaGiratoria

	(anchura 47.0)
	(descripcion "Silla giratoria de escritorio o despacho.")
	(estilo hippie)
	(habitacion dormitorio)
	(material plastico)
	(nombre "RollChairHip")
	(precio 45.0)
	(profundidad 47.0))

([Mikeo_Instance_40005] of  Tocador

	(anchura 110.0)
	(descripcion "Tocador de madera clasico. TamaÃ±o grande.")
	(espejo_preferido [MAIN::Mikeo_Instance_18])
	(estilo clasico)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "TocClasGran")
	(num_plazas 0)
	(precio 348.0)
	(profundidad 57.0))

([Mikeo_Instance_40006] of  Bajo

	(anchura 201.0)
	(clasificacion_edades adulto)
	(descripcion "Mueble bajo y  de mimbre. Pensado para aquellos que necesitan mas espacio.")
	(estilo hippie)
	(habitacion comedor)
	(material mimbre)
	(nombre "MobHipMim")
	(precio 450.0)
	(profundidad 45.5)
	(tiene_espejo FALSE))

([Mikeo_Instance_40007] of  Reloj

	(anchura 0.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj de cucut de colores claros de comedor.")
	(diametro 25)
	(estilo clasico)
	(habitacion comedor)
	(material plastico)
	(nombre "RushBell")
	(precio 60.0)
	(profundidad 0.0))

([Mikeo_Instance_40008] of  Reloj

	(anchura 0.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj elegante de madera para comedor.")
	(diametro 57)
	(estilo pijo)
	(habitacion comedor)
	(material madera)
	(nombre "BravurBell")
	(precio 60.0)
	(profundidad 0.0))

([Mikeo_Instance_40009] of  Reloj

	(anchura 28.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj de diseno para comedor.")
	(diametro 0)
	(estilo moderno)
	(habitacion comedor)
	(material vidrio)
	(nombre "SokoBell")
	(precio 37.5)
	(profundidad 4.0))

([Mikeo_Instance_40010] of  Reloj

	(anchura 28.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj de colores vivos para comedor.")
	(diametro 0)
	(estilo hippie)
	(habitacion comedor)
	(material plastico)
	(nombre "BravurBell")
	(precio 14.0)
	(profundidad 4.0))

([Mikeo_Instance_5] of  Reloj

	(anchura 28.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj de diseno")
	(diametro 0)
	(estilo moderno)
	(habitacion cocina)
	(material vidrio)
	(nombre "Soko")
	(precio 30.5)
	(profundidad 4.0))

([Mikeo_Instance_50006] of  Tocador

	(anchura 110.0)
	(descripcion "Tocador de madera de diseÃ±o. TamaÃ±o grande.")
	(espejo_preferido [MAIN::Mikeo_Instance_20])
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "TocModGran")
	(num_plazas 0)
	(precio 350.0)
	(profundidad 57.0))

([Mikeo_Instance_50007] of  Tocador

	(anchura 90.0)
	(descripcion "Tocador de madera clasico. TamaÃ±o pequeÃ±o.")
	(espejo_preferido [MAIN::Mikeo_Instance_18])
	(estilo clasico)
	(habitacion dormitorio)
	(longitud_max 90.0)
	(material madera)
	(nombre "TocClasPeq")
	(num_plazas 0)
	(precio 299.0)
	(profundidad 57.0))

([Mikeo_Instance_50009] of  Tocador

	(anchura 90.0)
	(descripcion "Tocador de madera de diseÃ±o. TamaÃ±o pequeÃ±o.")
	(espejo_preferido [MAIN::Mikeo_Instance_20])
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 90.0)
	(material madera)
	(nombre "TocModPeq")
	(num_plazas 0)
	(precio 300.0)
	(profundidad 57.0))

([Mikeo_Instance_50010] of  Tocador

	(anchura 90.0)
	(descripcion "Tocador de madera elegante y con estilo. TamaÃ±o pequeÃ±o.")
	(espejo_preferido [MAIN::Mikeo_Instance_20])
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 90.0)
	(material madera)
	(nombre "TocChicPeq")
	(num_plazas 0)
	(precio 348.0)
	(profundidad 57.0))

([Mikeo_Instance_50012] of  Tocador

	(anchura 110.0)
	(descripcion "Tocador de madera elegante y con estilo. TamaÃ±o grande.")
	(espejo_preferido [MAIN::Mikeo_Instance_20])
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "TocChicGran")
	(num_plazas 0)
	(precio 398.0)
	(profundidad 57.0))

([Mikeo_Instance_50014] of  Tocador

	(anchura 90.0)
	(descripcion "Tocador de madera floral. TamaÃ±o pequeÃ±o.")
	(espejo_preferido [MAIN::Mikeo_Instance_22])
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 90.0)
	(material madera)
	(nombre "TocHipPeq")
	(num_plazas 0)
	(precio 218.0)
	(profundidad 57.0))

([Mikeo_Instance_50015] of  Tocador

	(anchura 110.0)
	(descripcion "Tocador de madera floral. TamaÃ±o grande.")
	(espejo_preferido [MAIN::Mikeo_Instance_22])
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 110.0)
	(material madera)
	(nombre "TocHipGran")
	(num_plazas 0)
	(precio 258.0)
	(profundidad 57.0))

([Mikeo_Instance_50017] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades adulto)
	(descripcion "Mesita de noche con estilo, de adulto y madera.")
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "YorkAdultMad")
	(num_plazas 0)
	(precio 70.0)
	(profundidad 37.0))

([Mikeo_Instance_50018] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades adulto)
	(descripcion "Mesita de noche con estilo, de adulto y de pladur.")
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material pladur)
	(nombre "YorkAdultPla")
	(num_plazas 0)
	(precio 60.0)
	(profundidad 37.0))

([Mikeo_Instance_50019] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades nino)
	(descripcion "Mesita de noche con estilo, de nino y madera.")
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "YorkChildMad")
	(num_plazas 0)
	(precio 65.0)
	(profundidad 37.0))

([Mikeo_Instance_50020] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades nino)
	(descripcion "Mesita de noche con estilo, de nino y de pladur.")
	(estilo pijo)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material pladur)
	(nombre "YorkChildPla")
	(num_plazas 0)
	(precio 55.0)
	(profundidad 37.0))

([Mikeo_Instance_50021] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades adulto)
	(descripcion "Mesita de noche de diseno, de adulto y madera.")
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "TamesisAdultMad")
	(num_plazas 0)
	(precio 68.0)
	(profundidad 37.0))

([Mikeo_Instance_50022] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades adulto)
	(descripcion "Mesita de noche de diseno, de adulto y de pladur.")
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material pladur)
	(nombre "TamesisAdultPla")
	(num_plazas 0)
	(precio 61.0)
	(profundidad 37.0))

([Mikeo_Instance_50023] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades nino)
	(descripcion "Mesita de noche de diseno, de nino y madera.")
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "TamesisChildMad")
	(num_plazas 0)
	(precio 56.0)
	(profundidad 37.0))

([Mikeo_Instance_50024] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades nino)
	(descripcion "Mesita de noche de diseno, de nino y de pladur.")
	(estilo moderno)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material pladur)
	(nombre "TamesisChildPla")
	(num_plazas 0)
	(precio 48.0)
	(profundidad 37.0))

([Mikeo_Instance_50025] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades adulto)
	(descripcion "Mesita de noche clasica, de adulto y madera.")
	(estilo clasico)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "LondonAdultMad")
	(num_plazas 0)
	(precio 65.0)
	(profundidad 37.0))

([Mikeo_Instance_50026] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades nino)
	(descripcion "Mesita de noche clasica, de nino y madera.")
	(estilo clasico)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "LondonChildMad")
	(num_plazas 0)
	(precio 55.0)
	(profundidad 37.0))

([Mikeo_Instance_50027] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades adulto)
	(descripcion "Mesita de noche floral, de adulto y madera.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "FreeAdultMad")
	(num_plazas 0)
	(precio 50.0)
	(profundidad 37.0))

([Mikeo_Instance_50028] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades adulto)
	(descripcion "Mesita de noche floral, de adulto y de mimbre.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material mimbre)
	(nombre "FreeAdultMim")
	(num_plazas 0)
	(precio 35.0)
	(profundidad 37.0))

([Mikeo_Instance_50029] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades nino)
	(descripcion "Mesita de noche floral, de nino y madera.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material madera)
	(nombre "FreeChildMad")
	(num_plazas 0)
	(precio 40.0)
	(profundidad 37.0))

([Mikeo_Instance_50030] of  Mesitas

	(anchura 48.0)
	(clasificacion_edades nino)
	(descripcion "Mesita de noche floral, de nino y de mimbre.")
	(estilo hippie)
	(habitacion dormitorio)
	(longitud_max 48.0)
	(material mimbre)
	(nombre "FreeChildMim")
	(num_plazas 0)
	(precio 22.0)
	(profundidad 37.0))

([Mikeo_Instance_50031] of  Completo

	(anchura 140.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a con toque sofisticado. De pladur.")
	(estilo pijo)
	(habitacion dormitorio)
	(material pladur)
	(nombre "ChildChicPla")
	(precio 289.0)
	(profundidad 58.0))

([Mikeo_Instance_50032] of  Completo

	(anchura 110.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a con toque sofisticado. Tamano pequeno.")
	(estilo pijo)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChildChicPeq")
	(precio 259.0)
	(profundidad 58.0))

([Mikeo_Instance_50033] of  Completo

	(anchura 110.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a con toque sofisticado. De pladur y pequeno.")
	(estilo pijo)
	(habitacion dormitorio)
	(material pladur)
	(nombre "ChildChicPlaPeq")
	(precio 209.0)
	(profundidad 58.0))

([Mikeo_Instance_50034] of  Completo

	(anchura 140.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a de diseno original. De pladur.")
	(estilo moderno)
	(habitacion dormitorio)
	(material pladur)
	(nombre "ChildFashPla")
	(precio 250.0)
	(profundidad 58.0))

([Mikeo_Instance_50035] of  Completo

	(anchura 110.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a de diseno original. Tamano pequeno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChildFashPeq")
	(precio 220.0)
	(profundidad 58.0))

([Mikeo_Instance_50036] of  Completo

	(anchura 110.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a de diseno original. De pladur y pequeno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material pladur)
	(nombre "ChildFashPlaPeq")
	(precio 200.0)
	(profundidad 58.0))

([Mikeo_Instance_50037] of  Completo

	(anchura 110.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a tradicional. Tamano pequeno.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "ChildEverPeq")
	(precio 150.0)
	(profundidad 58.0))

([Mikeo_Instance_50038] of  Completo

	(anchura 110.0)
	(clasificacion_edades nino)
	(descripcion "Aramario de dormitorio para nino/a de madera y mimbre. Tamano pequeno.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera mimbre)
	(nombre "ChildEverPeq")
	(precio 60.0)
	(profundidad 58.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50039] of  Completo

	(anchura 140.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto sofisticado con espejo en las puertas centrales. Material pladur.")
	(estilo pijo)
	(habitacion dormitorio)
	(material pladur)
	(nombre "SofisticMirrorPla")
	(precio 315.0)
	(profundidad 58.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50040] of  Completo

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto sofisticado. Material pladur.")
	(estilo pijo)
	(habitacion dormitorio)
	(material pladur)
	(nombre "SofisticPla")
	(precio 250.0)
	(profundidad 58.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50041] of  Completo

	(anchura 140.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto de diseno con espejo en las puertas centrales. Material pladur.")
	(estilo moderno)
	(habitacion dormitorio)
	(material pladur)
	(nombre "TomyMirrorPla")
	(precio 300.0)
	(profundidad 58.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50042] of  Completo

	(anchura 110.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de dormitorio adulto de diseno. Material pladur.")
	(estilo moderno)
	(habitacion dormitorio)
	(material pladur)
	(nombre "TomyPla")
	(precio 249.0)
	(profundidad 58.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50043] of  LamparaMesita

	(clasificacion_edades adulto)
	(descripcion "Lampara de mesita de noche de adulto y con estilo.")
	(estilo pijo)
	(habitacion dormitorio)
	(material porcelana)
	(nombre "RaiAdult")
	(precio 69.0))

([Mikeo_Instance_50044] of  LamparaMesita

	(clasificacion_edades adulto)
	(descripcion "Lampara de mesita de noche de adulto de diseno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material porcelana)
	(nombre "FelyAdult")
	(precio 61.0))

([Mikeo_Instance_50045] of  LamparaMesita

	(clasificacion_edades adulto)
	(descripcion "Lampara de mesita de noche de adulto clasica.")
	(estilo clasico)
	(habitacion dormitorio)
	(material ceramica)
	(nombre "HoupAdult")
	(precio 55.0))

([Mikeo_Instance_50046] of  LamparaMesita

	(clasificacion_edades adulto)
	(descripcion "Lampara de mesita de noche de adulto floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material metal)
	(nombre "HipAdult")
	(precio 35.0))

([Mikeo_Instance_50047] of  LamparaMesita

	(clasificacion_edades nino)
	(descripcion "Lampara de mesita de noche de nino y con estilo.")
	(estilo pijo)
	(habitacion dormitorio)
	(material porcelana)
	(nombre "RaiChild")
	(precio 59.0))

([Mikeo_Instance_50048] of  LamparaMesita

	(clasificacion_edades nino)
	(descripcion "Lampara de mesita de noche de nino de diseno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material porcelana)
	(nombre "FelyChild")
	(precio 51.0))

([Mikeo_Instance_50049] of  LamparaMesita

	(clasificacion_edades nino)
	(descripcion "Lampara de mesita de noche de nino clasica.")
	(estilo clasico)
	(habitacion dormitorio)
	(material ceramica)
	(nombre "HoupChild")
	(precio 45.0))

([Mikeo_Instance_50050] of  LamparaMesita

	(clasificacion_edades nino)
	(descripcion "Lampara de mesita de noche de nino floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material metal)
	(nombre "HipChild")
	(precio 25.0))

([Mikeo_Instance_50052] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared para dormitorio elegante y de adulto.")
	(estilo pijo)
	(habitacion dormitorio)
	(material metal)
	(nombre "JavaWall")
	(precio 52.0))

([Mikeo_Instance_50053] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared para dormitorio de diseno y de adulto.")
	(estilo moderno)
	(habitacion dormitorio)
	(material metal)
	(nombre "PolishWall")
	(precio 49.0))

([Mikeo_Instance_50054] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared para dormitorio clasica y de adulto.")
	(estilo clasico)
	(habitacion dormitorio)
	(material metal)
	(nombre "FrenchWall")
	(precio 42.0))

([Mikeo_Instance_50055] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared para dormitorio floral y de adulto.")
	(estilo hippie)
	(habitacion dormitorio)
	(material metal)
	(nombre "ItalianWall")
	(precio 37.0))

([Mikeo_Instance_50056] of  LamparaParet

	(clasificacion_edades nino)
	(descripcion "Lamapara de pared para dormitorio elegante y de nino.")
	(estilo pijo)
	(habitacion dormitorio)
	(material metal)
	(nombre "JavaWallChild")
	(precio 42.0))

([Mikeo_Instance_50057] of  LamparaParet

	(clasificacion_edades nino)
	(descripcion "Lamapara de pared para dormitorio de diseno y de nino.")
	(estilo moderno)
	(habitacion dormitorio)
	(material metal)
	(nombre "PolishWallChild")
	(precio 39.0))

([Mikeo_Instance_50058] of  LamparaParet

	(clasificacion_edades nino)
	(descripcion "Lamapara de pared para dormitorio clasica y de nino.")
	(estilo clasico)
	(habitacion dormitorio)
	(material metal)
	(nombre "FrenchWallChild")
	(precio 32.0))

([Mikeo_Instance_50059] of  LamparaParet

	(clasificacion_edades nino)
	(descripcion "Lamapara de pared para dormitorio floral y de nino.")
	(estilo hippie)
	(habitacion dormitorio)
	(material metal)
	(nombre "ItalianWallChild")
	(precio 27.0))

([Mikeo_Instance_50060] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de dormitorio de techo elegante y para adulto.")
	(estilo pijo)
	(habitacion dormitorio)
	(material metal)
	(nombre "Java")
	(precio 53.0))

([Mikeo_Instance_50061] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de dormitorio de techo de diseno y para adulto.")
	(estilo moderno)
	(habitacion dormitorio)
	(material metal)
	(nombre "Polish")
	(precio 50.0))

([Mikeo_Instance_50062] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de dormitorio de techo clasica y para adulto.")
	(estilo clasico)
	(habitacion dormitorio)
	(material metal)
	(nombre "French")
	(precio 47.0))

([Mikeo_Instance_50063] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de dormitorio de techo floral y para adulto.")
	(estilo hippie)
	(habitacion dormitorio)
	(material metal)
	(nombre "Italian")
	(precio 39.0))

([Mikeo_Instance_50064] of  LamparaTecho

	(clasificacion_edades nino)
	(descripcion "Lampara de dormitorio de techo elegante y para nino.")
	(estilo pijo)
	(habitacion dormitorio)
	(material metal)
	(nombre "JavaChild")
	(precio 43.0))

([Mikeo_Instance_50065] of  LamparaTecho

	(clasificacion_edades nino)
	(descripcion "Lampara de dormitorio de techo de diseno y para nino.")
	(estilo moderno)
	(habitacion dormitorio)
	(material metal)
	(nombre "PolishChild")
	(precio 40.0))

([Mikeo_Instance_50066] of  LamparaTecho

	(clasificacion_edades nino)
	(descripcion "Lampara de dormitorio de techo clasica y para nino.")
	(estilo clasico)
	(habitacion dormitorio)
	(material metal)
	(nombre "FrenchChild")
	(precio 37.0))

([Mikeo_Instance_50067] of  LamparaTecho

	(clasificacion_edades nino)
	(descripcion "Lampara de dormitorio de techo floral y para nino.")
	(estilo hippie)
	(habitacion dormitorio)
	(material metal)
	(nombre "ItalianChild")
	(precio 29.0))

([Mikeo_Instance_50068] of  Alfombra

	(clasificacion_edades adulto)
	(descripcion "Alfombra de dormitorio elegante.")
	(estilo pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "Cat")
	(precio 55.0))

([Mikeo_Instance_50069] of  Alfombra

	(clasificacion_edades adulto)
	(descripcion "Alfombra de dormitorio de diseno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material textil)
	(nombre "Barcel")
	(precio 51.0))

([Mikeo_Instance_50070] of  Alfombra

	(clasificacion_edades adulto)
	(descripcion "Alfombra de dormitorio clasica.")
	(estilo clasico)
	(habitacion dormitorio)
	(material textil)
	(nombre "Tarraco")
	(precio 45.0))

([Mikeo_Instance_50071] of  Alfombra

	(clasificacion_edades adulto)
	(descripcion "Alfombra de dormitorio floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material textil)
	(nombre "Gironi")
	(precio 39.0))

([Mikeo_Instance_50072] of  Alfombra

	(clasificacion_edades nino)
	(descripcion "Alfombra de dormitorio para nino de Disney.")
	(estilo pijo clasico moderno hippie)
	(habitacion dormitorio)
	(material textil)
	(nombre "Diseny")
	(precio 50.0))

([Mikeo_Instance_50073] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama doble. Estilo elegante.")
	(estilo pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "Lleida")
	(precio 59.0)
	(tipo_cama doble))

([Mikeo_Instance_50074] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama individual. Estilo elegante.")
	(estilo pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "LleidaInd")
	(precio 49.0)
	(tipo_cama individual))

([Mikeo_Instance_50075] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama doble. De diseno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material textil)
	(nombre "Zaragoza")
	(precio 59.0)
	(tipo_cama doble))

([Mikeo_Instance_50076] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama individual. De diseno.")
	(estilo moderno)
	(habitacion dormitorio)
	(material textil)
	(nombre "ZaragozaInd")
	(precio 49.0)
	(tipo_cama individual))

([Mikeo_Instance_50077] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama doble clasico.")
	(estilo clasico)
	(habitacion dormitorio)
	(material textil)
	(nombre "Huesca")
	(precio 59.0)
	(tipo_cama doble))

([Mikeo_Instance_50078] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama individual clasico.")
	(estilo clasico)
	(habitacion dormitorio)
	(material textil)
	(nombre "HuescaInd")
	(precio 49.0)
	(tipo_cama individual))

([Mikeo_Instance_50079] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama doble floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material textil)
	(nombre "Cuenca")
	(precio 59.0)
	(tipo_cama doble))

([Mikeo_Instance_50080] of  Edredon

	(clasificacion_edades adulto)
	(descripcion "Edredon de adulto cama individual floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material textil)
	(nombre "CuencaInd")
	(precio 49.0)
	(tipo_cama individual))

([Mikeo_Instance_50081] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama doble elegante de hilos tintos.")
	(estilo pijo)
	(habitacion dormitorio)
	(material tela)
	(nombre "Monaco")
	(precio 42.0)
	(tipo_cama doble))

([Mikeo_Instance_50082] of  Edredon

	(clasificacion_edades nino)
	(descripcion "Edredon de cama indivual de Disney.")
	(estilo clasico moderno hippie pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "EdrDisney")
	(precio 45.0)
	(tipo_cama individual))

([Mikeo_Instance_50083] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama doble bordado de estilo clasico.")
	(estilo clasico)
	(habitacion dormitorio)
	(material tela)
	(nombre "Marisa")
	(precio 79.0)
	(tipo_cama doble))

([Mikeo_Instance_50084] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama doble con original estampado.")
	(estilo moderno)
	(habitacion dormitorio)
	(material tela)
	(nombre "Tissu")
	(precio 43.0)
	(tipo_cama doble))

([Mikeo_Instance_50085] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama doble con motivos florales.")
	(estilo hippie)
	(habitacion dormitorio)
	(material tela)
	(nombre "Dalia")
	(precio 49.0)
	(tipo_cama doble))

([Mikeo_Instance_50086] of  Sabana

	(clasificacion_edades nino)
	(descripcion "Sabanas para cama individual y de nino")
	(estilo clasico moderno hippie pijo)
	(habitacion dormitorio)
	(material tela)
	(nombre "SabanasDisney")
	(precio 50.0)
	(tipo_cama individual))

([Mikeo_Instance_50087] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama individual elegante de hilos tintos.")
	(estilo pijo)
	(habitacion dormitorio)
	(material tela)
	(nombre "MonacoInd")
	(precio 42.0)
	(tipo_cama individual))

([Mikeo_Instance_50088] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama individual bordado de estilo clasico.")
	(estilo clasico)
	(habitacion dormitorio)
	(material tela)
	(nombre "MarisaInd")
	(precio 79.0)
	(tipo_cama individual))

([Mikeo_Instance_50089] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama individual con original estampado.")
	(estilo moderno)
	(habitacion dormitorio)
	(material tela)
	(nombre "TissuInd")
	(precio 43.0)
	(tipo_cama individual))

([Mikeo_Instance_50090] of  Sabana

	(clasificacion_edades adulto)
	(descripcion "Sabana de cama individual con motivos florales.")
	(estilo hippie)
	(habitacion dormitorio)
	(material tela)
	(nombre "DaliaInd")
	(precio 49.0)
	(tipo_cama individual))

([Mikeo_Instance_50091] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama doble con ribete de raso")
	(estilo pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "Patch")
	(precio 90.0)
	(tipo_cama doble))

([Mikeo_Instance_50092] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama doble con original estampado.")
	(estilo moderno)
	(habitacion dormitorio)
	(material textil)
	(nombre "PatchPiel")
	(precio 90.0)
	(tipo_cama doble))

([Mikeo_Instance_50093] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama doble en algodon. Clasica.")
	(estilo clasico)
	(habitacion dormitorio)
	(material textil)
	(nombre "Malta")
	(precio 70.0)
	(tipo_cama doble))

([Mikeo_Instance_50094] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama doble estampada floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material textil)
	(nombre "Luxor")
	(precio 60.0)
	(tipo_cama doble))

([Mikeo_Instance_50095] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama individual con ribete de raso")
	(estilo pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "PatchInd")
	(precio 90.0)
	(tipo_cama individual))

([Mikeo_Instance_50096] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama individual con original estampado.")
	(estilo moderno)
	(habitacion dormitorio)
	(material textil)
	(nombre "PatchPielInd")
	(precio 90.0)
	(tipo_cama individual))

([Mikeo_Instance_50097] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama individual en algodon. Clasica.")
	(estilo clasico)
	(habitacion dormitorio)
	(material textil)
	(nombre "MaltaInd")
	(precio 70.0)
	(tipo_cama individual))

([Mikeo_Instance_50098] of  Manta

	(clasificacion_edades adulto)
	(descripcion "Manta de cama individual estampada floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material textil)
	(nombre "LuxorInd")
	(precio 60.0)
	(tipo_cama individual))

([Mikeo_Instance_50099] of  Manta

	(clasificacion_edades nino)
	(descripcion "Manta de cama individual de Disney")
	(estilo clasico moderno hippie pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "MantaDisney")
	(precio 60.0)
	(tipo_cama individual))

([Mikeo_Instance_50100] of  Cojin

	(clasificacion_edades adulto)
	(descripcion "Cojin de cama doble de espuma.")
	(estilo clasico moderno hippie pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "Bohemian")
	(precio 50.0)
	(tipo_cama doble)
	(tipo_relleno espuma))

([Mikeo_Instance_50101] of  Cojin

	(clasificacion_edades adulto)
	(descripcion "Cojin de cama individual de espuma.")
	(estilo clasico moderno hippie pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "BohemianInd")
	(precio 40.0)
	(tipo_cama individual)
	(tipo_relleno espuma))

([Mikeo_Instance_50102] of  Cojin

	(clasificacion_edades adulto)
	(descripcion "Cojin de cama doble de plumas.")
	(estilo pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "Mashi")
	(precio 90.0)
	(tipo_cama doble)
	(tipo_relleno pluma))

([Mikeo_Instance_50103] of  Cojin

	(clasificacion_edades adulto)
	(descripcion "Cojin de cama individual de plumas.")
	(estilo pijo)
	(habitacion dormitorio)
	(material textil)
	(nombre "MashiInd")
	(precio 82.0)
	(tipo_cama individual)
	(tipo_relleno pluma))

([Mikeo_Instance_50104] of  Completo

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de estilo elegante. De madera.")
	(estilo pijo)
	(habitacion cocina)
	(material madera)
	(nombre "Integrity")
	(precio 700.0)
	(profundidad 60.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50105] of  Completo

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de estilo elegante. De pladur.")
	(estilo pijo)
	(habitacion cocina)
	(material pladur)
	(nombre "IntegrityPla")
	(precio 669.0)
	(profundidad 60.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50106] of  Completo

	(anchura 170.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de estilo elegante. De madera, pequena.")
	(estilo pijo)
	(habitacion cocina)
	(material madera)
	(nombre "IntegritySmall")
	(precio 600.0)
	(profundidad 55.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50107] of  Completo

	(anchura 170.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de estilo elegante. De pladur pequena")
	(estilo pijo)
	(habitacion cocina)
	(material pladur)
	(nombre "IntegrityPlaSmall")
	(precio 669.0)
	(profundidad 55.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50108] of  Completo

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de diseno. De madera.")
	(estilo moderno)
	(habitacion cocina)
	(material madera)
	(nombre "Flexifor")
	(precio 690.0)
	(profundidad 60.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50109] of  Completo

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de diseno. De pladur.")
	(estilo moderno)
	(habitacion cocina)
	(material pladur)
	(nombre "FlexiforPla")
	(precio 650.0)
	(profundidad 60.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50110] of  Completo

	(anchura 170.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de diseno. De madera pequena.")
	(estilo moderno)
	(habitacion cocina)
	(material madera)
	(nombre "FlexiforSmall")
	(precio 600.0)
	(profundidad 55.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50111] of  Completo

	(anchura 170.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina de diseno. De pladur pequena.")
	(estilo moderno)
	(habitacion cocina)
	(material pladur)
	(nombre "FlexiforPlaSmall")
	(precio 590.0)
	(profundidad 55.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50112] of  Completo

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina clasica. De madera.")
	(estilo clasico)
	(habitacion cocina)
	(material madera)
	(nombre "Dora")
	(precio 590.0)
	(profundidad 60.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50113] of  Completo

	(anchura 170.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina clasica. De madera pequena.")
	(estilo clasico)
	(habitacion cocina)
	(material madera)
	(nombre "DoraSmall")
	(precio 550.0)
	(profundidad 55.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50114] of  Completo

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina. De madera.")
	(estilo hippie)
	(habitacion cocina)
	(material madera)
	(nombre "Aladin")
	(precio 590.0)
	(profundidad 60.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50115] of  Completo

	(anchura 170.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina. De madera pequena.")
	(estilo hippie)
	(habitacion cocina)
	(material madera)
	(nombre "AladinSmall")
	(precio 590.0)
	(profundidad 55.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50116] of  Completo

	(anchura 200.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina. De mimbre.")
	(estilo hippie)
	(habitacion cocina)
	(material mimbre)
	(nombre "AladinMim")
	(precio 500.0)
	(profundidad 60.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50117] of  Completo

	(anchura 170.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de cocina. De mimbre pequena.")
	(estilo hippie)
	(habitacion cocina)
	(material mimbre)
	(nombre "AladinMimSmall")
	(precio 450.0)
	(profundidad 55.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50118] of  MesaPlegable

	(anchura 80.0)
	(descripcion "Mesa plegable de cocina para 2 personas, elegante.")
	(estilo pijo)
	(habitacion cocina)
	(longitud_max 80.0)
	(material madera)
	(nombre "LaurinTwo")
	(num_plazas 2)
	(precio 100.0)
	(profundidad 60.0))

([Mikeo_Instance_50119] of  MesaPlegable

	(anchura 150.0)
	(descripcion "Mesa plegable de cocina para 4 personas, elegante.")
	(estilo pijo)
	(habitacion cocina)
	(longitud_max 150.0)
	(material madera)
	(nombre "LaurinFour")
	(num_plazas 4)
	(precio 120.0)
	(profundidad 60.0))

([Mikeo_Instance_50121] of  MesaPlegable

	(anchura 80.0)
	(descripcion "Mesa plegable de cocina para 2 personas. De diseno.")
	(estilo moderno)
	(habitacion cocina)
	(longitud_max 80.0)
	(material madera)
	(nombre "SoniumTwo")
	(num_plazas 2)
	(precio 90.0)
	(profundidad 60.0))

([Mikeo_Instance_50122] of  MesaPlegable

	(anchura 150.0)
	(descripcion "Mesa plegable de cocina para 4 personas. De diseno.")
	(estilo moderno)
	(habitacion cocina)
	(longitud_max 150.0)
	(material madera)
	(nombre "SoniumFour")
	(num_plazas 4)
	(precio 100.0)
	(profundidad 60.0))

([Mikeo_Instance_50123] of  MesaPlegable

	(anchura 80.0)
	(descripcion "Mesa plegable de cocina para 2 personas. Clasica.")
	(estilo clasico)
	(habitacion cocina)
	(longitud_max 80.0)
	(material madera)
	(nombre "AnitaTwo")
	(num_plazas 2)
	(precio 80.0)
	(profundidad 60.0))

([Mikeo_Instance_50124] of  MesaPlegable

	(anchura 150.0)
	(descripcion "Mesa plegable de cocina para 4 personas. Clasica.")
	(estilo clasico)
	(habitacion cocina)
	(longitud_max 150.0)
	(material madera)
	(nombre "AnitaFour")
	(num_plazas 4)
	(precio 90.0)
	(profundidad 60.0))

([Mikeo_Instance_50125] of  MesaPlegable

	(anchura 80.0)
	(descripcion "Mesa plegable de cocina para 2 personas.")
	(estilo hippie)
	(habitacion cocina)
	(longitud_max 80.0)
	(material madera)
	(nombre "HipialTwo")
	(num_plazas 2)
	(precio 60.0)
	(profundidad 60.0))

([Mikeo_Instance_50126] of  MesaPlegable

	(anchura 150.0)
	(descripcion "Mesa plegable de cocina para 4 personas.")
	(estilo hippie)
	(habitacion cocina)
	(longitud_max 150.0)
	(material madera)
	(nombre "HipialFour")
	(num_plazas 4)
	(precio 70.0)
	(profundidad 60.0))

([Mikeo_Instance_50134] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de cocina, elegante.")
	(estilo pijo)
	(habitacion cocina)
	(material madera)
	(nombre "Javiu")
	(precio 35.0)
	(profundidad 47.0))

([Mikeo_Instance_50135] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de cocina, de diseno.")
	(estilo moderno)
	(habitacion cocina)
	(material madera)
	(nombre "Tami")
	(precio 31.0)
	(profundidad 47.0))

([Mikeo_Instance_50136] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de cocina, clasica.")
	(estilo clasico)
	(habitacion cocina)
	(material madera)
	(nombre "Mercedes")
	(precio 25.0)
	(profundidad 47.0))

([Mikeo_Instance_50137] of  SillaPlegable

	(anchura 47.0)
	(descripcion "Silla plegable de cocina.")
	(estilo hippie)
	(habitacion cocina)
	(material madera)
	(nombre "Benz")
	(precio 20.0)
	(profundidad 47.0))

([Mikeo_Instance_50138] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de cocina elgante para 2, extensible a 4.")
	(estilo pijo)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 119.0)
	(material madera)
	(nombre "LuciaTwo")
	(num_plazas 2)
	(precio 220.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50143]))

([Mikeo_Instance_50139] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de cocina elgante para 4 extensible a 6")
	(estilo pijo)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 189.0)
	(material madera)
	(nombre "LuciaFour")
	(num_plazas 4)
	(precio 265.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50143]))

([Mikeo_Instance_50140] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de cocina elgante para 6 extensible a 8.")
	(estilo pijo)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 235.0)
	(material madera)
	(nombre "LuciaSix")
	(num_plazas 6)
	(precio 299.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50143]))

([Mikeo_Instance_50141] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de cocina de diseno para 2, extensible a 4.")
	(estilo moderno)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 119.0)
	(material madera)
	(nombre "WolkTwo")
	(num_plazas 2)
	(precio 200.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50144]))

([Mikeo_Instance_50142] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de cocina de diseno para 4 extensible a 6")
	(estilo moderno)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 189.0)
	(material madera)
	(nombre "WolkFour")
	(num_plazas 4)
	(precio 235.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50144]))

([Mikeo_Instance_50143] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla de cocina elegante a conjunto con las mesas modelo Lucia")
	(estilo pijo)
	(habitacion cocina)
	(material madera)
	(nombre "LuciaChair")
	(precio 70.0)
	(profundidad 58.0))

([Mikeo_Instance_50144] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla de cocina de diseno a conjunto con las mesas modelo Wolk")
	(estilo moderno)
	(habitacion cocina)
	(material madera)
	(nombre "WolkChair")
	(precio 68.0)
	(profundidad 58.0))

([Mikeo_Instance_50145] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de cocina de diseno para 6 extensible a 8.")
	(estilo moderno)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 235.0)
	(material madera)
	(nombre "WolkSix")
	(num_plazas 6)
	(precio 299.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50144]))

([Mikeo_Instance_50146] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de cocina clasica para 2, extensible a 4.")
	(estilo clasico)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 119.0)
	(material madera)
	(nombre "IkaoTwo")
	(num_plazas 2)
	(precio 200.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50147]))

([Mikeo_Instance_50147] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla de cocina clasica a conjunto con las mesas modelo Ikao")
	(estilo clasico)
	(habitacion cocina)
	(material madera)
	(nombre "IkaoChair")
	(precio 60.0)
	(profundidad 58.0))

([Mikeo_Instance_50148] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de cocina clasica para 4 extensible a 6")
	(estilo clasico)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 189.0)
	(material madera)
	(nombre "IkaoFour")
	(num_plazas 4)
	(precio 235.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50147]))

([Mikeo_Instance_50149] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de cocina clasica para 6 extensible a 8.")
	(estilo clasico)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 235.0)
	(material madera)
	(nombre "IkaoSix")
	(num_plazas 6)
	(precio 299.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50147]))

([Mikeo_Instance_50150] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de cocina para 2, extensible a 4.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 119.0)
	(material madera)
	(nombre "TurkiTwo")
	(num_plazas 2)
	(precio 150.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50151]))

([Mikeo_Instance_50151] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla de cocina a conjunto con las mesas modelo Turki")
	(estilo hippie)
	(habitacion cocina)
	(material madera)
	(nombre "TurkiChair")
	(precio 45.0)
	(profundidad 58.0))

([Mikeo_Instance_50152] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de cocina para 4 extensible a 6")
	(estilo hippie)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 189.0)
	(material madera)
	(nombre "TurkiFour")
	(num_plazas 4)
	(precio 185.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50151]))

([Mikeo_Instance_50153] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de cocina para 6 extensible a 8.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 235.0)
	(material madera)
	(nombre "TurkiSix")
	(num_plazas 6)
	(precio 220.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50151]))

([Mikeo_Instance_50154] of  MesaFija

	(anchura 59.0)
	(descripcion "Mesa de cocina para 2, extensible a 4. De mimbre.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 119.0)
	(material mimbre)
	(nombre "UkiTwo")
	(num_plazas 2)
	(precio 100.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50155]))

([Mikeo_Instance_50155] of  SillaFija

	(anchura 51.0)
	(descripcion "Silla de cocina a conjunto con las mesas modelo Uki")
	(estilo hippie)
	(habitacion cocina)
	(material mimbre)
	(nombre "UkiChair")
	(precio 30.0)
	(profundidad 58.0))

([Mikeo_Instance_50156] of  MesaFija

	(anchura 137.0)
	(descripcion "Mesa de cocina para 4 extensible a 6. De mimbre.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 189.0)
	(material mimbre)
	(nombre "UkiFour")
	(num_plazas 4)
	(precio 140.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50155]))

([Mikeo_Instance_50157] of  MesaFija

	(anchura 180.0)
	(descripcion "Mesa de cocina para 6 extensible a 8. De mimbre.")
	(estilo hippie)
	(extensible TRUE)
	(habitacion cocina)
	(longitud_max 235.0)
	(material mimbre)
	(nombre "UkiSix")
	(num_plazas 6)
	(precio 180.0)
	(profundidad 59.0)
	(silla_preferida [MAIN::Mikeo_Instance_50155]))

([Mikeo_Instance_50158] of  SillaFija

	(anchura 55.0)
	(descripcion "Silla de cocina elegante.")
	(estilo pijo)
	(habitacion cocina)
	(material madera)
	(nombre "Lumia")
	(precio 64.0)
	(profundidad 55.0))

([Mikeo_Instance_50159] of  SillaFija

	(anchura 55.0)
	(descripcion "Silla de cocina de diseno.")
	(estilo moderno)
	(habitacion cocina)
	(material madera)
	(nombre "Wolky")
	(precio 60.0)
	(profundidad 55.0))

([Mikeo_Instance_50160] of  SillaFija

	(anchura 55.0)
	(descripcion "Silla de cocina clasica.")
	(estilo clasico)
	(habitacion cocina)
	(material madera)
	(nombre "Mikado")
	(precio 52.0)
	(profundidad 55.0))

([Mikeo_Instance_50161] of  SillaFija

	(anchura 55.0)
	(descripcion "Silla de cocina.")
	(estilo hippie)
	(habitacion cocina)
	(material madera)
	(nombre "Muki")
	(precio 38.0)
	(profundidad 55.0))

([Mikeo_Instance_50162] of  SillaFija

	(anchura 55.0)
	(descripcion "Silla de cocina de mimbre.")
	(estilo hippie)
	(habitacion cocina)
	(material mimbre)
	(nombre "Usilu")
	(precio 23.0)
	(profundidad 55.0))

([Mikeo_Instance_50163] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared elgante de cocina.")
	(estilo pijo)
	(habitacion cocina)
	(material metal)
	(nombre "MisaeWall")
	(precio 80.0)
	(profundidad 16.0))

([Mikeo_Instance_50164] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared de diseno exclusivo de cocina.")
	(estilo moderno)
	(habitacion cocina)
	(material metal)
	(nombre "SheniaWall")
	(precio 70.0)
	(profundidad 16.0))

([Mikeo_Instance_50165] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared tradicional de cocina.")
	(estilo clasico)
	(habitacion cocina)
	(material metal)
	(nombre "OpiWall")
	(precio 60.0)
	(profundidad 16.0))

([Mikeo_Instance_50166] of  LamparaParet

	(anchura 25.0)
	(clasificacion_edades adulto)
	(descripcion "Lamapara de pared floral, para cocina.")
	(estilo hippie)
	(habitacion cocina)
	(material metal)
	(nombre "TulipaWall")
	(precio 45.0)
	(profundidad 16.0))

([Mikeo_Instance_50167] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo con focos alogenos para cocina.")
	(estilo pijo)
	(habitacion cocina)
	(material metal)
	(nombre "Misae")
	(precio 80.0)
	(profundidad 50.0))

([Mikeo_Instance_50168] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo de diseno exclusivo, para cocina.")
	(estilo moderno)
	(habitacion cocina)
	(material metal)
	(nombre "Shenia")
	(precio 60.0)
	(profundidad 50.0))

([Mikeo_Instance_50169] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo tradicional, para cocina")
	(estilo clasico)
	(habitacion cocina)
	(material metal)
	(nombre "Opi")
	(precio 52.0)
	(profundidad 50.0))

([Mikeo_Instance_50170] of  LamparaTecho

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Lampara de techo para cocina.")
	(estilo hippie)
	(habitacion cocina)
	(material metal)
	(nombre "Tulipa")
	(precio 45.0)
	(profundidad 50.0))

([Mikeo_Instance_50171] of  FundaMesa

	(anchura 80.0)
	(descripcion "Mantel de plastico para mesa de hasta 4 comensales.")
	(estilo moderno)
	(habitacion cocina)
	(material plastico)
	(nombre "AndreaFour")
	(num_plazas 4)
	(precio 20.0)
	(profundidad 120.0))

([Mikeo_Instance_50172] of  FundaMesa

	(anchura 80.0)
	(descripcion "Mantel de plastico para mesa de hasta 4 comensales.")
	(estilo clasico)
	(habitacion cocina)
	(material plastico)
	(nombre "IndaFour")
	(num_plazas 4)
	(precio 19.9)
	(profundidad 120.0))

([Mikeo_Instance_50173] of  FundaMesa

	(anchura 80.0)
	(descripcion "Mantel de plastico para mesa de hasta 4 comensales.")
	(estilo hippie)
	(habitacion cocina)
	(material plastico)
	(nombre "YesFour")
	(num_plazas 4)
	(precio 15.95)
	(profundidad 120.0))

([Mikeo_Instance_50174] of  FundaMesa

	(anchura 85.0)
	(descripcion "Mantel de plastico para mesa de hasta 6 comensales.")
	(estilo moderno)
	(habitacion cocina)
	(material plastico)
	(nombre "AndreaSix")
	(num_plazas 6)
	(precio 20.0)
	(profundidad 200.0))

([Mikeo_Instance_50175] of  FundaMesa

	(anchura 85.0)
	(descripcion "Mantel de plastico para mesa de hasta 6 comensales.")
	(estilo clasico)
	(habitacion cocina)
	(material plastico)
	(nombre "IndaSix")
	(num_plazas 6)
	(precio 19.9)
	(profundidad 200.0))

([Mikeo_Instance_50176] of  FundaMesa

	(anchura 85.0)
	(descripcion "Mantel de plastico para mesa de hasta 6 comensales.")
	(estilo hippie)
	(habitacion cocina)
	(material plastico)
	(nombre "YesSix")
	(num_plazas 6)
	(precio 15.95)
	(profundidad 200.0))

([Mikeo_Instance_50177] of  FundaMesa

	(anchura 90.0)
	(descripcion "Mantel de plastico para mesa de hasta 8 comensales.")
	(estilo moderno)
	(habitacion cocina)
	(material plastico)
	(nombre "AndreaEight")
	(num_plazas 8)
	(precio 20.0)
	(profundidad 250.0))

([Mikeo_Instance_50178] of  FundaMesa

	(anchura 90.0)
	(descripcion "Mantel de plastico para mesa de hasta 8 comensales.")
	(estilo clasico)
	(habitacion cocina)
	(material plastico)
	(nombre "IndaEight")
	(num_plazas 8)
	(precio 19.9)
	(profundidad 250.0))

([Mikeo_Instance_50179] of  FundaMesa

	(anchura 90.0)
	(descripcion "Mantel de plastico para mesa de hasta 8 comensales.")
	(estilo hippie)
	(habitacion cocina)
	(material plastico)
	(nombre "YesEight")
	(num_plazas 8)
	(precio 15.95)
	(profundidad 250.0))

([Mikeo_Instance_50180] of  Bateria

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Bateria de cocina de acero de 5 piezas.")
	(estilo pijo moderno clasico hippie)
	(habitacion cocina)
	(material metal)
	(nombre "Cool")
	(precio 300.0))

([Mikeo_Instance_50182] of  Bateria

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Bateria de cocina de 5 piezas.")
	(estilo pijo moderno clasico hippie)
	(habitacion cocina)
	(material metal)
	(nombre "Varianova")
	(precio 200.0))

([Mikeo_Instance_50184] of  Vajilla

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Vajilla de 20 piezas alegre de vistosa decoracion")
	(estilo pijo moderno clasico hippie)
	(habitacion cocina)
	(material ceramica)
	(nombre "SantaClara")
	(precio 140.0))

([Mikeo_Instance_50185] of  Vajilla

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Vajilla de porcelana de Bone china de 40 piezas")
	(estilo pijo)
	(habitacion cocina)
	(material porcelana)
	(nombre "Puntos")
	(precio 265.0))

([Mikeo_Instance_50186] of  Vajilla

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Vajilla de porcelana destacada por su diseno y estetica")
	(estilo moderno)
	(habitacion cocina)
	(material porcelana)
	(nombre "Rayas")
	(precio 250.0))

([Mikeo_Instance_50187] of  Vajilla

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Vajilla de porcelana intemporal.")
	(estilo clasico)
	(habitacion cocina)
	(material porcelana)
	(nombre "Anubis")
	(precio 230.0))

([Mikeo_Instance_50188] of  Vajilla

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Vajilla cuadrada realizada en vidrio tensionado.")
	(estilo hippie)
	(habitacion cocina)
	(material vidrio)
	(nombre "Carine")
	(precio 100.0))

([Mikeo_Instance_50189] of  Cuberteria

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cuberteria de 112 piezas. Diseno sencillo y de buen gusto. Acero inoxidable.")
	(estilo pijo)
	(habitacion cocina)
	(material metal)
	(nombre "Justinus")
	(precio 390.0))

([Mikeo_Instance_50190] of  Cuberteria

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cuberteria de 113 piezas de acero inxodable de diseno")
	(estilo moderno)
	(habitacion cocina)
	(material metal)
	(nombre "Jay")
	(precio 350.0))

([Mikeo_Instance_50191] of  Cuberteria

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cuberteria de acero inoxidable de 100 piezas.")
	(estilo clasico)
	(habitacion cocina)
	(material metal)
	(nombre "Titanio")
	(precio 250.0))

([Mikeo_Instance_50192] of  Cuberteria

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cuberteria de acero inoxidable.")
	(estilo hippie)
	(habitacion cocina)
	(material metal)
	(nombre "Troti")
	(precio 180.0))

([Mikeo_Instance_50195] of  ConjuntoCopas

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cristaleria de 24 piezas elegante")
	(estilo pijo)
	(habitacion cocina)
	(material cristal)
	(nombre "Sagiovenese")
	(precio 350.0))

([Mikeo_Instance_50196] of  ConjuntoCopas

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cristaleria de 24 piezas de diseno")
	(estilo moderno)
	(habitacion cocina)
	(material cristal)
	(nombre "Davinci")
	(precio 290.0))

([Mikeo_Instance_50197] of  ConjuntoCopas

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cristaleria de 24 piezas clasica")
	(estilo clasico)
	(habitacion cocina)
	(material cristal)
	(nombre "Spiegelau")
	(precio 220.0))

([Mikeo_Instance_50198] of  ConjuntoCopas

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Cristaleria de 24 piezas.")
	(estilo hippie)
	(habitacion cocina)
	(material cristal)
	(nombre "Spiel")
	(precio 189.0))

([Mikeo_Instance_50199] of  ConjuntoVasos

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de 6 vasos elegante.")
	(estilo pijo)
	(habitacion cocina)
	(material cristal)
	(nombre "Club")
	(precio 52.0))

([Mikeo_Instance_50200] of  ConjuntoVasos

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de 6 vasos de diseno")
	(estilo moderno)
	(habitacion cocina)
	(material cristal)
	(nombre "Scott")
	(precio 41.0))

([Mikeo_Instance_50201] of  ConjuntoVasos

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de 6 vasos clasicos")
	(estilo clasico)
	(habitacion cocina)
	(material cristal)
	(nombre "Casual")
	(precio 25.0))

([Mikeo_Instance_50202] of  ConjuntoVasos

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de 6 vasos.")
	(estilo hippie)
	(habitacion cocina)
	(material cristal)
	(nombre "Wear")
	(precio 19.0))

([Mikeo_Instance_50203] of  ConjuntoCoctel

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de 6 copas de coctel mas coctelera")
	(estilo pijo)
	(habitacion cocina)
	(material cristal)
	(nombre "Coctel")
	(precio 55.0))

([Mikeo_Instance_50204] of  ConjuntoCafe

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de cafe de 12 piezas elegante")
	(estilo pijo)
	(habitacion cocina)
	(material porcelana)
	(nombre "Cartuja")
	(precio 115.0))

([Mikeo_Instance_50205] of  ConjuntoCafe

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de cafe de 12 piezas de diseno")
	(estilo moderno)
	(habitacion cocina)
	(material porcelana)
	(nombre "Sevilla")
	(precio 95.0))

([Mikeo_Instance_50206] of  ConjuntoCafe

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de cafe de 12 piezas modelo clasico.")
	(estilo clasico)
	(habitacion cocina)
	(material ceramica)
	(nombre "Cordoba")
	(precio 55.0))

([Mikeo_Instance_50207] of  ConjuntoCafe

	(apto_lavavajillas TRUE)
	(apto_vitroceramica TRUE)
	(descripcion "Juego de cafe de 12 piezas de ceramica.")
	(estilo hippie)
	(habitacion cocina)
	(material ceramica)
	(nombre "Malaga")
	(precio 25.0))

([Mikeo_Instance_50208] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante con espejo y luz. Tamano grande.")
	(estilo pijo moderno)
	(habitacion bano)
	(material madera)
	(nombre "TinoEspGran")
	(precio 500.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50209] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante. Tamano grande.")
	(estilo pijo moderno)
	(habitacion bano)
	(material madera)
	(nombre "TinoGran")
	(precio 400.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50210] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante con espejo y luz. Tamano pequeno.")
	(estilo pijo moderno)
	(habitacion bano)
	(material madera)
	(nombre "TinoEspPeq")
	(precio 400.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50211] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante. Tamano peq.")
	(estilo pijo moderno)
	(habitacion bano)
	(material madera)
	(nombre "TinoPeq")
	(precio 300.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50212] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante con espejo y luz. Tamano grande de pladur.")
	(estilo pijo moderno)
	(habitacion bano)
	(material pladur)
	(nombre "TinoEspGranPla")
	(precio 500.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50214] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante. Tamano grande de pladur.")
	(estilo pijo moderno)
	(habitacion bano)
	(material pladur)
	(nombre "TinoGran")
	(precio 400.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50215] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante con espejo y luz. Tamano pequeno de pladur.")
	(estilo pijo moderno)
	(habitacion bano)
	(material pladur)
	(nombre "TinoEspPeqPla")
	(precio 400.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50216] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano elegante. Tamano pequeno y de pladur")
	(estilo pijo moderno)
	(habitacion bano)
	(material pladur)
	(nombre "TinoPeqPla")
	(precio 300.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50217] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano con espejo y luz. Tamano grande.")
	(estilo clasico hippie)
	(habitacion bano)
	(material madera)
	(nombre "RiseEspGran")
	(precio 400.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50218] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano. Tamano grande.")
	(estilo clasico hippie)
	(habitacion bano)
	(material madera)
	(nombre "RiseGran")
	(precio 300.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50219] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano con espejo y luz. Tamano pequeno.")
	(estilo clasico hippie)
	(habitacion bano)
	(material madera)
	(nombre "TinoEspPeq")
	(precio 300.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50220] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano. Tamano peq.")
	(estilo clasico hippie)
	(habitacion bano)
	(material madera)
	(nombre "TinoPeq")
	(precio 200.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50221] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano con espejo y luz. Tamano grande de mimbre.")
	(estilo hippie)
	(habitacion bano)
	(material mimbre)
	(nombre "RiseEspGranMim")
	(precio 300.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50222] of  Bajo

	(anchura 100.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano. Tamano grande de mimbre.")
	(estilo hippie)
	(habitacion bano)
	(material mimbre)
	(nombre "RiseGranMim")
	(precio 200.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50223] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano con espejo y luz. Tamano pequeno de mimbre.")
	(estilo hippie)
	(habitacion bano)
	(material mimbre)
	(nombre "TinoEspPeqMim")
	(precio 200.0)
	(profundidad 49.0)
	(tiene_espejo TRUE))

([Mikeo_Instance_50224] of  Bajo

	(anchura 70.0)
	(clasificacion_edades adulto)
	(descripcion "Armario de bano. Tamano pequeno de mimbre.")
	(estilo hippie)
	(habitacion bano)
	(material mimbre)
	(nombre "TinoPeqMim")
	(precio 200.0)
	(profundidad 49.0)
	(tiene_espejo FALSE))

([Mikeo_Instance_50225] of  Espejo

	(anchura 60.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo facial de bano elegante.")
	(estilo pijo)
	(habitacion bano)
	(material cristal)
	(nombre "Polar")
	(precio 70.0)
	(profundidad 60.0)
	(tipo_espejo facial))

([Mikeo_Instance_50226] of  Espejo

	(anchura 60.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo facial de bano de diseno.")
	(estilo moderno)
	(habitacion bano)
	(material cristal)
	(nombre "Deco")
	(precio 61.0)
	(profundidad 60.0)
	(tipo_espejo facial))

([Mikeo_Instance_50227] of  Espejo

	(anchura 60.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo facial de bano clasico.")
	(estilo clasico)
	(habitacion bano)
	(material cristal)
	(nombre "Noval")
	(precio 51.0)
	(profundidad 60.0)
	(tipo_espejo facial))

([Mikeo_Instance_50228] of  Espejo

	(anchura 60.0)
	(clasificacion_edades adulto)
	(descripcion "Espejo facial de bano floral.")
	(estilo hippie)
	(habitacion bano)
	(material cristal)
	(nombre "Expo")
	(precio 39.0)
	(profundidad 60.0)
	(tipo_espejo facial))

([Mikeo_Instance_50229] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lampara de pared de bano elegante.")
	(estilo pijo)
	(habitacion bano)
	(material metal)
	(nombre "AteneaWall")
	(precio 40.0))

([Mikeo_Instance_50230] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lampara de pared de bano de diseno.")
	(estilo moderno)
	(habitacion bano)
	(material metal)
	(nombre "NeoWall")
	(precio 34.0))

([Mikeo_Instance_50231] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lampara de pared de bano clasica.")
	(estilo clasico)
	(habitacion bano)
	(material metal)
	(nombre "LioWall")
	(precio 29.0))

([Mikeo_Instance_50232] of  LamparaParet

	(clasificacion_edades adulto)
	(descripcion "Lampara de pared de bano.")
	(estilo hippie)
	(habitacion bano)
	(material metal)
	(nombre "BeaWall")
	(precio 19.0))

([Mikeo_Instance_50233] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de techo para bano elegante.")
	(estilo pijo)
	(habitacion bano)
	(material metal)
	(nombre "Atenea")
	(precio 45.0))

([Mikeo_Instance_50234] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de techo para bano de diseno.")
	(estilo moderno)
	(habitacion bano)
	(material metal)
	(nombre "Neo")
	(precio 34.0))

([Mikeo_Instance_50235] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de techo para bano clasica.")
	(estilo clasico)
	(habitacion bano)
	(material metal)
	(nombre "Lio")
	(precio 29.0))

([Mikeo_Instance_50236] of  LamparaTecho

	(clasificacion_edades adulto)
	(descripcion "Lampara de techo para bano.")
	(estilo hippie)
	(habitacion bano)
	(material metal)
	(nombre "Bea")
	(precio 19.0))

([Mikeo_Instance_50237] of  JuegoBano

	(descripcion "Juego de bano elegante de porcelana.")
	(estilo pijo)
	(habitacion bano)
	(material porcelana)
	(nombre "Sanyluz")
	(precio 120.0))

([Mikeo_Instance_50238] of  JuegoBano

	(descripcion "Juego de bano de diseno de porcelana.")
	(estilo moderno)
	(habitacion bano)
	(material porcelana)
	(nombre "Sany")
	(precio 99.0))

([Mikeo_Instance_50239] of  JuegoBano

	(descripcion "Juego de bano clasico.")
	(estilo clasico)
	(habitacion bano)
	(material ceramica)
	(nombre "Sany")
	(precio 50.0))

([Mikeo_Instance_50240] of  JuegoBano

	(descripcion "Juego de bano floral.")
	(estilo hippie)
	(habitacion bano)
	(material ceramica)
	(nombre "Seito")
	(precio 30.0))

([Mikeo_Instance_50241] of  Toalla

	(clasificacion_edades adulto)
	(descripcion "Conjunto de 3 toallas elegantes.")
	(estilo pijo)
	(habitacion bano)
	(material textil)
	(nombre "Resi")
	(precio 30.0))

([Mikeo_Instance_50242] of  Toalla

	(clasificacion_edades adulto)
	(descripcion "Conjunto de 3 toallas de diseno")
	(estilo moderno)
	(habitacion bano)
	(material textil)
	(nombre "Desi")
	(precio 25.0))

([Mikeo_Instance_50243] of  Toalla

	(clasificacion_edades adulto)
	(descripcion "Conjunto de 3 toallas clasico.")
	(estilo clasico)
	(habitacion bano)
	(material textil)
	(nombre "Trie")
	(precio 20.0))

([Mikeo_Instance_50244] of  Toalla

	(clasificacion_edades adulto)
	(descripcion "Conjunto de 3 toallas floral.")
	(estilo hippie)
	(habitacion bano)
	(material textil)
	(nombre "Seta")
	(precio 15.0))

([Mikeo_Instance_6] of  Reloj

	(anchura 28.0)
	(clasificacion_edades adulto)
	(descripcion "Reloj de colores vivos.")
	(diametro 0)
	(estilo hippie)
	(habitacion cocina)
	(material plastico)
	(nombre "Bravur")
	(precio 8.0)
	(profundidad 4.0))

([Mikeo_Instance_7] of  GalanDeNoche

	(anchura 60.0)
	(descripcion "Galan de noche clasico.")
	(estilo clasico)
	(habitacion dormitorio)
	(material madera)
	(nombre "Portis")
	(precio 24.95)
	(profundidad 0.0))

([Mikeo_Instance_8] of  GalanDeNoche

	(anchura 65.0)
	(descripcion "Galan de noche elegante y de diseno")
	(estilo pijo moderno)
	(habitacion dormitorio)
	(material metal)
	(nombre "Portisvual")
	(precio 40.0)
	(profundidad 0.0))

([Mikeo_Instance_9] of  GalanDeNoche

	(anchura 60.0)
	(descripcion "Galan de noche con dibujo floral.")
	(estilo hippie)
	(habitacion dormitorio)
	(material madera)
	(nombre "PortisFeil")
	(precio 25.0)
	(profundidad 0.0))


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