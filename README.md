# Proyecto-AC
# Programa de ensamblador para calcular la distancia entre dos ciudades utilizando la fórmula de Haversine

Este programa utiliza el emu 8086 y la biblioteca emu.inc con sus respectivas macros para realizar el cálculo de distancia entre dos ciudades utilizando la fórmula de Haversine. 

## Requisitos previos

Antes de ejecutar este programa, asegúrese de tener instalado el emu 8086 y haber incluido la biblioteca emu.inc en su directorio de trabajo.

## Instrucciones

1. Al abrir el programa, se mostrará un mensaje solicitando ingresar las coordenadas de las ciudades en latitudes y longitudes. Las coordenadas deben ingresarse en valores enteros, positivos para latitud norte y/o longitud este, y negativos para latitud sur y/o longitud oeste. Para ingresar un número negativo, agregue un signo "-" antes del número.

2. Después de ingresar cualquier valor, presione la tecla ENTER para pasar a la siguiente instrucción.

3. El programa solicitará a través de mensajes las diferentes variables necesarias para realizar el cálculo. Ingrese los valores solicitados uno por uno y presione ENTER después de cada ingreso.

4. Una vez que se hayan ingresado todas las variables necesarias, el programa realizará el cálculo necesario utilizando la fórmula de Haversine.

5. El resultado del cálculo será mostrado como la distancia entre las dos ciudades en kilómetros. Tenga en cuenta que este resultado es aproximado ya que trata a la Tierra como una esfera perfecta, lo cual no es del todo preciso.

## Importante

Es importante tener en cuenta que la escala utilizada para el cálculo de distancia en este programa es pequeña para facilitar el cálculo. En una escala "real", sería necesario utilizar soportes adicionales que el emu8086 no posee o recurrir a la programación híbrida, lo cual no es el objetivo de este proyecto.

Además, para obtener resultados precisos, asegúrese de ingresar latitudes entre -60 y 60 y longitudes entre 60 y -60. Si se ingresan valores fuera de este rango, el cálculo de distancia no se realizará correctamente debido a la escala utilizada.

¡Disfrute utilizando este programa para calcular la distancia entre dos ciudades utilizando la fórmula de Haversine en el emu 8086!
