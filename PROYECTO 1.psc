Algoritmo sin_titulo
	Definir producto, cupon, entrega, comuna Como Caracter
	Definir costoin, cantidad, costop, descuento,costoproducto, IVA, costoproductof, descuentoad, costoproductofin Como real
	Escribir 'Ingrese el nombre del producto'
	Leer producto
	Escribir 'Ingrese el precio inicial del producto'
	Leer costoin
	Escribir 'Ingrese la cantidad de productos que desea comprar'
	Leer cantidad
	
	costop=costoin*cantidad

	intentos<-0
	mientras intentos <3 y salir=falso
		escribir 'Ingrese su c�digo de descuento de 4 d�gitos: '
		leer cupon
		si cupon = '1234' entonces
			salir=verdadero
			escribir '�Tienes un 10% de descuento sobre el precio inicial!'
		sino
			escribir 'Cup�n inv�lido, intente de nuevo.'
			salir=falso
			intentos=intentos+1
		fin si
	fin mientras
	
	si intentos <3 Entonces
		descuento=costop*0.1
		costoproducto=costop- redon(descuento)
		IVA= costoproducto*0.12
		costoproductof= costoproducto+ redon(IVA)
	
		Si cantidad >=2 y cantidad <5 Entonces
			descuentoad=costoproductof*0.1
			costoproductofin= costoproductof- redon(descuentoad)
			escribir 'Por compras sobre 2 productos �Te premiamos con 10% de descuento adicional!'
		SiNo
			Si cantidad >=5 y cantidad <10 Entonces
				descuentoad=costoproductof*0.2
				costoproductofin= costoproductof- redon(descuentoad)
				escribir 'Por compras sobre 5 productos �Te premiamos con 20% de descuento adicional!'
			SiNo
				Si cantidad >=10 Entonces
					descuentoad=costoproductof*0.3
					costoproductofin= costoproductof- redon(descuentoad)
					escribir 'Por compras sobre 10 productos �Te premiamos con 30% de descuento adicional'
				FinSi
			FinSi
		FinSi
	FinSi
	
	si intentos = 3 entonces
		descuento=0
		costoproducto=costop- redon(descuento)
		IVA=costoproducto*0.19
		costoproductof= costoproducto+ redon(IVA)
		escribir "Ha excedido el n�mero m�ximo de intentos permitidos, no se ha aplicado c�digo de descuento"
		Si cantidad >=2 y cantidad <5 Entonces
			descuentoad=costoproductof*0.1
			costoproductofin= costoproductof- redon(descuentoad)
			escribir 'Por compras sobre 2 productos �Te premiamos con 10% de descuento adicional!'
		SiNo
			Si cantidad >=5 y cantidad <10 Entonces
				descuentoad=costoproductof*0.2
				costoproductofin= costoproductof- redon(descuentoad)
				escribir 'Por compras sobre 5 productos �Te premiamos con 20% de descuento adicional!'
			SiNo
				Si cantidad >=10 Entonces
					descuentoad=costoproductof*0.3
					costoproductofin= costoproductof- redon(descuentoad)
					escribir 'Por compras sobre 10 productos �Te premiamos con 30% de descuento adicional!'
				FinSi
			FinSi
		FinSi
	fin si
	
	Escribir 'A continuaci�n elija m�todo de entrega'
	Escribir 'Ingresa 1 para env�o a domicilio y 2 para retiro en tienda. Solo contamos con env�o en Santiago'
	Leer entrega
	
	Si entrega='1' o entrega ='2' Entonces
		Si entrega = '1' Entonces
			Escribir 'Ingresa direcci�n de env�o (Nombrecalle #n�merocasa/edificio, depto #n�mero -opcional-, Comuna)'
			Leer direcci�n
			Escribir 'Ingresa el n�mero correspondiente a la comuna ingresada en la direcci�n de env�o.'
			Escribir '    - Ingresa 1 para las comunas de: Cerrillos, Cerro Navia, El Bosque, Estaci�n Central, Huechuraba, La Cisterna,'
			Escribir '      La Pintana, La Reina, Las Condes, Lo Espejo, Lo Prado, Pedro Aguirre Cerda, Pe�alolen, Quilicura, Renca, Vitacura'
			Escribir '    - Ingresa 2 para las comunas de: Conchali, Independencia, La Granja, Macul, �u�oa, Providencia, Recoleta, San Joaqu�n, San Miguel, San Ram�n, Santiago Centro'
			Escribir '    - Ingresa 3 para las comunas de: La Florida, Lo Barnechea, Maipu, Pudahuel, Puente Alto'
			Escribir '    - Ingresa 4 para las comunas de: San Bernardo, San Jose de Maipo, Pirque, Buin, Calera de Tango, Paine, Colina, Lampa'
			Leer comuna
			Si comuna='1' o comuna='2' o comuna='3' o comuna='4' Entonces
				Seg�n comuna hacer
			Caso '1': 
				costoentrega<-3200
			Caso '2':
				costoentrega<-2800
			Caso '3':
				costoentrega<-3800
			Caso '4':
				costoentrega<-4000
		Fin segun
		Escribir 'Ingresa el n�mero correspondiente al peso aproximado de tu producto.'
		Escribir 'Se a�ade cobro adicional a partir de los 5kg y se acepta un peso m�ximo de 50kg'
		Escribir 'Ingresa 1 si tu compra pesa entre 0 a 5kg'
		Escribir 'Ingresa 2 si tu compra pesa entre 6 a 10kg'
		Escribir 'Ingresa 3 si tu compra pesa entre 11 a 20kg'
		Escribir 'Ingresa 4 si tu compra pesa entre 21 a 30kg'
		Escribir 'Ingresa 5 si tu compra pesa entre 31 a 40kg'
		Escribir 'Ingresa 6 si tu compra pesa entre 41 a 50kg'
		Leer peso
		Seg�n peso hacer
	Caso 1: 
		costopeso<-0
	Caso 2:
		costopeso<-500
	Caso 3:
		costopeso<-1000
	Caso 4:
		costopeso<-1500
	Caso 5: 
		costopeso<-2000
	Caso 6:
		costopeso<-2500
Fin Segun
Escribir 'Pedido realizado con �xito.'
Escribir 'Se aplic� sobre un valor inicial de $' costop
Si intentos <3 Entonces
	Escribir '    - Descuento asociado a c�digo de -$' redon(descuento)
FinSi
Escribir '    - Impuesto al valor agregado IVA de +$' redon(IVA)
Escribir '    - Descuento por cantidad de -$' redon(descuentoad)
Escribir '    - Costo de env�o de +$' costoentrega
Escribir '    - Cobro adicional seg�n peso de +$' costopeso
Escribir  'Total a pagar $' costoproductofin + costoentrega + costopeso
Escribir '�Gracias por tu compra!'
SiNo
	Escribir 'Comuna incorrecta, compra rechazada'
FinSi
Fin si

Si entrega= '2' Entonces
	costoentrega=0
	Escribir 'Pedido realizado con �xito.' 
	Escribir 'Se aplic� sobre un valor inicial de $' costop
	Si intentos <3 Entonces
		Escribir 'Descuento asociado a c�digo de -$' redon(descuento)
	FinSi
	Escribir '    - Impuesto al valor agregado IVA de +$' redon(IVA)
	Escribir '    - Descuento por cantidad de -$' redon(descuentoad)
	Escribir '    - Costo de env�o $0'
	Escribir 'Total a pagar $' costoproductofin + costoentrega + costopeso
	Escribir '�Gracias por tu compra!'
FinSi
SiNo
	escribir 'M�todo de entrega incorrecto, compra rechazada'
	FinSi
FinAlgoritmo
