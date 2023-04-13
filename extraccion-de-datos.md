# Extracción de datos  

## Sources  

* Formato: Es importante asegurarse de que los datos estén en un formato compatible con la herramienta de ETL que se está utilizando  
* Calidad de los datos: Es necesario verificar la integridad y la precisión de los datos antes de cargarlos  
* Frecuencia de actualización: Debemos determinar la frecuencia con la que los datos deben ser extraídos y actualizados  
* Accesibilidad: Debemos tener acceso a las fuentes de datos para poder extraerlos y cargarlos en el sistema  
* Seguridad: Debemos asegurarnos de que los datos estén protegidos y de que solo las personas autorizadas tengan acceso a ellos  
* Eficiencia: Debemos buscar la manera más eficiente de extraer y cargar los datos, para evitar retrasos y errores  
* Escalibilidad: Debemos tener en cuenta si la solución de ETL es escalable y si es posible manejar una cantidad creciente de datos en el futuro  

## Configuración de base de datos source y entorno para ETL en Python  

En esta clase sabremos cómo configurar una BD SQL, que será una de las 3 fuentes para extraer datos en el proyecto de ETL. Las otras dos fuentes son un archivo .JSON y otro .CSV, que veremos posteriormente  

Además, aprenderemos cómo conectarnos a esta base de datos OLTP con un software de administración de BD. Puede ser DataSpell, DBeaver o el de nuestra preferencia  

**Sugerimos usar DataSpell**. Más adelante de este tutorial, veremos cómo configurarlo  

Algo que tenemos que destacar, es que la BD SQL source no se tendría que crear en un proceso de ETL. Esta BD ya estaría creada en la infraestructura de sistemas y aplicaciones, de la empresa en la que estemos colaborando  

En este caso lo estamos haciendo por fines educativos para poder tener una BD de donde obtener datos y conocer el proceso de extracción  

Para la configuración de nuestra BD source usaremos **PostgreSQL**. Podemos utilizarlo de dos formas, una instalación local de PostgreSQL o una configuración por Docker. **Sugerimos hacerlo por Docker**  

### ***1. Crear contenedor en Docker***  

**Docker es un entorno de gestión de contenedores**, de manera que usaremos una imagen base con toda la configuración que requerimos sin instalar necesariamente en nuestra máquina. Solo utilizando los recursos del sistema para ejecutar dicha imagen, algo similar a una máquina virtual  

----------------

***Instalación de Docker***  

Según el SO que utilicemos puede variar la instalación, así que a continuación daremos las indicaciones base para la instalación según el SO:  

* ***Instalación en Windows con WSL (recomendada)***  

Debes descargar el instalador desde la página de [Docker for Windows](https://docs.docker.com/desktop/install/windows-install/)  

Cuando ya tenemos instalado **Docker Desktop**, debmos abrirlo y asegurarnos de que la opción **“Use the WSL 2 based engine”** esté habilitada:  

![Use the WSL 2 based engine](https://i.imgur.com/4bScjQK.png)

Luego en la sección **“Resources > WSL Integration”**, debemos asegurarnos de que la opcion **“Enable integration with my default WSL distro”**, esté habilitada:  

![Enable integration with my default WSL distro](https://i.imgur.com/mJxXzlB.png)  

Podemos ver más detalles de Docker con WLS, [Docker Desktop WSL 2 backend](https://docs.docker.com/desktop/windows/wsl/)  

* ***Instalación en Windows***  

Debemos descargar el instalador desde la página de [Docker for Windows](https://docs.docker.com/desktop/install/windows-install/)  

Cuando tengamos instalado Docker Desktop, debemos tener en cuenta que, en la instalación con Windows, debemos tener Windows 10 de 64 Bits o superior y debemos habilitar el [Hyper-V](https://docs.docker.com/desktop/install/windows-install/#system-requirements) de Windows  

Para más detalles, ir a **habilitar [ Hyper-V](https://docs.docker.com/desktop/install/windows-install/#system-requirements) desde la interfaz de Windows**  

![Habilitar Hyper-V desde la interfaz de Windows](https://i.imgur.com/mJxXzlB.png)

* ***Instalación en macOS***  

En Mac tenemos dos opciones. Todo dependerá si tenemos los nuevos chips M1 o Intel, ya que hay un instalable apropiado para ambas arquitecturas de chip. Podemos escoger el instalable desde [Install Docker Desktop on Mac](https://docs.docker.com/desktop/install/mac-install/)  

Adicionalmente, si tenemos los nuevos chips M1, debmos ejecutar la siguiente instrucción en la terminal 

````
softwareupdate --install-rosetta
````

Una vez descargado el instalador adecuado, solo debemos seguir los pasos y pasar Docker Desktop a nuestras aplicaciones  

![Pasar Docker Desktop a nuestras aplicaciones](https://i.imgur.com/4Nwbwd0.png)

* ***Instalación en Ubuntu***  

Estos son los pasos para instalarlo en Ubuntu, sin embargo, también podemos ver directamente [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)  

````
sudo apt-get update
````
````
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
````
````
sudo mkdir -p /etc/apt/keyrings
````
````
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
````
````
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
````
````
sudo apt-get update
````
````
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
````
````
sudo docker run hello-world
````

Para otras distribuciones de Linux:

* [Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/)  
* [Install Docker Engine on Debian](https://docs.docker.com/engine/install/debian/)  
* [Install Docker Engine on Fedora](https://docs.docker.com/engine/install/fedora/)  

----------------

Una vez que tengamos instalado Docker en nuestro ordenador, ejecutaremos este comando en la terminal:  

***WSL 2, Linux o macOS***

````
sudo docker run -d --name=postgres -p 5432:5432 -v postgres-volume:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpass postgres
````

***Windows***

````
docker run -d --name=postgres -p 5432:5432 -v postgres-volume:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpass postgres
````

Como podemos notar, en este comando se especifica lo siguiente para la creación de la BD con Docker:

* Nombre del ccontenedorontainer: --name=postgres  
* Puerto a compartir con la máquina local: -p 5432:5432  
* Volumen para el manejo de disco e información: -v postgres-volume:/var/lib/postgresql/data  
* Password en PostgreSQL: POSTGRES_PASSWORD=mysecretpass  

------------

* ***Instalación local de PostgreSQL (opcional)***  

Sugerimos intentarlo con Docker ya que puede agilizar nuestro flujo de trabajo, pero si no estas es la manera de instalarlo:  

Primer paso: ir a https://www.postgresql.org/  

Actualmente, la página web oficial de postgres es esta:  

![Página web oficial de Postgres](https://i.imgur.com/xE2CDmp.jpg)

Hacemos clic en el botón ***'Download’ (Descarga)*** que se encuentra en la parte inferior derecha. Veremos lo siguiente:

![Download](https://i.imgur.com/xROfeUL.png)

Veremos lo siguiente:  

Seleccionamos la opción que corresponda con nuestro SO, para éste caso hacemos clic en “Windows”:  

Veremos en la parte inferior:  

![Windows](https://i.imgur.com/aTzOgxO.png)  

Hazcemos clic en el enlace “Download the installer”. Esto nos va a llevar a la Web de Enterprise DB o EDB. EDB es una empresa que ofrece servicios sobre el motor de BD PostgreSQL y ofrece un instalador para Postgres de manera gratuita  

![Download the installer](https://i.imgur.com/3fGQAsC.png)  

Es altamente recomendable seleccionar la penúltima o antepenúltima versión. Si bien la última versión estable está disponible, no es recomendable instalarla en nuestro equipo, ya que al momento de instalarla o usar un servicio en la Nube para Postgres, lo más seguro es que no esté disponible y sólo esté hasta la versión anterior. Esto es porque todos los proveedores de Infraestructura no disponen de la versión de Postgres más actualizada siempre (tardan un poco en conseguir los nuevos lanzamientos)  

Si tenemos un equipo con Linux, la instalación la podemos hacer directamente desde los repositorios de Linux, EDB ya no ofrece soporte para instaladores en Linux debido a que se ha vuelto innecesario, el repositorio de Linux con PostgreSQL ofrece una manera mucho más sencilla y estándar para instalar PostgreSQL en Linux.

Segundo paso: descargamos la versión “Windows x86-64” (porque nuestro sistema operativo es de 64 bits). En caso de que nuestro equipo sea de 32 bits debemos seleccionar la opción “Windows x86-32”.

Hacemos clic en Download y guardamos el archivo que tendrá un nombre similar a:  

“postgresql-11.5-2-windows-x64.exe”

Ahora vamos a la carpeta donde descargamos el archivo .exe, debe ser de aproximadamente 190 MB, lo ejecutamos  

Veremos lo siguiente:  

![Ejecutamos instalador](https://i.imgur.com/TrVEFfj.png)  

Hacemos clic en siguiente. Si deseamos cambiar la carpeta de destino, ahora es el momento:  

![Carpeta de destino](https://i.imgur.com/owIqRkj.png)  

Seleccionamos los servicios que queremos instalar. En este caso dejamos seleccionados todos menos “Stack Builder”, ya que ofrece la instalación de servicios adicionales que no necesitamos hasta ahora. Luego hacemos clic en siguiente:

![Servicios](https://i.imgur.com/gq61mTt.png)  

Ahora indicamos la carpeta donde iran guardados los datos de la BD, es diferente a la ruta de instalación del Motor de PostgreSQL, pero normalmente será una carpeta de nuestra carpeta de instalación. Podemos cambiar la ruta si queremos tener los datos en otra carpeta. Hacemos clic en siguiente  

![Carpeta donde iran guardados los datos de la BD](https://i.imgur.com/uF6GfW5.png)  

Ingresamos la contraseña del usuario administrador. De manera predeterminada, Postgres crea un usuario super administrador llamado postgres que tiene todos los permisos y acceso a toda la BD, tanto para consultarla como para modificarla. En éste paso indicamos la clave de ese usuario super administrador  

Debemos poner una clave muy segura y guardarla porque la vamos a necesitar después. Luego hacemos clic en siguiente  

![Contraseña segura](https://i.imgur.com/qAtoFr1.png)  

Ahora si queremos cambiar el puerto por donde el servicio de Postgresql estará escuchando peticiones, podemos hacerlo en la siguiente pantalla, si queremos dejar el predeterminado simplemente hacemos clic en siguiente  

![Puerto del servicio Postgresql](https://i.imgur.com/nTvsD6x.png)  

La configuración regional puede ser la predeterminada, no es necesario cambiarla, incluso si vamos a usarla en español, ya que las tildes y las eñes estarán soportadas si dejamos la configuración regional predeterminada. Es útil cambiarla cuando queramos dejar de soportar otras funciones de idiomas y lenguajes diferentes a uno específico. Luego hacemos clic en siguiente:  

![Configuración regional](https://i.imgur.com/pmkxdJl.png)  

En pantalla aparecerá el resumen de lo que se va a instalar:  

![Resumen](https://i.imgur.com/uiRrPsC.png)  

Al hacer clic en siguiente se muestra una pantalla que indica que PostgreSQL está listo para instalar, al hacer clic de nuevo en siguiente iniciará la instalación, espera un par de minutos hasta que la aplicación termine  

Una vez terminada la instalación, aparecerá en pantalla un mensaje mostrando que PostgreSQL ha sido instalado correctamente  

![PostgreSQL ha sido instalado correctamente](https://i.imgur.com/GBBrvzm.png)  

Podemos cerrar ésta pantalla y proceder a comprobar que todo quedó instalado correctamente  

Vamos a buscar el programa PgAdmin, el cual usaremos como editor favorito para ejecutar en él todas las operaciones sobre nuestra BD  

También vamos a buscar la consola. Tanto la consola como PgAdmin son útiles para gestionar nuestra BD, una nos permite ingresar comando por comandos y la otra nos ofrece una interfaz visual fácil de entender para realizar todas las operaciones  

En el menú de Windows (o donde aparecen instalados todos los programas) buscamos “PgAdmin…”  

![Menú de Windows](https://i.imgur.com/VqoUnuz.png)  

Ahora buscamos “SQL Shell…”  

![SQL Shell](https://i.imgur.com/TcBZ8yh.png)  

Efectivamente, ahora aparecen las herramientas que vamos a utilizar  

Ahora vamos a crear una BD de prueba usando la consola y comprobaremos si existe usando PgAdmin, la crearemos para validar que la conexión con el servicio de base de datos interno funciona correctamente  

Para ello abrimos la consola, buscamos SQL Shell y lo ejecutamos. Veremos algo así:  

![SQL Shell](https://i.imgur.com/xdXr3bD.png)  

Lo que vemos en pantalla es la consola esperando que ingresemos cada parámetro para la conexión  

Primero está el nombre del parámetro. En éste caso es “Server” seguido de unos corchetes que contienen el valor predeterminado. Si presionamos “Enter” sin digitar nada la consola asumirá que te refieres al valor predeterminado, si en éste caso presionamos “Enter” el valor asumido será “Localhost”. Localhost se refiere a nuestra propia máquina, si hemos instalado la BD en el mismo pc que estamos usando para la consola, el valor correcto es Localhost o 127.0.0.1 (representan lo mismo)  

Podemos dejar todos los valores predeterminados (presionando “Enter”) hasta que la consola pregunte por la clave del usuario maestro:  

![Todos los valores predeterminados](https://i.imgur.com/gozZ5ju.png)  

Debemos poner la clave que usamos cuando estábamos instalando Postgres, de lo contrario no podremos acceder. Presionamos Enter y veremos a continuación una pantalla que nos indica que estamos logueados en la BD y estamos listos para hacer modificaciones  

De manera predeterminada, la BD instalada es Postgres, la cual no debemos tocar, ya que ejecuta funciones propias del motor. Es usada por el Motor de PostgreSQL para interactuar con todas las BD que vayamos a crear en el futuro  

La siguiente imagen indica que estamos conectados a la BD Postgres. Vamos a crear una BD nueva y luego saltar el cursor a esta BD recién creada  

![Estamos conectados a la BD Postgres](https://i.imgur.com/jBAJpMw.png)  

Para ello escribimos el comando “CREATE DATABASE transporte_publico;” y presionamos “Enter”. Veremos:  

![Creamos transporte_publico](https://i.imgur.com/5PdfJyW.png)  

El mensaje “CREATE DATABASE” justo después de la línea que acabamos de escribir indica que la BD fue creada correctamente  

Para ir a la BD recién creada ejecutamos el comando “\c transporte_publico”, el cursor mostrará lo siguiente:  

![I r a la BD recién creada](https://i.imgur.com/UUJJldp.png)  

Ahora vamos a validar desde PgAdmin que la base de datos fué creada correctamente. Abrimos PgAdmin y nos encontramos con una lista de items a la izquierda, lo que significa que de manera predeterminada PgAdmin ha creado un acceso a nuestra BD local, el cual llamó “PostgreSQL XX”:  

![Validación](https://i.imgur.com/uWUUvdM.png)  

Al hacer hacer doble clic sobre éste elemento (“PostgreSQL XX”) nos pedirá poner la clave que hemos determinado para el super usuario postgres, al igual que la consola, hasta no ingresarla correctamente no nos podremos conectar:  

![Poner la clave](https://i.imgur.com/vqVd9I3.png)  

Ingresamos la clave. Recomendamos seleccionar la opción “Save Password” o “Guardar Contraseña”. Si la máquina sobre la que estemos trabajando es de confianza, que seamos sólo nostros o nuestro equipo quien tenga acceso a ella, de lo contrario, no debemos guardar la contraseña para mantenerla segura  

Veremos la lista de BD disponibles, la predeterminada “postgres” y la que acabamos de crear usando la consola, lo que comprueba que la BD y la consola funcionan correctamente  

![Lista de BD disponibles](https://i.imgur.com/7OiChwL.png)  

Ahora procedemos a eliminar la BD recién creada para comprobar que PgAdmin está correctamente configurada y si pueda realizar cambios sobre la BD  

Para ello hacemos clic derecho sobre el elemento “transporte_publico” y seleccionamos la opción “Delete/Drop”. Al mensaje de confirmar hacemos clic en OK  

Con ello, si el elemento “transporte_publico” desaparece del menú de la izquierda comprobamos que PgAdmin funcionan correctamente  

--------------

### ***2. Validar contenedor creado***  

Una vez que hayamos creado el contenedor de Docker, usaremos el comando docker ps en la terminal. Podremos ver todos los contenedores que se encuentran en ejecución actualmente y una descripción  

Deberemos ver la **IMAGE postgres**  

![IMAGE postgres](https://i.imgur.com/E4cXTAj.png)

* ***3. Configurar DataSpell***  

Para conectarnos a la BD usaremos un software de administración de BD. Existen varios que podemos utilizar. Para el seguimiento del curso sugerimos utilizar **DataSpell** o, en su defecto, **DBeaver**  

DataSpell es un **IDE completo para DS** donde, además de conectarnos y hacer consultas a BD, podremos ejecutar Jupyter Notebooks. **¡Todo en el mismo lugar!**  

![IDE completo para DS](https://i.imgur.com/L7PeZcm.png)  

Una de sus desventajas es que es de pago, pero tiene un período de prueba de 30 días para que lo probemos con este curso. Además existen ciertas opciones para obtener licencias para [estudiantes de bachillerato y universidad](https://www.jetbrains.com/community/education/#students)  

En caso de que decidamos usar DBeaver en lugar de DataSpell, utilizaremos nuestro entorno local de **Jupyter Notebooks con Anaconda** para la ejecución del código Python de las siguientes clases  

***Instalación de DataSpell***  

1. Para instalar DataSpell vamos a [su sitio web aquí](https://www.jetbrains.com/dataspell/) y descargamos la versión para nuestro SO  

2. Lo instalamos siguiendo las instrucciones que aparezcan en el instalador  

Cuando solicite actualizar PATH Variable aceptamos marcando la opción que indique. Esto es para evitar errores de ambientes en el futuro. En Windows se ve así:  

![Actualizar PATH Variable](https://i.imgur.com/q88cr5J.png)  

Al finalizar pedirá reiniciar el ordenador:

![Pedirá reiniciar el ordenador](https://i.imgur.com/LgrOvXp.jpg)  

4. Abrimos DataSpell ya que se haya instalado. Al hacer esto por primera vez  pedirá iniciar sesión. Elegimos la versión free trial registrando nuestra cuenta para ello  

5. Una vez que tengamos nuestra cuenta configurada pedirá elegir un intérprete de Python  

Previamente deberemos tener instalado **Anaconda** en nuestro SO. Recomendamos crear un **ambiente de Anaconda (Conda environment)** único para el proyecto del curso. Llamaremos al ambiente fundamentos-etl.

Elegimos el ambiente de Anaconda que usaremos para el proyecto y presionamos el botón **Launch DataSpell**  

![Elegimos el ambiente de Anaconda](https://i.imgur.com/pE6VkZJ.png) 

Elegimos un intérprete de Anaconda servirá para ejecutar Jupyter Notebooks en DataSpell  

6. Creamos un nuevo Workspace en DataSpell. Presionamos el botón File en la barra superior y luego elegimos la opción New Workspace Directory  

![Creamos un nuevo Workspace](https://i.imgur.com/Nb3uRDC.jpg)  

Llamamos fundamentos-etl al workspace y presionamos el botón azul Create  

![ImgLlamamos fundamentos-etl al workspaceur](https://i.imgur.com/fHH6EGX.jpg)  

***Elegir ambiente de WSL2 (opcional si usamos WSL)***

Si queremos usar DataSpell en nuestro entorno de **Windows con WSL 2**, deberemos conectar DataSpell al ambiente de Anaconda que tenga nuestro WSL  

0. Creamos un ambiente de Anaconda en nuestro WSL dedicado al proyecto del curso si todavía no lo hemos hecho. Lo llamaremos fundamentos-etl

````
conda create --name fundamentos-etl python=3.9
````

1. Después vamos a DataSpell en su parte inferior donde aparece el intérprete. Presionamos la dirección que aparece y elegimos la opción **Interpreter Settings**  

![Intérprete](https://i.imgur.com/mhjpHVE.jpg)

2. Escogemos el workspace fundamentos-etl creado anteriormente en DataSpell  

OJO: el workspace y el Anaconda Environment no son lo mismo. El Anaconda Environment lo vamos a cargar dentro del Workspace de DataSpell  

Después presionamos el botón **Add Interpreter** e inmediatamente selecciona la opción **On WSL**  

![Add Interpreter](https://i.imgur.com/bkuFqzT.jpg)  

3. Elegimos la distribución de Linux a usar y hacemos clic en el botón Next cuando aparezca el mensaje "Instrospection completed succesfully!  

![Elegimos la distribución de Linux](https://i.imgur.com/AJ4SueQ.jpg)  

4. Elegimos el intérprete a usar. Este puede ser un **Virtualvenv Environment**, el **System Interpreter** o un **Conda Environment**. Elegimos la opción de **Conda Environment**  

![Elegimos el intérprete a usar](https://i.imgur.com/eBD3Rtk.jpg)  

5. Miramos la casilla **Use existing environment**. Elegimos el **Conda Environment** de WSL que usaremos en nuestro proyecto. Anteriormente debimos crearlo desde la terminal en WSL y llamarlo fundamentos-etl  

Finalmente, presionamos el botón azul **Create**  

![Create](https://i.imgur.com/rydaN5Q.jpg)  

6. Para terminar el proceso presionamos el botón azul **OK** en la parte inferior  

![Terminar el proceso](https://i.imgur.com/INQLgEZ.jpg)  

7. Listo, ya deberá aparecer nuestro entorno de Anaconda en WSL cargado en la parte inferior de DataSpell  

![Aparece entorno de Anaconda en WSL cargado](https://i.imgur.com/BORc7bM.jpg)  

Si aparece un error que indique que el ambiente no puede ser usado como el intérprete del workspace es porque estamos intentando cargar el ambiente en el workspace general y no en un workspace de DataSpell que hemos creado  

[Aquí](https://www.jetbrains.com/help/dataspell/using-wsl-as-a-remote-interpreter.html) encuentramos la guía oficial de cómo conectar nuestro DataSpell al intérprete de Python o Anaconda en WSL, por si necesitamoss aprender a configurarlo a detalle  

Recordemos que otra alternativa en Windows es instalar Anaconda para Windows y conectar DataSpell directamente a esta versión  

### ***4. Conexión a la BD PostgreSQL***  

Sigueamos estos pasos para conectarnos a la BD postgres desde DataSpell  

1. Abrimos DataSpell en nuestro ordenador  

![Abrimos DataSpell](https://i.imgur.com/7GguiPy.jpg) 

2. Vamos a la pestaña de **Database** y en ella hacemos clic en el **botón de signo de +**  

![Database](https://i.imgur.com/2HePsjV.jpg)  

3. Seleccionamos la opción de **Data Source** y dentro del menú desplegable elige la opción de **PostgreSQL**  

![Data Source](https://i.imgur.com/o0hPU6M.jpg)  

4. Introducimos los datos siguientes en la conexión:  

* **Name**: local_postgres
* **Host**: localhost
* **Port**: 5432
* **User**: postgres
* **Database**: postgres
* **Url (opcional)**: jdbc:postgresql://localhost:5432/postgres
* **Password**: mysecretpass  

5. Hacemos clic en el botón de **Test Connection** para probar la conexión. Puede que solicite actualizar unos drivers, aceptamos. Una vez que indique que la conexión es exitosa, hecemos clic en el **botón OK**  

![Test Connection](https://i.imgur.com/YQTa057.jpg)  

6. Listo, ya tenemos nuestra BD conectada en DataSpell  

![BD conectada en DataSpell](https://i.imgur.com/gyTRkB0.jpg) 

### ***4. Cargar datos en la BD Postgres***  

Dentro de DataSpell, ya con la conexión a la BD previamente creada, ejecutaremos el script 

````
postgres_public_trades.sql
````

Lo podemos descargar [aquí de Google Drive](https://drive.google.com/file/d/19U7l0kp3mEh8SYYG6BjoDp0kVPYWDsqI/view)  

**Este archivo pesa cerca de 500 MB**, por lo que puede demorar su descarga. Contiene la creación de una tabla llamada trades y los insert de registros de la tabla  

Es posible que al intentar **ejecutar este script en DBeaver** no sea posible por falta de memoria. Sugerimos cortarlo en varias partes y cargar cada script independientemente  

![Ejecutar este script en DBeaver](https://i.imgur.com/alGTJg9.jpg)  

Una vez descargado el archivo ***postgres_public_trades.sql** debemos seguir estos pasos para cargar los datos con DataSpell:  

1. Hacemos clic derecho sobre la BD de PostgreSQL  

![Clic derecho sobre la BD de PostgreSQL](https://i.imgur.com/Zb584gM.jpg)  

2. Posteriormente hacemos clic en **SQL Script** y luego en **Run SQL Scripts**  

![Run SQL Scripts](https://i.imgur.com/CtoXKie.jpg)  

3. Ubicamos el script descargado en nuestro ordenador y hacemos clic en **OK**  

![OK](https://i.imgur.com/26sAnxg.jpg)  

La creación de la tabla y la carga de datos puede tardar cerca de 15-20 minutos en DataSpell  

![Carga de datos](https://i.imgur.com/fbmg74S.jpg)  

### ***5. Prueba la tabla trades***  

Una vez terminada la ejecución del script, consultamos la tabla Trades ya cargada. Abreimosel editor de queries desde nuestra BD en DataSpell y hacemos la siguiente consulta:

````
SELECT * FROM trades;
````

![SELECT](https://i.imgur.com/kMYD1l0.jpg)  


**¡Listo!** Ya tenemos lo esencial para comenzar a extraer datos de una BD OLTP y ejecutar nuestros notebooks de Python    

## Extracción de datos con Python y Pandas  
