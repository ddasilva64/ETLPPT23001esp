                                                                                                                                                                                                                                       
Para la configuración de la BD usaremos **_PostgreSQL_**. Tenemos dos alternativas, para hecer la instalación:
* **_PgAdmin_** (Windows)  
* **_Docker_** (WSL)  

A efectos didácticos, instalaremos **_PostgreSQL_** de las dos formas  

### **_1. Creación del contenedor en Docker_**  

**_Docker es un entorno de gestión de contenedores_**, de tal manera que **_usaremos una imagen base con toda la configuración_** que requerimos. Si solo instalásemos la imagen **_Docker_**, no nos haría falta instalarla en nuestra máquina. Solo utilizaríamos los recursos del sistema para ejecutar dicha imagen, es decir, sería algo **_similar a una máquina virtual_**  

----------------

#### **_1.1. Instalación de Docker_**  

La instalación varía, dependiendo del SO que utilicemos en nuestro ordenador  

##### **_1.1.1. Instalación en Windows con WSL (recomendado)_**  

* **_WSL_**: El subsistema de Windows para Linux, es una característica del SO Windows, el cual permite ejecutar un sistema de archivos Linux, junto con herramientas de línea de comandos y aplicaciones de GUI de Linux, directamente en Windows, junto con el escritorio y las aplicaciones tradicionales de Windows  

Primero, descargaremos el instalador de [Docker for Windows](https://docs.docker.com/desktop/install/windows-install/)  

Cuando hayamos instalado **_Docker Desktop_**, lo abriremos y nos aseguraremos de que la opción **_"Use the WSL 2 based engine"_** esté habilitada    

![Use the WSL 2 based engine](https://i.imgur.com/3mYqQY4.png)  
Como podemos ver en la imagen, lo está (por defecto) y no es modificable  

En la sección **_"Resources > WSL Integration"_**, nos aseguraremos de que la opcion **_"Enable integration with my default WSL distro"_**, esté habilitada    

![Enable integration with my default WSL distro](https://i.imgur.com/xtbjYsW.png)

Más detalles en [Docker Desktop WSL 2 backend](https://docs.docker.com/desktop/windows/wsl/)  

##### **_1.1.2. Instalación en Windows_**  

Descargaremos el instalador de [Docker for Windows](https://docs.docker.com/desktop/install/windows-install/)  

Cuando hayamos instalado **_Docker Desktop_**, teniendo en cuenta que nuestro SO sea Windows 10 o superior (de 64 Bits), habilitarermos [Hyper-V](https://docs.docker.com/desktop/install/windows-install/#system-requirements) de Windows  

Habilitaremos **_Hyper-V_** desde la interfaz de Windows  

![Habilitar Hyper-V desde la interfaz de Windows](https://i.imgur.com/xqFjQUA.png)

![Habilitar Hyper-V desde la interfaz de Windows](https://i.imgur.com/deXctRv.png)

##### **_1.1.3. Instalación en macOS_**  

En Mac tenemos dos opciones, lo cual dependerá de qué arquitectura de microprocesador tengamos (M1 o Intel). Los tenemos disponibles en [Install Docker Desktop on Mac](https://docs.docker.com/desktop/install/mac-install/)  

Adicionalmente, si tenemos los nuevos chips M1, deberemos ejecutar la siguiente instrucción en la terminal  

````
softwareupdate --install-rosetta
````

Una vez descargado el instalador adecuado, solo debemos seguir los pasos y pasar **_Docker Desktop_** a nuestras aplicaciones  

![Pasar Docker Desktop a nuestras aplicaciones](https://i.imgur.com/4Nwbwd0.png)

##### **_1.1.4. Instalación en Ubuntu_**  

Estos son los pasos para instalarlo en la distribución Linux Ubuntu, sin embargo, también lo tenemos directamente [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)  

````
sudo apt-get update
````
![paso 1](https://i.imgur.com/17yZfTT.png)  

````
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
````
![paso 2](https://i.imgur.com/xHJmy7p.png)  

````
sudo mkdir -p /etc/apt/keyrings
````
![paso 3](https://i.imgur.com/hpnM0HD.png)  

````
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
````
![paso 4](https://i.imgur.com/lHv3VwY.png)  

````
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
````
![paso 5](https://i.imgur.com/2QxnqL1.png)  

````
sudo apt-get update
````
![paso 6](https://i.imgur.com/FUgO4yJ.png)  

````
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
````
![paso 7](https://i.imgur.com/CBhgQJ6.png)   

````
sudo docker run hello-world
````
![paso 8](https://i.imgur.com/w2Y4NBA.png)  

````
docker info
````
![paso 9](https://i.imgur.com/Lvftm3M.png)  

Verificamos las imágenes en **_Docker Desktop_**  

![Verfifación](https://i.imgur.com/v4C22FY.png)  

Accedemos a la imagen de **_Postgre SQL_** en Linux  

![Verificación en Linux](https://i.imgur.com/FCb2cG1.png)   

##### **_1.1.5. Para otras distribuciones de Linux_**   

* [Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/)  
* [Install Docker Engine on Debian](https://docs.docker.com/engine/install/debian/)  
* [Install Docker Engine on Fedora](https://docs.docker.com/engine/install/fedora/)  

----------------

### **_2. Instalación de Postgre SQL en Docker_**   

Una vez que tengamos instalado Docker en nuestro ordenador, ejecutaremos este comando en la terminal:  

#### **_2.1. WSL 2, Linux o macOS_**  

````
sudo docker run -d --name=postgres -p 5432:5432 -v postgres-volume:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpass postgres
````

#### **_2.2. Windows_**  

````
docker run -d --name=postgres -p 5432:5432 -v postgres-volume:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpass postgres
````

![Creación BD con Postgres en Docker](https://i.imgur.com/GNIOzlC.png)  

Como podemos notar, en este comando se especifica lo siguiente para la creación de la BD con **_Docker_**:   

* **_Contenedor_**: --name=postgres  
* **_Puerto a compartir con la máquina local_**: -p 5432:5432  
* **_Volumen para el manejo de disco e información_**: -v postgres-volume:/var/lib/postgresql/data  
* **_Contraseña en PostgreSQL_**: POSTGRES_PASSWORD=mysecretpass  

**_¡Atención!_**: Posteriormente revisaremos el puerto por defecto, de la BD  

------------

### **_3. Instalación local de PostgreSQL (opcional)_**  

Docker agiliza nuestro flujo de trabajo, pero si queremos instalarlo localmente, ésta es la manera de hacerlo:  

#### **_3.1. Bajar el instalador_**  

Vamos a la página web oficial de [Postgre SQL](https://www.postgresql.org/)    

![Página web oficial de Postgre SQL](https://i.imgur.com/iEU5s9u.png)

Hacemos click en el botón **_"Download"_** (Descarga)  

![Download](https://i.imgur.com/xROfeUL.png)

Seleccionamos el instalador correspondiente a nuestro SO (Windows, en nuestro caso)  

![Windows](https://i.imgur.com/sJT83jH.png)

Hacemos click en **_"Download the installer"_**. Esto nos va lleva a la Web de **_Enterprise DB o EDB_**, que es una empresa que ofrece servicios sobre el motor de BD **_Postgre SQL_** y un instalador gratuito  

![Download the installer](https://i.imgur.com/vbVYOBa.png)  

**_Nota_**: Es recomendable seleccionar la penúltima o antepenúltima versión. Si bien la última versión estable está disponible, no es recomendable instalarla en nuestro equipo, ya que al momento de instalarla o usar un servicio en la nube para **_Postgre SQL_**, lo más seguro es que sólo lo esté hasta la versión anterior. Esto es porque no todos los proveedores de Infraestructura disponen de la versión más actualizada siempre (tardan un poco en conseguir los nuevos lanzamientos)  

Si nuestro SO es Linux, la instalación la podemos hacer directamente desde los repositorios de Linux, **_EDB_** ya no ofrece soporte para instaladores en este SO, debido a que se ha vuelto innecesario, el repositorio ofrece una manera mucho más sencilla y estándar para instalarlo  

Descargamos la versión **_"Windows x86-64"_** (64 bits)  

Hacemos click en **_Download_** y guardamos el archivo   

#### **_3.2. Ejecutar el instalador_**  

Vamos a la carpeta donde hemos descargadio el instalador y lo ejecutamos  

![Ejecutamos instalador](https://i.imgur.com/xzzhyX0.png)

Cambiamos la **_carpeta de destino_** (si lo deseamos) y hacemos click en siguiente  

![Carpeta de destino](https://i.imgur.com/hhlnShg.png)

Seleccionamos los servicios que queremos instalar. En nuestro caso dejamos seleccionados todos menos **_"Stack Builder"_**, ya que ofrece la instalación de servicios adicionales que no necesitamos. Luego hacemos click en siguiente  

![Servicios](https://i.imgur.com/c9hY9M0.png)

Indicamos la **_carpeta donde iran guardados los datos de la BD_**, la cual es diferente de la ruta de instalación del motor de **_Postgre SQL_**, pero que normalmente será una subcarpeta de la carpeta de instalación (podemos cambiarla, si lo deseamos). Hacemos click en siguiente  

![Carpeta donde iran guardados los datos de la BD](https://i.imgur.com/DWtwdXV.png)

De manera predeterminada, **_Postgre SQL_** crea un super usuario (administrador) llamado **_"postgres"_**, el cual tiene todos los permisos de acceso (consulta y modificación), de la BD. Le indicamos la contraseña y hacemos click en siguiente  

**_Nota_**: Debemos poner una contraseña muy segura y guardarla, porque la vamos a necesitar después  

![Contraseña segura](https://i.imgur.com/r1oyBWB.png)

A continuación, podemos cambiar el puerto, por donde el servicio de **_Postgre SQL_** escuchará peticiones  

![Puerto del servicio Postgresql](https://i.imgur.com/pp0iJZm.png)  

**_Nota_**: Hemos hecho la instalación **_Docker_** en el puerto 5432, ahora propone el 5433. Lo tendremos en cuenta posteriormente  

La **_configuración regional_** puede ser la predeterminada, no es necesario cambiarla. Es útil cambiarla cuando queramos dejar de soportar otras funciones de idiomas y lenguajes diferentes a uno específico. Luego hacemos click en siguiente  

![Configuración regional](https://i.imgur.com/F9lJdee.png)  

Ahora, aparecerá, en pantalla, el resumen de lo que se va a instalar  

![Resumen](https://i.imgur.com/uerwtS7.png)  

Al hacer click en siguiente, se muestra una pantalla que indica que **_Postgre SQL_** está listo para instalarlo en nuestro ordenador  

![Listo para instalar](https://i.imgur.com/jqlodjJ.png)

Al finalizar la instalación, aparecerá en pantalla un mensaje mostrando que **_Postgre SQL_** ha sido instalado correctamente  

![Postgre SQL ha sido instalado correctamente](https://i.imgur.com/7gSHJQO.png)

Podemos cerrar ésta pantalla y proceder a comprobar que todo quedó instalado correctamente  

#### **_3.3. Comprobar la instalación local de Postgre SQL_**  

Tanto **_SQL Shell_** (consola) como **_PgAdmin_** son útiles para gestionar nuestra BD, una nos permite escribir comandos y la otra nos ofrece una interfaz visual fácil de entender, para realizar todas las operaciones   

Buscamos el programa **_PgAdmin_** en el menú de Windows. Usamos este programa como editor para ejecutar en él todas las operaciones sobre nuestra BD   

![Menú de Windows](https://i.imgur.com/uPWcqNF.png)  

Ahora buscamos **_SQL Shell_** (consola)  

![SQL Shell](https://i.imgur.com/k59rZgn.png)  

Creamos una BD de prueba usando **_SQL Shell_** y comprobaremos el resultado en **_PgAdmin_**, así validaremos que la conexión con el servicio de BD interno funciona correctamente  

Abrimos **_SQL Shell_**  

![SQL Shell](https://i.imgur.com/Uv9nevg.png)  

Lo que vemos en pantalla es la consola esperando que pongamos los parámetro de la conexión  

El valor predetermonado (entre corchetes) del parámetro **_"Server"_** es **_"localhost"_**. Si presionamos **_"Enter"_**, sin teclear nada, la consola asumirá que nos referimos al valor predeterminado. Localhost se refiere a nuestra propia máquina, si hemos instalado la BD en el mismo ordenador en el que usamos la consola, el valor correcto es Localhost o 127.0.0.1 (representan lo mismo)  

Podemos dejar todos los valores predeterminados (presionando "Enter"), hasta que la consola pregunte por la contraseña del administrador (la que le hemos dado en la instalación)  

![Todos los valores predeterminados](https://i.imgur.com/1n1D0QQ.png)  

Presionamos **_"Enter"_** y vemos a continuación una pantalla, que nos indica que estamos logueados y listos para hacer modificaciones en la BD   

De manera predeterminada, la BD instalada es **_postgres_**, la cual no debemos tocar, ya que ejecuta funciones propias del motor de **_Postgre SQL_** para interactuar con todas las BD que vayamos a crear en el futuro  

La siguiente imagen indica que estamos conectados a la BD **_postgres_**  

![Estamos conectados a la BD Postgres](https://i.imgur.com/AcbGUQ8.png)

Creamos una BD nueva y luego saltamos el cursor a ésta. Para ello escribimos la instrucción **_“CREATE DATABASE transporte_publico;”_** y presionamos **_"Enter"_**  

![Creamos transporte_publico](https://i.imgur.com/K5A51XI.png)  

La instrucción **_“CREATE DATABASE”_** justo después de la línea que acabamos de escribir indica que la BD ha sido creada correctamente  

Para ir a la BD recién creada ejecutamos el comando **_"\c transporte_publico"_**   

![Ir a la BD recién creada](https://i.imgur.com/0H37d4n.png)

Ahora validamos, desde **_PgAdmin_**, que la BD fse ha creado correctamente. Abrimos **_PgAdmin_** y nos encontramos con una lista de items a la izquierda, lo que significa que, de manera predeterminada, **_PgAdmin_** ha creado un acceso a nuestra BD local   

![Validación](https://i.imgur.com/c3VD2Kh.png)

Al hacer hacer doble click sobre éste elemento (**_“PostgreSQL XX”_**) nos pedirá poner la contraseña que hemos definido para el super usuario **_postgres_**, al igual que lo hemos hecho en la consola  

![Poner la clave](https://i.imgur.com/OuEs7ys.png)  

Ahora vemos la lista de BD disponibles, la predeterminada **_“postgres”_** y la que acabamos de crear usando la consola, lo cual demuestra que la BD y la consola funcionan correctamente  

![Lista de BD disponibles](https://i.imgur.com/6LOsYQx.png)  

Ahora procedemos a eliminar la BD recién creada para comprobar que **_PgAdmin_** está correctamente configurada y que podemos hacer cambios en la BD  

Para ello hacemos click derecho sobre **_"transporte\_publico"_** y seleccionamos la opción **_"Delete/Drop"_**. En el mensaje de confirmación le hacemos click en OK  

![Drop database](https://i.imgur.com/2i4JvTP.png)

La BD **_"transporte\_publico"_** desaparece y con ello comprobamos que **_PgAdmin_** funciona correctamente  

![La BD ha sido eliminada](https://i.imgur.com/c1ukyAU.png)

--------------

### **_4. Validar contenedor creado_**  

Una vez que hayamos creado el contenedor **_Docker_**, usaremos el comando **_docker ps_** en la terminal. Con ello veremos todos los contenedores que se encuentran en ejecución actualmente y una descripción  

Vemos la **IMAGE _postgres_**  

![IMAGE postgres](https://i.imgur.com/nQokprK.png)  

**_Nota_**: Tal como se ha comentado anteriormente, el puerto de **_Postgre SQL_** en **_Docker_** es el 5432 (por defecto)  

### **_5. DataSpell_**  

Para conectarnos a la BD usaremos un software de administración de BD. Existen varios que podemos utilizar. Sugerimos utilizar **_DataSpell_** o, en su defecto, **_DBeaver_**. Tal como se ha comentado, con fines didácticos, utilizaremos los dos  

**_DataSpell_** es un **_IDE completo para DS_** donde, además de conectarnos y hacer consultas a la BD, podremos ejecutar **_Jupyter Notebooks_**  

![IDE completo para DS](https://i.imgur.com/L7PeZcm.png)  

Una de sus **_desventajas_**, no obstante, es que **_es de pago_**, pero tiene un período de prueba de 30 día. Además existen ciertas opciones para obtener licencias para [estudiantes de bachillerato y universidad](https://www.jetbrains.com/community/education/#students)  

Cuando utilicemos **_DBeaver_** en lugar de **_DataSpell_**, usaremos nuestro entorno local de **_Jupyter Notebooks_** con **_Anaconda_** para la ejecución del código **_Python_**  

#### **_5.1. Instalación de DataSpell_**  

Vamos a [sitio web de DataSpell](https://www.jetbrains.com/dataspell/) y descargamos la versión adecuada para nuestro SO   

Lo instalamos siguiendo las instrucciones  

![Setup DS](https://i.imgur.com/o0Znebc.png) 

Aceptamos la carpeta de instalación que propone  

![Path instalación](https://i.imgur.com/lotMOdf.png)

Le decimos que modifique la variable de entorno **_PATH_**, para evitar errores de ambiente en el futuro  

![Actualizar PATH Variable](https://i.imgur.com/39xjG1j.png) 

Al finalizar pedirá reiniciar el ordenador  

![Pedirá reiniciar el ordenador](https://i.imgur.com/DJullYb.png)  

Abrimos **_DataSpell_**, que ya se ha instalado. Al hacer esto por primera vez pide iniciar sesión. Elegimos la versión free trial registrando nuestra cuenta para ello  

![Seleccionamos start trial](https://i.imgur.com/oq5Suux.png)

Una vez que tenemos nuestra cuenta configurada pide elegir un intérprete de Python  

Previamente instalamos **Anaconda** en nuestro SO. Recomendamos crear un **_Conda environment_** (ambiente de Anaconda) único para el proyecto del curso. Llamaremos al ambiente **_fundamentos-etl_**  

-------------------

### **_6. Anaconda_**  

#### **_6.1. ¿Por qué Anaconda?_**  

**_Anaconda_** provee una plataforma muy completa, para poder desarrollar proyectos de DS. Simplifica la tarea de instalación y configuración de las distintas aplicaciones que necesitamos usar. Podemos utilizarlo, tanto por la terminal como por interfaz gráfica (GUI). Por el momento, avanzaremos con la segunda opción, porque es más amigable  

**_Ventajas_** de utilizar **_Anaconda_**:  

* **_Manejar los entornos de trabajo_** con **_Conda_** (todas las dependencias de librerías se resuelven en el momento de instalación)  
* Posibilidad de **_compartir, colaborar y reproducir proyectos_**  
* Podemos **_pasar nuestro proyecto a producción solo con un click_** (una vez configurado)  

Dentro de las variadas aplicaciones que nos ofrece **_Anaconda_** vamos a utilizar **_Jupyter Notebooks con Python_** X.X  

#### **_6.2. Instalación_**  

Vamos a [Distribución Anaconda](https://www.anaconda.com/distribution/)  

Seleccionamos nuestro SO (**_Windows_**, macOS o Linux)  

Hacemos click en **_"Download"_** (Descargar) la versión de 64-bits    

![Download](https://i.imgur.com/IcBRTK6.png)  

Después de descargar el instalador gráfico, lo abrimos y seguimos las instrucciones. Las opciones por defecto están bien, no hay necesidad de cambiarlas  

![Incio setup Anaconda](https://i.imgur.com/jClxi5u.png)  

![Final setup Anaconda](https://i.imgur.com/3UWvmHX.png)  

#### **_6.3. Iniciando Anaconda_**  

Una vez que finalizada la instalación, abrimos el programa **_Anaconda Navigator_**, para crear el entorno y actualizar los paquetes necesarios  

![Primera apertura Anaconda](https://i.imgur.com/JAdV0Fz.png)

Hacemos click en **_Environments_** y despues en **_+Create_**, con lo cual, se abrirá una ventana para crear un nuevo entorno  

![Crear entorno](https://i.imgur.com/OMS6DUy.png)  

Llamamos al entorno **_"fundamentos-etl"_**   

![Nombre entorno en Python con Anaconda](https://i.imgur.com/7MJx3Is.png)  

Se toma un instante para configurar el nuevo entorno y actualizarlo. Cuando termina vemos  

![Setup Anaconta finalizado](https://i.imgur.com/H8w7kTo.png)  

Los paquetes que vemos, son los que están instalados por defecto, podemos instalar nuevos o desinstalar los que ya estén instalados, haciendo click en **_installed_** y cambiarlo a **_not installed_** o al reves  

En el recuadro de **_search packages_** ponemos:  

* **_Jupyter Notebook_**   
* **_scipy_** (tambien instalará **_numpy_**)  
* **_pillow_** (libreria para manejo de imágenes)  
* **_imageio_** (lectura / escritura de imágenes)  
* **_matplotlib_** (para representar gráficamente)  
* **_seaborn_** (visualizaciones estadísticas)  
* **_scikit-learn_** (ML)  

En cada uno de los casos hacemos click en el recuadro para instalarlo. Una vez los tengamos seleccionados hacemos click en **_Apply_**. Anaconda procesa por nosotros todas las dependencias, abrirá una nueva ventana para que aceptemos los paquetes a instalar y hacemos click en **_Apply_** nuevamente  

![ImgAplicamos la instalación de nuevos paquetes](https://i.imgur.com/RhTb6en.png)

Una vez finalizada la instalacion y actualizacion de paquetes en el entorno **_"fundamentos-etl"_** hacemos click en **_Home_**, y **_Launch Jupyter Notebook_**  

![Lanzamos Jupyter Notebook](https://i.imgur.com/FOijrMT.png)  

Una nueva pestaña se abrirá en nuestro **_Jupyter Navigator_** y ya estamos listos para comenzar  

![Podemos comenzar con Jupyter Notebook y Anaconda](https://i.imgur.com/qAgS81u.png)  

-------------------

### **_7. Ambiente Anaconda en DataSpell_**  

Elegimos el ambiente de **_Anaconda_** que usaremos para el proyecto y presionamos el botón **_Launch DataSpell_**  

![Elegimos el ambiente de Anaconda](https://i.imgur.com/AfDFAag.png) 

También, para definir el ambiente **_DataSpell_**, elegimos un intérprete de **_Anaconda_**, que servirá para ejecutar **_Jupyter Notebooks_** en **_DataSpell_**    

#### **_7.1. Creación de un nuevo Workspace en DataSpell_**   

![dataSpell](https://i.imgur.com/mwge053.png)  

![Creamos un nuevo Workspace](https://i.imgur.com/Y9EYEBN.png)  

Elegimos el path del wokspace, llamamos "fundamentos-etl" al workspace y presionamos el botón azul **_Create_**  

![Path del wokspace](https://i.imgur.com/cM7Qouw.png)e  

#### **_7.2. Elección del ambiente de WSL2 (opcional si usamos WSL)_**

Si queremos usar **_DataSpell_** en nuestro entorno de **_Windows con WSL 2_**, deberemos conectarlo al ambiente de **_Anaconda_** que tenga nuestro WSL  

##### **_7.2.1. Creación de ambiente de Anaconda_**

Creamos un ambiente de **_Anaconda_** en nuestro **_WSL_** dedicado al proyecto si todavía no lo hemos hecho. Lo llamaremos **_"fundamentos-etl"_**  

````
conda create --name fundamentos-etl python=X.X
````

##### **_7.2.2. Opciones del intérprete_**  

En la parte inferior de la pantalla de **_DataSpell_** aparece el intérprete. Hacemos click en la dirección que aparece y elegimos la opción **_Interpreter Settings_**  

![Intérprete](https://i.imgur.com/XoHPcrv.png)  

##### **_7.2.3. Elección del intérprete_**  

Escogemos el workspace "fundamentos-etl" creado anteriormente en **_DataSpell_**  

**_¡Atención!_**: El workspace y el **_Anaconda Environment_** no son lo mismo. El **_Anaconda Environment_** lo vamos a cargar dentro del Workspace de **_DataSpell_**  

Presionamos el botón **_Add Interpreter_** e inmediatamente seleccionamos la opción **_On WSL_**  

![Add Interpreter](https://i.imgur.com/UDUPSSd.png)  

##### **_7.2.4. Elección de la distribución Linux_**  

Elegimos la distribución de Linux a usar y hacemos click en el botón **_Next_** cuando aparezca el mensaje **_Instrospection completed succesfully!_**    

![Elegimos la distribución de Linux](https://i.imgur.com/Nm7zYk4.png)  

##### **_7.2.5. Elección de Conda Environment como intérprete_**  

Elegimos el intérprete a usar. Este puede ser un **_Virtualvenv Environment_**, el **_System Interpreter_** o un **_Conda Environment_**. Elegimos la opción de **Conda Environment**  

![Elegimos el intérprete a usar](https://i.imgur.com/TIlkEvA.png)  

##### **_7.2.6. Selección del Conda Environment como intérprete_** 

La la casilla **_Use existing environment_** nos permite elegir el **_Conda Environment_** de WSL que usaremos en nuestro proyecto. Anteriormente debimos crearlo desde la terminal en WSL y llamarlo "fundamentos-etl"  

Finalmente, presionamos el botón azul **_Create_**  

![Create](https://i.imgur.com/cBGJnYN.png)  

##### **_7.2.7. Terminar proceso de creación del intérprete_**  

Para terminar el proceso presionamos el botón azul **_OK_** en la parte inferior  

![Terminar el proceso](https://i.imgur.com/INQLgEZ.jpg)  

##### **_7.2.8. Intérprete seleccionado intérprete_**  

Listo, ya deberá aparecer nuestro entorno de **_Anaconda en WSL_** cargado en la parte inferior de **_DataSpell_**  

![Aparece entorno de Anaconda en WSL cargado](https://i.imgur.com/BORc7bM.jpg)  

Si aparece un error, que indique que el ambiente no puede ser usado como el intérprete del workspace es porque estamos intentando cargar el ambiente en el workspace general y no en un workspace de **_DataSpell_** que hemos creado  

[Guía oficial de cómo conectar nuestro DataSpell al intérprete de Python o Anaconda en WSL](https://www.jetbrains.com/help/dataspell/using-wsl-as-a-remote-interpreter.html), por si necesitamos saber configurarlo en detalle  

**_Nota_**: Una alternativa en Windows es instalar **_Anaconda para Windows_** y conectar **_DataSpell_** directamente a esta versión  

### **_8. Conexión de Postgre SQL desde DataSpell_**  

#### **_8.1. Abrimos DataSpell en nuestro ordenador_**  

![Abrimos DataSpell](https://i.imgur.com/ZyAqcA2.png)  

#### **_8.2. Selección de Postgre SQL_**  

Vamos a la pestaña de **_Database_** y en ella hacemos click en el botón de signo de **_+_**  

![Database](https://i.imgur.com/VcEWUNw.png)  

Seleccionamos la opción de **_Data Source_** y dentro del menú desplegable elige la opción de **_Postgre SQL_**  

![Data Source](https://i.imgur.com/YW1wXgI.png)  

#### **_8.3. Parámetros de conexión Postgre SQL_**  

Para ver la configuración de la instalación local de **_Postgre SQL_**, vamos a **_PgAdmin_** y hacemos click con el botón derecho sobre el Servidor (**_PostgreSQL 15_**)  

![Parámetros Postgre SQL (pantalla 1)](https://i.imgur.com/1nq4EnH.png)  

![Parámetros Postgre SQL (pantalla 2)](https://i.imgur.com/rGlwdUa.png)  

Listo, ya tenemos nuestra BD conectada en **_DataSpell_**, pero ahora con los dos sistemas  

![Conexión de la BD en Windows](https://i.imgur.com/eZFaLQZ.png)  

![BD Windows conectada](https://i.imgur.com/cMjPMPY.png)

Ahora repetimos la operación con la imagen **_Docker_** (puerto 5432) de **_Postgre SQL_** y nos conectamos   

````
docker run -e POSTGRES_PASSWORD=xxxxx --rm -it -p 5432:5432/tcp postgres:latest
````

![Cargamos la imagen](https://i.imgur.com/FCb2cG1.png)  

![Postgre SQL de la imagen Docker](https://i.imgur.com/BGo2SkG.png)  

![Las dos configiraciones de Postgre SQL cargadas](https://i.imgur.com/IVcyMGL.png)  

#### **_8.4. Conexión de Postgre SQL a Dbeaver_**  

Ahora, que ha funcionado la conexión a la BD con **_Dataspell_**, descargamos y repetimos la operación con **_DBeaver_**  

Vamos al sitio de descarga de [DBeaver Community](https://dbeaver.io/download/) (opción gratuita)  

Una vez descargado el instalador para Windows lo ejecutamos  

![Instalación DBeaver](https://i.imgur.com/cC6PIMl.png)  

![Instalación DBeaver](https://i.imgur.com/hiPUNM6.png)  

![Instalación DBeaver](https://i.imgur.com/LPJVIBx.png)

Creamos una conexión a **_Postgre SQL_**  

![Nueva conexión a BD](https://i.imgur.com/EptCWEB.png)  

![Conectaremos a una BD Postgre SQL](https://i.imgur.com/pNT6Lzt.png)  

![Conexión a la BD Posgre SQL en el puerto 5433](https://i.imgur.com/OuyJ21p.png)  

**_DBeaver_** nos propone descargar los drivers necesarios para la conexión (JDBC)  

![Drivers necearios ](https://i.imgur.com/NgTR8lh.png)  

Probamos la conexión y funciona ok  

![Prueba de conexión](https://i.imgur.com/yXGbGeM.png)  

Nuestra BD **_Postgre SQL_** (**_PgAdmin_** en Windows en el puesrto 5433) está bien conectada  

![Postgre SQL en el puerto 5433](https://i.imgur.com/ANHNSFt.png)  

Volvemos a arrancar la imagen **_Docker_** de la segunda instalación en Linux (puerto 5432)  

````
docker run -e POSTGRES_PASSWORD=xxxxx --rm -it -p 5432:5432/tcp postgres:latest
````

![Cargamos la imagen](https://i.imgur.com/FCb2cG1.png)  

![Postgre SQL en el puerto 5432](https://i.imgur.com/ZP6p4v4.png)  

Probamos la conexión y funciona ok    

![Prueba de conexión](https://i.imgur.com/RMSv97Y.png)  

Ahora ya tenemos todos los sistemas conectados, **_PgAdmin_** (Windows) y **_Docker_** (Linux) y ya podemos utilizar, tanto **_DataSpell_** como **_DBeaver_**  

### **_9. Cargar datos en la BD Postgres_**  

Dentro de **_DataSpell_**, con la conexión a la BD previamente creada, ejecutaremos el script  

````
postgres_public_trades.sql
````

Lo podemos descargar de [aquí en Google Drive](https://drive.google.com/file/d/19U7l0kp3mEh8SYYG6BjoDp0kVPYWDsqI/view)  

**Este archivo pesa cerca de 500 MB**, por lo que puede demorar su descarga. Contiene la creación de una tabla llamada **_trades_** y los insert de registros de la tabla  

Si fallase al intentar **ejecutar este script en DBeaver**, por falta de memoria, entonces se puede cortar el fichero en varias partes y cargar cada script independientemente  

![Ejecutar este script en DBeaver](https://i.imgur.com/alGTJg9.jpg)  

Una vez descargado el archivo ***postgres_public_trades.sql*** debemos seguir estos pasos para cargar los datos con **_DataSpell_**:  

#### **_9.1. Despliegue pop-up para cargar script_** 

Vamos a la BD cargada a través de **_Docker_** y hacemos click, con el botón derecho sobre la BD de **_Postgre SQL_**  

![click derecho sobre la BD de PostgreSQL](https://i.imgur.com/W08YnLX.png)  

#### **_9.2. Ubicación script_**  

Ubicamos el script descargado en nuestro ordenador y hacemos click en **_OK_**  

![Ubicación script en DataSpell](https://i.imgur.com/j89NqZT.png) 

La creación de la tabla y la carga de datos ha tardado 6 minutos y 54 segundos en **_DataSpell_**, en mi oprdenador. Sin problemas  

![Carga de datos Docker](https://i.imgur.com/57Ms4Yk.png)   

Ahora repetimos la operación con la BD local (**_PgAdmin_**)  

![Carga de datos PgAdmin](https://i.imgur.com/STlienJ.png)  

La creación de la tabla y la carga de datos ha tardado 6 minutos y 58 segundos en **_DataSpell_**, en mi oprdenador. Sin problemas  

### **_10. Prueba la tabla trades_**  

Una vez terminada la ejecución del script, consultamos la tabla **_Trades_** ya cargada  

Comprobamos que la estructura de la tabla está bien creada en ambas BD  

![Estructura bien creada](https://i.imgur.com/MpLMBqk.png)

Abrimos la **_consola SQL_** (editor de queries) desde nuestra BD en **_DataSpell_**  

![Abrimos la consola SQL](https://i.imgur.com/tcnU8Y7.png)

Hacemos la siguiente consulta SQL  

````
SELECT * FROM trades;
````

![SELECT 1](https://i.imgur.com/GRAdmhN.png)  

Repetimos la Select en la otra BD  

![SELECT 2](https://i.imgur.com/uoEH1ue.png)  

A partir de este momento trabajaremos, como se recomienda en el curso, con la imagen **_Docker_**, de la BD y **_DataSpell_**  

**¡Listo!** Ya tenemos lo esencial para comenzar a extraer datos de una BD OLTP y ejecutar nuestros notebooks de **_Python_**  

### **_11. Evaluación de las herramientas_**  

Vamos a comprobar lo que hemos hecho en DBeaver y a comprobar su rendimiento :alembic: :nerd_face:

![layout de la tabla en DBeaver](https://i.imgur.com/APVhQIj.png)  
Layout de la tabla **_trades_** en **_DBeaver_**  
  
![Borrado de la tabla](https://i.imgur.com/yLEcgQO.png)  
Borrado de la tabla (**_Drop table_**)  

![Warning](https://i.imgur.com/eMMOE46.png)  
Warning!  

![Ya no existe trades](https://i.imgur.com/1PoJGTf.png)  
Ya no existe la tabla **_trades_**  

![Vamos a agregar el script de la tabla](https://i.imgur.com/iiSXBEA.png)  
vamos a agregar el script de la tabla  

![Marcamos el fichero de script, para cargarlo](https://i.imgur.com/CrvOmw6.png)  
Marcamos el fichero de script, para cargarlo  

![Asociamos el script con la BD local, en el puerto 5433](https://i.imgur.com/3V3s6js.png)  
Asociamos el script con la BD local, en el puerto 5433  

![En el selector tenemos las dos BD Postgre SQL que hemos creado](https://i.imgur.com/iQfPfFB.png)  
En el selector tenemos las dos BD Postgre SQL que hemos creado  

![Abrimos el script para ejecutarlo](https://i.imgur.com/AbMSPh2.png)  
Abrimos el script para ejecutarlo  

![Desbordamiento de memoria, era de esperar](https://i.imgur.com/vC2rkXV.png)  
Desbordamiento de memoria, era de esperar  

![Hacemos un script de creación de la tabla](https://i.imgur.com/02kSZfC.png)  
Hacemos un script de creación de la tabla  

![Cargamos el script de creación de la tabla vacía](https://i.imgur.com/Y3rgRUa.png)  
Cargamos el script de creación de la tabla vacía  

![Hemos creado la tabla vacía](https://i.imgur.com/cQcZE7P.png)  
Hemos creado la tabla vacía  

![Una select nos muestra la tabla vacía](https://i.imgur.com/n69dyU3.png)  
Una select nos muestra la tabla vacía  

![Creamos un script con 100.000 registros](https://i.imgur.com/aP3qxAr.png)  
Creamos un script con 100.000 registros  

![Inserción de los 100.000 registros](https://i.imgur.com/KlY1yBi.png)  
Inserción de los 100.000 registros  

**_¡Atención!_**: Hemos probado con 2.000.000 de registros y se cuelga, con lo cual, es una tontería seguir intentándolo por aquí. Si hiciésemos inserciones de 100.000 registros necesitaríamos 64 scripts (1 para la tabla). ¡Absurdo! :thumbsdown:  

![Comprobamos que lo que hemos creado en DBeaver, lo vemos igual en DataSpell](https://i.imgur.com/TdvSpVt.png)  
Comprobamos que lo que hemos creado en DBeaver, lo vemos igual en **_DataSpell_**  

![También en PgAdmin](https://i.imgur.com/sof7tjW.png)  
También en **_PgAdmin_**  

![Borramos los registros en PgAdmin](https://i.imgur.com/c0HP4KJ.png)  
Borramos los registros en **_PgAdmin_**  

![Comprobamos el resultado en DataSpell](https://i.imgur.com/ztnmQaZ.png)  
Comprobamos el resultado en **_DataSpell_**  

![Ejecutamos el script de 100.000 registros en PgAdmin](https://i.imgur.com/JwGa9Xi.png)  
Ejecutamos el script de 100.000 registros en **_PgAdmin_**  

**_¡Atención!_**: Hemos probado el script con todos los registros y se cuelga, con lo cual, es una tontería seguir intentándolo por aquí, también. Si hiciésemos inserciones de 100.000 registros necesitaríamos 64 scripts (1 para la tabla). ¡De nuevo, absurdo! :thumbsdown:  

![Volvemos a ver los resultados en DataSpell](https://i.imgur.com/4LGQazq.png)  
Volvemos a ver los resultados en **_DataSpell_**  

![Borramos el contenido en DataSpell (pide confirmación)](https://i.imgur.com/HlNMreE.png)  
Borramos el contenido en **_DataSpell_** (pide confirmación)  

![Confirmamos y procede al borrado](https://i.imgur.com/8IoE6zs.png)  
Confirmamos y procede al borrado  

![Tabla vacía](https://i.imgur.com/YdnSjdF.png)  
Tabla vacía  

![Cargamos todos los registros, sin tabla](https://i.imgur.com/0UCkLi2.png)  
Cargamos todos los registros, sin tabla (ya está creada)  

![Carga completada](https://i.imgur.com/ZCSNHgx.png)  
Carga completada  

![6.216.353 registros en DataSpell](https://i.imgur.com/N0jmfOy.png)  
6.216.353 registros en **_DataSpell_**  

![6.216.353 registros en PgAdmin](https://i.imgur.com/LDWXG2i.png)  
6.216.353 registros en **_PgAdmin_**  

![6.216.353 registros en DBeaver](https://i.imgur.com/BNDpriA.png)  
6.216.353 registros en **_DBeaver_**  

**_CONCLUSIONES_**  

* **_Docker_** es óptimo para manejar la imagen de la BD  
* **_DataSpell_** es el sistema ideal para manejar grandes BD, con un entorno Python integrado  
* **_DBeaver_** es un soft aceptable, pero no óptimo, para manejar grandes BD  

:wink: :thumbsup:  

## Extracción de datos con Python y Pandas  
