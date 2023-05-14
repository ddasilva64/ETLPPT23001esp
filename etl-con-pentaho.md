# ETL con Pentaho

## Instalación de Pentaho en Windows  

### **_Descarga de Pentaho Data Integration_**  

Descargamos la última versión de Pentaho Community Edition desde [el sitio web oficial de Pentaho](https://sourceforge.net/projects/pentaho/files/latest/download)  

![sitio web oficial de Pentaho](https://i.imgur.com/CfmlkDH.png)  

### **_Descompresión del archivo descargado_**  

Descomprimimos el archivo que acabamos de descargar  

![Descomprimimos el archivo](https://i.imgur.com/SX2KDOv.png)  

### **_Instalación de Java_**  

**_PDI_** requiere **_Java_** para ejecutarse. Si aún no tenemos Java instalado en nuestro ordenador, podemos descargar el instalador del [sitio web oficial](https://www.java.com/es/download/ie_manual.jsp)  

![sitio web oficial](https://i.imgur.com/v1XyhH0.png)  

¡Atención!: La versión que se propone es de un **_jre_** de 32 bits, esto provoca dos problemas:
1. **_Spoon_** no abre
2. Bajando el **_jdk_** abre **_Spoon_**, pero no establece conexión con la BD. NO DICE NADA

SOLUCIÓN:
1. Disgnóstico del problema:  
    En lugar de ejecutar **_Spoon.bat_**, ejecutar **_SpoonDebug.bat_**, lo cual genera un log de texto de la ejecución. El resultado dice algo relativo a la VM y la cantidad de memoria utilizada:  

    DEBUG: Using PENTAHO_JAVA_HOME  
    DEBUG: _PENTAHO_JAVA_HOME=C:\Program Files (x86)\Java\jre-1.8       
    DEBUG: _PENTAHO_JAVA=C:\Program Files (x86)\Java\jre-1.8\bin\java.exe       

    D:\temp\soft\Pentaho_Data_Integration\pdi-ce-9.3.0.0-428\data-integration>"C:\Program Files (x86)\Java\jre-1.8\bin\java.exe"  "-Xms1024m" "-Xmx2048m" "-XX:MaxPermSize=256m" "-Dhttps.protocols=TLSv1,TLSv1.1,TLSv1.2" "-Djava.library.path=libswt\win32" "-DKETTLE_HOME=" "-DKETTLE_REPOSITORY=" "-DKETTLE_USER=" "-DKETTLE_PASSWORD=" "-DKETTLE_PLUGIN_PACKAGES=" "-DKETTLE_LOG_SIZE_LIMIT=" "-DKETTLE_JNDI_ROOT=" -jar launcher\launcher.jar -lib ..\libswt\win32  /level:Debug      
    Java HotSpot(TM) Client VM warning: ignoring option MaxPermSize=256m; support was removed in 8.0        
    Error occurred during initialization of VM      
    Could not reserve enough space for 2097152KB object heap  

    * **_Es inútil declarar variables de entorno JAVA\_HOME o PENTAHO\_JAVA\_HOME_**
    * **_Es inútil copiar la carpeta jre en la carpeta de Pentaho_**
    * **_Es inútil bajar otros drivers (.jar) de Postgre SQL_**
    * **_Es inútil bajar otras versiones de Pentaho DI_**
    * **_Es inútil bajar otros jdk_**

2. Solución:
    Desinstalar **_Java_** (**_Panel de Control_**). Bajar de la [URL](https://javadl.oracle.com/webapps/download/AutoDL?BundleId=248242_ce59cff5c23f4e2eaf4e778a117d4c5b) el **_jre_** de 64 bits  
    Instalarlo, ejecutar Spoon.bat, como administrador ¡y listo!  

### **_Ejecución de Spoon_**  

Para acceder al programa solo hace falta abrir el archivo **_“Spoon”_** del tipo Batch file (con la extensión .bat)  

![Spoon](https://i.imgur.com/b8AosRz.png)  

Abrimos spoon  

![spoon](https://i.imgur.com/nP4FSoI.png)

## Instalación de Pentaho en Linux  

### **_Descarga de Pentaho Data Integration_**  

Primero descargamos la última versión de Pentaho Community Edition desde el [sitio web oficial de PDI](https://sourceforge.net/projects/pentaho/files/latest/download)  

![sitio web oficial de Pentaho](https://i.imgur.com/CfmlkDH.png)  

### **_Descompresión del archivo descargado_**  

Descomprimimos el archivo que acabamos de descargar  

![Descomprimimos el archivo](https://i.imgur.com/SX2KDOv.png)  

### **_Instalación de Java_**  

PDI requiere **_Java_** para ejecutarse. Si aún no tenemos **_Java_** instalado en nuestro ordenador, podemos instalarlo desde la terminal Linux con los siguientes comandos  

````Ubuntu
sudo apt-get update
sudo apt-get install default-jdk
````

### **_Configuración de Java_**  

Es necesario que configuremos las variables de entorno de **_Java_** para que **_Pentaho_** pueda encontrar la instalación de **_Java_**. Para ello, abrimos el archivo de configuración de **_Java_** en la terminal  

````Ubuntu
sudo nano /etc/environment
````

Agregamos la siguiente línea al final del archivo  

````Ubuntu
JAVA_HOME="/usr/lib/jvm/default-java"
````

Guardamos y cerramos el archivo. Podemos hacerlo con **_ctrl + o_** (guardar), seguido de **_“enter”_** (aceptar los cambios) y finalmente **_ctrl + x_** (salir).

### **_Ejecución de Spoon_**   

Ejecutamos **_Pentaho_**. Desde la terminal, vamos a la carpeta donde hemos descomprimido el archivo de **_Pentaho_** y ejecutamos el siguiente comando  

````Ubuntu
./spoon.sh
````

### **_Posibles errores_**  

#### **_Missing libwebktgtk package_**  

![Missing libwebktgtk package](https://i.imgur.com/Qeqvd7T.png)  

Para solucionar esto solamente hay que instalar la librería faltante. Para ello seguimos los siguientes pasos  

1. Abrimos la terminal y copiamos el siguiente código  

````Ubuntu
sudo nano /etc/apt/sources.list
````

2. Vamos al final del archivo y copiamos la siguiente línea  

````Ubuntu
deb http://cz.archive.ubuntu.com/ubuntu bionic main universe
````

3. Guardamoa y cerramos el archivo. Podemos hacerlo con **_ctrl + o_** (guardar), seguido de **_“enter”_** (aceptar los cambios) y finalmente **_ctrl + x_** (salir)  

4. Instalamos la librería con estos comandos  

````Ubuntu
sudo apt-get update

sudo apt-get install libwebkitgtk-1.0-0
````

5. Ahora podemos ejecutar **_Pentaho_**. Vamos a la carpeta en la que hemos descomprimido el archivo de **_Pentaho_** y ejecutamos el siguiente comando en la terminal  

````Ubuntu
./spoon.sh
````

#### **_“failed to load module “canberra-gtk-module”_**  

Este error ocurre cuando el sistema intenta acceder al módulo **_GTK_** y este no está instalado en el sistema. La solución es bastante simple y hasta intuitiva: instalar el módulo. Para ello solo hace falta ir a la terminal y copiar el siguiente comando  

````Ubuntu
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module
````

## Instalación en macOS  

### **_Descarga de Pentaho Data Integration_**  

Descarga la última versión de **_Pentaho Community Edition_** desde el [sitio web oficial](https://sourceforge.net/projects/pentaho/files/latest/download) de **_Pentaho_**  

![sitio web oficial de Pentaho](https://i.imgur.com/CfmlkDH.png)  

### **_Descompresión del archivo descargado_**  

Descomprimimos el archivo que acabamos de descargar  

![Descomprimimos el archivo](https://i.imgur.com/SX2KDOv.png)  

### **_Instalación de Java_**  

Descargamos e instalamos **_Java Development Kit_** (**_JDK_**) en nuestro sistema si no lo tenemis instalado. Podemos descargarlo del [sitio web oficial](https://www.java.com/es/download/help/mac_install.html)  

![sitio web oficial](https://i.imgur.com/84p5dK2.png)  

### **_Ejecución de Spoon_**  

Desde la terminal de macOS nos dirigimos a la carpeta donde descomprimimos el archivo de **_Pentaho_** y ejecutamos el siguiente comando  

````
./spoon.sh
````

**_Nota_**: Si aparece un mensaje de advertencia indicando que el archivo no se puede abrir, es posible que debamos cambiar los permisos del archivo. Para hacerlo, ejecutamos el siguiente comando en la terminal:

````
chmod +x spoon.sh
````

¡Listo! Con esto podremos ejecutar **_Pentaho_** a través de **_Spoon_**  

## Extracción de datos con Pentaho  

Como siempre hemos hecho, abrimos la imagen Docker de la BD  

![Verfifación](https://i.imgur.com/v4C22FY.png)  

Ahora repetimos la operación con la imagen **_Docker_** (puerto 5432) de **_Postgre SQL_** y nos conectamos   

````
docker run -e POSTGRES_PASSWORD=xxxxx --rm -it -p 5432:5432/tcp postgres:latest
````

![Verificación en Linux](https://i.imgur.com/FCb2cG1.png)  

Hacemos doble click en la carpeta Transformaciones y nos crea una estructura de proyecto  

![Nueva transformación](https://i.imgur.com/Cg5AkMf.png)  

Salvamos la transformación como project_etl  

![project_etl](https://i.imgur.com/4JVOYnX.png)  

Para evitar más complicaciones y por coherencia con nuestro objetivo final (en el proyecto que queremos construir), con doble click abrimos una nueva conexión una nueva tabla trades en una nueva BD (source), en nuestra instalación local de Postgre SQL (puerto 5433)  

![nueva conexión a la imagen Docker](https://i.imgur.com/oAEFds0.png)  

**_Nota_**: La conexión sería igual para la imagen **_Docker_** en el puerto 5432, pero no nos interesa   

La probamos y se conecta perfectamente  

![imagen Postgre SQL](https://i.imgur.com/U8HR5Pd.png)

Hacemos click en OK y ya tenemos la conexión a la BD Postgre SQL (puerto 5433)  

![imagen Postgre SQL conectada](https://i.imgur.com/Ipjh5Xq.png)

Hacemos lo mismo con nuestro target, que hemos definido, también, en una instalación local de Postgre SQL (puerto 5433)  

![BD local](https://i.imgur.com/45pPfjC.png)

Ya tenemos las dos conexiones que necesitamos  

![Conexiones realizadas](https://i.imgur.com/WaQv1Wq.png)

¡Atención!: Si en este moneto intentásemos salvar la transformación que estamos realizando, sin haber comenzado, al menos con un input de la BD, no nos salvaría las conexiones a las BD, Pero si, al menos, hacemos un input, entonces sí nos salvaría las conexiones a la BD, de la cual hayamos hecho un input    

Vamos a diseño y seleccionamos una **_table input_**, para hacer una entrada de nuestra tabla **_trades_**, en la BD de entrada (**_source_**). Para ello pinchamos y arrastramos  

![Table input](https://i.imgur.com/7Cm8E2O.png)  

Un doble click nos abre las propiedades de la extracción. Como podemos observar, dado que hay dos conexiones de datos, podemos seleccionar una

![Selección conexión de datos](https://i.imgur.com/P7Mw7Ae.png)  

En  uestro caso se trata de una tabla de una BD, con lo cual hacemos una Select, para verificar el contenido de nuestra extracción  

![Select](https://i.imgur.com/ebPETwA.png)  

Y ya tenemos la tabla en nuestro panel de diseño. Ahora procedemos a ejecutar la extracción   

![Tabla](https://i.imgur.com/drATkQh.png)  

No cambiamos nuestros parámetros. Ejecutamos  

![Run](https://i.imgur.com/AGWuSFz.png)  

Salvamos y ejecutamos la acción en el fichero  

![Save and run](https://i.imgur.com/Jbkaht2.png)  

En la parte inferior, por defecto, el sistema muestra el log de la acción que hemos realizado. Vamos a la solapa "Vista previa" para comprobar el resultado de nuestra extracción  

![Vista previa](https://i.imgur.com/JYg9Bgo.png)  

Comprobamos que hemos extraído correctamente los datos de la tabla **_trades_** de la conexión **_source_**  

![Extracción OK](https://i.imgur.com/xjtaUNR.png)  

Procedemos, ahora, a la extracción del fichero **_.CSV_**  

![.CSV](https://i.imgur.com/QtcqYKY.png)  

Un doble click nos abre las propiedades de la extracción  

![Propiedades CSV](https://i.imgur.com/wH930TQ.png)  

Cambiamos el nombre para identificar el origen de los datos (codes) y con el botón **_Browse_**, buscamos el fichero en nuestro sistema  

![Fichero de origen](https://i.imgur.com/g3npftp.png)  

Obtenemos los campos que vamos a extraer (**_Get fields_**)  

![Get fields](https://i.imgur.com/8aVzLWt.png)

Limitamos la vista a 100 línias, del fichero, para buscar las columnas   

![Imgur](https://i.imgur.com/F7xziVu.png)  

Comprobamos, las columnas y su formato  

![Columnas y formato](https://i.imgur.com/gfzuKYv.png)  

Para prever el fihero, presionamos el botón Preview. Limitamos los registros a previsualizar a 100  

![Limitar nº de registros](https://i.imgur.com/BkMwsl0.png)

Comprobamos que la extracción es correcta  

![Extracción OK](https://i.imgur.com/sBVlLtZ.png)  

Ejecutamos la acción que hemos hecho (extracción), hacemos click en el botón **_Run_**  

![Run](https://i.imgur.com/JqX533y.png)  

No cambiamos parámetros y ejecutamos  

![Run](https://i.imgur.com/m0WUbDF.png)  

Como antes, salvamos y ejecutamos  

![Save & run](https://i.imgur.com/niLrz1y.png)  

Como antes, tenemos un log de la acción y vamos a **_Preview_**  

![Log](https://i.imgur.com/Us8WnaI.png)  

Y vemos que la extracción de **_codes_** es OK

![codes OK](https://i.imgur.com/zscY0WD.png)  

Ahora vamos a la extracción del fichero **_.JSON_**  

![.JSON](https://i.imgur.com/NRi2MtI.png)  

De nuevo, dos clicks, nos llevan a la ventana de propiedades de la etracción  

![Propiedades](https://i.imgur.com/3AQYSxo.png)  

También, como antes, cambiamos el nombre propuesto (ponemos **_contry_**) y buscamos el fichero con Browse  

![Browse](https://i.imgur.com/8nAv9m1.png)  

Seleccionamos, en nuestro sistema, el fichero  

![Selección](https://i.imgur.com/ZuRAHUY.png)  

Añadimos el fichero a nuestra lista de directorios de ficheros, con el botón **_Add_**  

![Add](https://i.imgur.com/NlRUbm3.png)  

El fichero se ha añadido a la lista  

![Añadido](https://i.imgur.com/j73tkZQ.png)  

 Ahora, como es un fichero de datos no estructurados, nosotros definiremos los campos (solapa **_fields_**)  

![Definición de los campos](https://i.imgur.com/R1THH49.png)  

Escribimos la estructura de los campos que deseamos y vamos a la previsualización (**_Preview_**)  

![Campos](https://i.imgur.com/kc1uEIk.png)  

Limitamos las filas a previsualizar  

![Prevew size](https://i.imgur.com/1wcMTNQ.png)  

La previsualización es OK  

![Preview OK](https://i.imgur.com/FKb2SHF.png)  

Ahora realizamos la extracción, con dos clicks sobre el icono  

![Extracción](https://i.imgur.com/2m4hlWv.png)  

En la ventana de propiedades, no cambiamos nada y ejecutamos (Run)  

![Run](https://i.imgur.com/sbcX00a.png)

Como siempre salvamos y ejecutamos la acción  

![Save & run](https://i.imgur.com/42VAJUA.png)  

Como siempre, tenemos el log de la acción y vamos a **_preview_**  

![Log](https://i.imgur.com/Vx5RxJ6.png)  

La vista previa de los datos es OK  

![Preview OK](https://i.imgur.com/0n2MOQl.png)  

¡Salvamos nuestras extracciones y listo!  

![¡Listo!](https://i.imgur.com/2pnYDrA.png)  

Si volvemos a entrar, veremos que nos ha desaparecido la conexión a nuestra BD target (**_datawarehouse_**). La razón es que la interface de **_Spoon_** (**_Kettle_**), solo mantiene conexiones con las que hemos hecho alguna acción (por ejemplo, extracciones). Es decir, mantiene la conexión a **_source_**, porque hemos extraído (al menos) una tabla (**_trades_**)  

![La conexión target ha desaparecido](https://i.imgur.com/1KXxL7T.png)

## Transformación de datos con Pentaho (.CSV)  

Cuando volvemos a entrar en nuestro proyecto, vemos el resultado de las extracciones hechas  

![Resiltado extracciones](https://i.imgur.com/Rfp6tHQ.png)  

Eliminamos nulos  

![Eliminamos nulos](https://i.imgur.com/obcdXd0.png)  

Usamos el conector con la flechita saliente, para conectar  

![Filtro](https://i.imgur.com/xWoz4Ve.png)

En el filtro, debe estar la flechita entrante  

![Sobre filtro](https://i.imgur.com/SWEXOBd.png)  

Conexión hecha  

![Conexión hecha](https://i.imgur.com/7yAAnSZ.png)  

Con dos clicks, levantamos la ventana de propiedades  

![Propiedades](https://i.imgur.com/DMnG2JK.png)

Con un click, levantamos el selector de campos y seleccionamos **_Code_comm_**  

![Selector de campos](https://i.imgur.com/oiNw2bY.png)  

Con un click, también, seleccionamos que en lugar de comparar con algo, con un signo de igual, seleccionamos que no sea nulo  

![Not null](https://i.imgur.com/Gzq9NmS.png)  

Presionamos OK y ya tenemos el filtro hecho  

![OK](https://i.imgur.com/LlFkQIw.png)  

Creamos un conjunto de datos de categorías de productos, para ello añadimos un nuevo filtro y al conectarlo le decimos que nos copie el conjunto de datos originales. Para ello, hacemos clik dentro de la cajita del segundo filtro y seleccionamos la opción **_"Main output of step"_** (salida principal del paso)

!["Main output of step"](https://i.imgur.com/6olKlLP.png)  

Ahora seleccionamos **_"Copy"_**, para hacer una copia del dataset

!["Copy"](https://i.imgur.com/JftWv1s.png)  

Con un click, levantamos la ventana de propiedades y le decimos que **_Level_**=2 (nivel igual a 2)

![**_Level_**=2](https://i.imgur.com/WO03qqp.png)  

Aceptamos y tenemos el dataset de categorías de productos  

![OK](https://i.imgur.com/Cl2qSrI.png)

No obstante, debemos seleccionar campos del nuevo dataset. Para ello seleccionamos valores    

![Seleccionar valores](https://i.imgur.com/87ndwGU.png)  

Manteniendo el puntero dentro de la cajita, decimos que sean los valores no nulos (**_"Result is TRUE"_**)  

![**_"Result is TRUE"_**](https://i.imgur.com/6xjDr7h.png)  

Hacemos **_"get fields to select"_** (recuperar campos) y obtenemos los campos originales  

![**_"get fields to select"_**](https://i.imgur.com/gs1jVrY.png)

Ahora dejamos solo los que nos interesa **_Code\_comm_** y **_Description_**. Borramos los campos que no nos interesa, con la tecla **_suprimir_**. Renombramos **_Code\_comm_** como **_Code_**   

![Solo los campos que interesa](https://i.imgur.com/h3r7IDk.png)  

Ahora filtraremos en el primer dataset que la lóngitud del código se 11 o mayor que 11. Lo hacemos con **_"Calculator"_**  

![**_"Calculator"_**](https://i.imgur.com/YHzrv8J.png)  

Cuando, como antes los valores no sean nulos (**_"Result is TRUE"_**) y abrimos la ventana de propiedades. Le decimos que el campo se llama **_len\_code_** y hacemos click para seleccionar el cálculo    

![len_code](https://i.imgur.com/b8jWBM8.png)  

La operación es la longitud de la cadena de texto (**_"Return the lenght of a string A"_**)

![Longitud](https://i.imgur.com/zhQl8u8.png)  

El campo que queremos calcular es **_"Code"_**  

![Code](https://i.imgur.com/0Jy5O3h.png)  

Ejecutamos para verificar el resultado de la operación que hemos hecho  

![Run](https://i.imgur.com/l7FUpXj.png)  

![Run](https://i.imgur.com/0nwJNdt.png)  

Como siempre, salvamos y ejecutamos  

![salvamos y ejecutamos](https://i.imgur.com/UqG2myP.png)  

Al final de todo, de la vista previa, tenemos el campo que acabamos de añadir y que nos muestra la logitud del campo **_"Code"_**  

![Nuevo campo de longitud](https://i.imgur.com/3ZpfZ8y.png)  

Para filtrar los registros por la longitud de **_Code_**, añadimos otro filtro al que llamaremos **_length_**. Lo conectamos al resultado del **_Calculate_** y decimos que si **_len\_code_** = 11  

![si len_code = 11](https://i.imgur.com/bmo04si.png)  

Ahora añadimos dos operaciones **_String cut_** (una para una longitud de 11 y otra de 12)  

![Strings cut](https://i.imgur.com/3hltQg5.png)  

![Dos Strings cut](https://i.imgur.com/BjzGlY8.png)  

El primer **_"Strings cut"_** es para cuando sí cumple la condición  

![Si cumple condición](https://i.imgur.com/fo4Xtlk.png)


El segundo **_"Strings cut"_** es para cuando no cumple la condición  

![No cumple condición](https://i.imgur.com/qwJykn3.png)  

Montamos el resultado, tal como lo hicimos en Python, es decir: 
  
1. Si Code_comm tiene 1 dígito, entonces code tiene 11 dígitos, de los que cogeremos 5    
        code = 5 primeras posiciones  
        categoría (**_parent\_code_**) = primera posición
        ![Primera opción](https://i.imgur.com/TYmKCh3.png)
3. Si Code_comm tiene 2 dígitos, entonces code tiene 12 dígitos, de los que cogeremos 6   
        code = 6 primeras posiciones  
        categoría (**_parent\_code_**) = 2 primeras posiciones
        ![Segunda opción](https://i.imgur.com/33fGFH3.png)

Ejecutamos los pasos   

![Run](https://i.imgur.com/1SmkFnU.png)  

Vemos que hay un error de ejecución, debido a que tratamos como un **_string_**, un campo que es un **_integer_**  

![Errores por tipo de datos](https://i.imgur.com/ao4fnOX.png)  

De manera que vamos a la extracción original, del fichero **_.CSV_** y convertimos el campo Code de **_Integer_** a **_String_**  

![Cambiamos el tipo](https://i.imgur.com/GgAdkZm.png)  

Guardamos, ejecutamos y ya todo es correcto  

![Todo correcto](https://i.imgur.com/MSa6c23.png)  

Además, tengo **_clean\_code_** y **_parent\_code_** generados.

![clean_code y parent_code generados](https://i.imgur.com/znpxT8s.png)  

Ahora tengo que unirlos y para ello utilizo una función que se llama **_Append streams_**  

![Append streams](https://i.imgur.com/EwZebyf.png)  

Ejecutamos y nos da un error  

![Error](https://i.imgur.com/CyFyDJk.png)  

Esto es debido a que en las propiedades le debo decir el orden de los **_Strings cut_**. Lo ponemos    

![Orden](https://i.imgur.com/JlnxQjY.png)  

¡Ejecutamos y listo!   

![Sin errores](https://i.imgur.com/DcRbzrV.png)  

Ahora tenemos que hacer un **_merge_** con los de nivel 2  

![merge](https://i.imgur.com/pCSHjHV.png)  

Hacemos un **_Inner Join_**, diciendo el orden de lo que recibe y los campos que une  

![Inner Join](https://i.imgur.com/TVc18bq.png)  

Nos da un warning y cerramos  

![warning](https://i.imgur.com/kbuRKpx.png)   

Ejecutamos  

![Ejecutamos](https://i.imgur.com/pkZbt6A.png)  

Ahora ya vemos los datos transformados  

![Datos transformados](https://i.imgur.com/sdmRi54.png)

![Datos transformados](https://i.imgur.com/AdzZezv.png)  

Ahora añadimos un ID único con **_Add sequence_**  

![Add sequence](https://i.imgur.com/UhVtBmz.png)  

Le damos nombre y dejamos los parámetros de incremento como están  

![ID único](https://i.imgur.com/cU4Jzmo.png)  

Seleccionamos los valores con un nuevo **_Select values_**  

![Select values](https://i.imgur.com/oAjbzZJ.png)  

Ejecutamos y tenemos los campos deseados y límpios  

![Campos desados y límpios](https://i.imgur.com/qAZVP4P.png)

![Campos desados y límpios](https://i.imgur.com/I89AbOT.png)

**_Nota_**: Los detalles explicativos de las transformaciones están en las transformaciones que hicimos en Python, ya que estamos haciendo el mismo trabajo  

## Transformación de datos con Pentaho (.JSON y dimensiones tabla BD)  

Vamos al fichero .JSON de paises y añadimos un filtro, para controlar que alpha-3 (iso3), no sea nulo  

![alpha-3 no nulo](https://i.imgur.com/TNvsz6R.png)  

Ahora aplicamos una secuencia  

![secuencia](https://i.imgur.com/eYJPoz6.png)  

![secuencia](https://i.imgur.com/tUbRbfA.png)  

Seleccionamos los valores que realmente necesitamos  

![selección](https://i.imgur.com/VRaNLMG.png)  

Ejecutamos y comprobamos el resultado  

![Run](https://i.imgur.com/psOhW48.png)  

Ahora extraeremos las dimensiones de la tabla **_trades_** (BD). Primero ordenaremos las dimensiones  

![sort rows](https://i.imgur.com/v3Uw0HY.png)

Relacionamos haciendo copia  

![relaciones](https://i.imgur.com/3k1eGFS.png)

Ordenamos la dimensión flow

![sort flow](https://i.imgur.com/xCeyGpY.png)

Ordenamos la dimensión año  

![sort year](https://i.imgur.com/mVwCyWa.png)

Ordenamos la dimensión quantity  

![sort quantity](https://i.imgur.com/IFM7YtQ.png)

Ahora vamos a identificar los valores únicos  

![unique rows](https://i.imgur.com/8oCIM5B.png)

Establecemos valores únicos para la dimensión flow  

![valores únicos de flow](https://i.imgur.com/BFS01zb.png)

Nos avisa, cuando aceptamos, de que los valores deben estar ordenados previamente (como hemos hecho)  

![aviso de sort](https://i.imgur.com/sqobKt6.png)

Hacemos los mismo con year  

![valores únicos de year](https://i.imgur.com/P3LRT7c.png)

Hacemos lo mismo con quantity  

![valores únicos de quantity](https://i.imgur.com/FrSiztc.png)

Agregamos secuencia para flow 

![secuencia flow](https://i.imgur.com/KN37ssq.png)

Agregamos secuencia para year

![secuencia year](https://i.imgur.com/0G7hF1G.png)

Agregamos secuencia para quantity  

![secuencia quantity](https://i.imgur.com/RzMw5T9.png)  

Ejecutamos y comprobamos  

![run](https://i.imgur.com/G8WKCko.png)

Necesitamos extraer los valores únicos, para dejar solo las FK (como hicimos en **_Python_**). Para hacerlo añadimos **_select values_**  

Seleccionamos valores para flow  

![flow](https://i.imgur.com/e38c1kd.png)

Seleccionamos valores para year  

![year](https://i.imgur.com/scKN1CU.png)

Seleccionamos valores para quantity  

![quantity](https://i.imgur.com/6SLnHK5.png)

Ejecutamos y comprobamos  

Flow  

![flow](https://i.imgur.com/fsXUM8i.png)

Year

![year](https://i.imgur.com/EMSObx7.png)

Quantity

![quantity](https://i.imgur.com/STOp57y.png)


## Transformación de datos con Pentaho (integración final)  

## Carga de datos con Pentaho  