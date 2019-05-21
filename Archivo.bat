Luego de la Especificacion de Programas se crearan en el directorio de
produccion archivos con las siguientes extenciones:

    ?<Nombre_Objeto>.RPG -> fuentes RPG.
    ?<Nombre_Objeto>.DDS -> fuentes de pantallas (si existe).
    ?<Nombre_Objeto>.BAT ->
    ?<Nombre_Objeto>.CLP ->

Los archivos generados tienen un primer caracter en el nombre segun el
objeto que los haya generado:

    F -> para los procedimientos y reportes.
    E -> para los work panels.
      -> para las transacciones.

Para llevar los archivos generados en la PC a la AS400 hay que seguir proceder
de la siguiente manera:

1.  Encontrar el Archivo R.BAT: Este contiene instrucciones para copiar todos
    los archivos generados para el objeto de interes, ademas, del ejecutable
    GXTFF.EXE

2.  Ejecutar el R.BAT en la PC: Usando como parametro para este el nombre del
    objeto que se quiere exportar.

    Ejemplo: Se tiene un Objeto GeneXus, "Prueba" (este podria ser cualquier
    tipo de objeto GeneXus) el cual se acaba de especificar y se desea poner
    en produccion en la AS400.

        R PRUEBA <ÄÙ -> Con lo cual se copiaran al diskette los ?PRUEBA.*
                        mas el GXTFF.EXE.
    En general:
        R <Nombre_Objeto> <ÄÙ

3.  Una vez conectados atravez de una PC con la AS400, se deben ejecutar las
    siguientes instrucciones.

    1.  Ejecutar el: STARTPCS
    2.  Ejecutar el: STF 2.
    3.  Ejecutar el: ?<Nombre_Objeto>.BAT del disquete
