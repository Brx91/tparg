Algoritmo Cotizador_modena_tp
	Definir m_6201, m_6200, m_6204, m6203, m_6207, m_6209, kg, ancho, alto como Real
	definir sumatoria Como real
	definir cantidad como real
	cantidad<--1
	sumatoria<-0
	//Perfileria Corrediza precio x mt lineal
	m_6201<-0.644//Jamba
	m_6200<-1.266//Lintel
	m_6204<-0.721//Zocalo
	m_6203<-0.651//Lateral
	m_6207<-0.613//Central
	m_6209<-1.266//Zocalo Alto
	kg<-3958.29
	//Tipologia Vidrio precio x m2
	Definir m2_v4mm, m2_dvh como Real
	m2_v4mm<-3887.5
	camara<-923.58//Para dvh por mt lineal
	
	m2_dvh<-m2_v4mm*2+camara
	//accesorios
	ruedas<-1787.50
	cierre<-2337.5
	felpa<-116.88
	burlete<-103.13
	t90<-27.5
	t89<-20.63
	tornillo<-24.75
	t93<-275
	t91<-48.13
	t92<-41.25
	t130<-13.75
	t131<-13.75
	accesorios<-(t91*8+t89*4+t93*2+t90*4+t92*4+t130*2+t131*2)+(tornillo*16)+(ruedas*4)+(cierre*2)+(felpa*(ancho*4*alto*6))+(burlete*(ancho*2*alto*4))
	
	Escribir "Ingrese su nombre"
	Leer usuario
	Escribir "Bienvenido ",usuario " a la beta del programa para cotizar"
	
	Repetir
		Escribir "Que desea hacer?"
		Escribir "1. Cotizacion de abertura modena vidrio simple"
		Escribir "2. Cotizacion de abertura modena doble vidriado hermetico (dvh)"
		Escribir "3. Mostrar suma de cotizaciones"
		Escribir "4. Salir"
		
		Escribir "Elija una opcion del menu"
		Leer op_menu
	
	Limpiar Pantalla
		si (op_menu=1) entonces
		
			Escribir "1. Cotizar modena corrediza vidrio simple"
			
			
		
		Escribir "Ingrese ancho y alto de la ventana"
		Leer ancho
		Leer alto
		vidrio_4mm<-((ancho*alto)*m2_v4mm)*2
		aluminio_ancho<-((m_6200*2+m_6204*2)*ancho)*kg
		aluminio_alto<-((m_6201*2+m_6203*2+m_6207*2)*alto)*kg
		aluminio_ancho_b<-((m_6200*2+m_6209+m_6204)*ancho)*kg
		si alto>=2.0 Entonces
		precio_simple<-trunc(vidrio_4mm + accesorios + aluminio_ancho_b + aluminio_alto)*1.35
		escribir precio_simple," Sale la carpinteria"
		sino
		precio_simple<-trunc(vidrio_4mm + accesorios + aluminio_ancho + aluminio_alto)*1.35
		Escribir precio_simple," Sale la carpinteria"
	finsi
	Escribir "Escribe la cantidad que desea"
	Leer cantidad
	total_vsimple<-cantidad*precio_simple
	Mostrar "El total es ",total_vsimple
	
	Escribir "Desea ingresarlo al prespuesto? [S/N]"
	Leer cotizar
	si cotizar="S" O cotizar="s" Entonces
		sumatoria<-cantidad*precio_simple
		escribir "se agrego a la cotizacion"
		escribir " "
	SiNo
		escribir "no se agrego a la cotizacion"
		Escribir " "
	
	FinSi
finsi

		si (op_menu=2) entonces
	Escribir "2. Cotizar modena corrediza vidrio simple"
	
	
	
	Escribir "Ingrese ancho y alto de la ventana"
	Leer ancho
	Leer alto
	vidrio_4mm<-((ancho*alto)*m2_v4mm)*2
	m2_dvh<-((m2_v4mm*2)+camara)*2
	aluminio_ancho<-((m_6200*2+m_6204*2)*ancho)*kg
	aluminio_alto<-((m_6201*2+m_6203*2+m_6207*2)*alto)*kg
	aluminio_ancho_b<-((m_6200*2+m_6209+m_6204)*ancho)*kg
	si alto>=2.0 Entonces
		precio_dvh<-trunc(m2_dvh + accesorios + aluminio_ancho_b + aluminio_alto)*1.35
		escribir precio_dvh," Sale la carpinteria"
	sino
		precio_dvh<-trunc(m2_dvh + accesorios + aluminio_ancho + aluminio_alto)*1.35
		Escribir precio_dvh," Sale la carpinteria"
	finsi
	Escribir "Escribe la cantidad que desea"
	Leer cantidad
	total_dvh<-cantidad*precio_dvh
	Mostrar "El total es ",total_dvh
	
	Escribir "Desea ingresarlo al prespuesto? [S/N]"
	Leer cotizar
	si cotizar="S" O cotizar="s" Entonces
		sumatoria<-cantidad*precio_dvh
		escribir "se agrego a la cotizacion"
	SiNo
		escribir "no se agrego a la cotizacion"
		FinSi
	FinSi
	
	si (op_menu=3) entonces
		sumatoria<-total_vsimple+total_dvh
		Escribir "El total es ", sumatoria
	FinSi


hasta que (op_menu)=4
escribir "Espero que vuelvas pronto ",usuario
		
			
			
	
FinAlgoritmo
