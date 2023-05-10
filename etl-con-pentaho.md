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

Si no se abre spoon.bat, seguramente debido a que no tenemos definidas variables de entorno, podemos bajar [**_Open JDK_**](https://learn.microsoft.com/es-es/java/openjdk/download) la siguiente versión, que lo hace en la instalación  

![Imgur](https://i.imgur.com/0A2D6gU.png)

**_Nota_**: **_Oracle JDK_** es lanzado bajo licencia **_OTN_**, mientras que **_OpenJDK_** se ha lanzado bajo la **_GPLv2wCP_** e incluye la licencia **_GPL_**. El código fuente de **_Oracle JDK_** incluye la leyenda **_“ORACLE PROPRIETARY/CONFIDENTIAL. Use is subject to license terms. “_**, mientras que los archivos fuentes de **_OpenJDK_** incluyen **_GPL_**.

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



## Transformación de datos con Pentaho  

## Transformación de datos con Pentaho: parte 2  

## Transformación de datos con Pentaho: parte 3  

## Carga de datos con Pentaho  