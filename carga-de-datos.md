# Carga de datos

## Carga

### **_Formatos de datos aceptables_**  

Debemos garantizar que solo se reciban **_datos relevantes y coherentes_**, **_con_** la estructura del **_Warehouse (target)_**  

### **_Permisos_**

Debemos tener todos los **_permisos necesarios_**, para grabar el destino y modificar archivos o datos, caso de ser necesario  

### **_Auditar_**  

Debemos comparar los datos recibidos con los datos de referencia, lo cual nos permitirá detectar errores, problemas de calidad, duplicados y otros errores en el proceso  

### **_Eficiencia_**  

Debemos buscar la manera más eficiente de extraer y cargar los datos, para evitar retrasos y errores  

### **_Control de errores_**  

Es importante establecer un plan de acción, en caso de error. Debemos plantearnos si revertir todo el proceso, o solo corregir los fallos y continuarlo  

## Configuración de clúster en AWS Redshift  

Crearemos un clúster y su BD en **_AWS Redshift_** y un bucket en **_S3_**. Los usaremos para el target ETL  

### **_AWS Free Tier_**  

1. Abrimos el sitio web de **_AWS Free Tier_** [aquí](https://aws.amazon.com/free)  

**_Atención_**: Es importante recordar que el free tier tiene un período de 1 año sin que cobre **_AWS_**  

2. Dentro del buscador de detalles de nivel gratuito buscamos **_“redshift”_**  

![Redshift](https://i.imgur.com/9UlaLEA.png)  

3. Podemos tener una prueba gratuita de 2 meses de **_AWS Redshift_** al elegir un nodo tipo **_DC2.Large_**  

![Detalles nivel gratuito](https://i.imgur.com/Mbr5JYB.png)  

![Prueba de 2 meses gratis](https://i.imgur.com/LQAIXgz.png)  

**_¡Atención!_**: Es muy muy importante que elijamos ese tipo de nodo **_DC2.Large_** al crear el clúster de **_AWS Redshift_**, para que sea gratuito por 2 meses, de lo contrario se nos harán cobros en nuestra tarjeta  

### **_Creación de clúster en AWS Redshift_**  

1. Iniciamos la sesión en la consola de **_AWS_**

hacemos click en iniciar sesión en la parte superior derecha o [aquí](http://console.aws.amazon.com/)  

![Incio sesión en consola](https://i.imgur.com/AEwOLmn.png)  

2. Elegimos nuestra región  

Después de iniciar sesión en nuestra cuenta de **_AWS_** elegimos la región donde crearemoss el clúster en la parte superior derecha de la consola de **_AWS_**  

![Región](https://i.imgur.com/VSiak3i.png)  

Sugerimos elegir la región de Oregon (us-west-2), pero podemos seleccionar la que nos convenga. Recordaremos cuál es para ponerla al cargar los datos desde el notebook de **_Python_**  

3. Buscar el servicio de **_Redshift_**

Buscamos **_“redshift”_** en el cuadro de búsqueda de servicios y hacemos click en la opción **_Amazon Redshift_**  

![Amazon Redshift](https://i.imgur.com/0rdFWKN.png)  

Esto nos llevará a la consola de **_Redshift_**  

![Consola de Redshift](https://i.imgur.com/jS2ERh1.png)  

4. vamos al panel de clústers  

Dentro de la consola de **_Redshift_** vamos al panel de la izquierda que se despliega con el icono de las tres rayas horizontales. Seleccionamos la opción de **_clústers_**  

![Clústers](https://i.imgur.com/uu3razm.png)  

5. Creamos el clúster  

Dentro del panel de **_clústers_** hacemos click en el botón naranja **_Crear clúster_**  

![Crear clúster](https://i.imgur.com/bvNl8nf.png)  

En la configuración del clúster le da nombre. Podemos llamarlo **_demo-platzi-curso-etl_**. Elegimos la prueba gratuita  

En el resumen de configuración calculada veremos que el tipo de nodo sea **_dc2.large_**  

**_¡Atención!_**: Es importante verificar esto, para que sea gratuito el uso de tu **_Redshift_** durante 2 meses  

![Dc2.large](https://i.imgur.com/tnbR2p2.png)  

Una vez seleccionados estos campos, bajamos para crear el usuario y la contraseña del clúster de **_Redshift_**  

**_¡Atención!_**: Debemos guardar en un lugar seguro estas credenciales, como puesda ser un gestor de contraseñas, para que podamos conectarnos al clúster  

Llamamos **_demoplatzi_** al usuario y ponemos una contraseña segura  

![Usuario y contraseña](https://i.imgur.com/2X88Yl8.png)  

Finalmente, hacemos click en el botón naranja **_Crear clúster_**  

Esperamos hasta que el estado de creación del clúster lo marque en verde, como **_Available_**. Esto puede tardar varios minutos. Para revisar el estado hacemos click en el botón **_refrescar_** de la flecha en círculo  

![Refrescar](https://i.imgur.com/WKNbSZF.png)  

6. Modificar las reglas de seguridad del clúster  

Entramos en el clúster haciendo click en el nombre, en **_panel de clústers_**  

![Panel de clústers](https://i.imgur.com/Q0rmDlb.png)  

Entramos en la pestaña de **_Propiedades_**  

![Propiedades](https://i.imgur.com/LirbPLQ.png)  

Bajamos hasta la sección de **_Configuración de red y seguridad_** y hacemos click sobre el **_Grupo de seguridad de la VPC_**  

![Grupo de seguridad de la VPC](https://i.imgur.com/dWsh2Hq.png)  

Seleccionamos el **_ID del grupo de seguridad_**  

![ID del grupo de seguridad](https://i.imgur.com/y453V44.png)  

Bajamos y hacemos click en **_Editar reglas de entrada_**  

![Editar reglas de entrada](https://i.imgur.com/ABdvYMb.png)  

Hacemos click en el botón inferior **_Agregar regla_**  

![Agregar regla](https://i.imgur.com/OemSK3G.png)  


En **_tipo_** elegimos **_Redshift_** y en origen elegimos 0.0.0.0/0. Finalmente, hacemos click en el botón naranja **_Guardar reglas_**  

![Guardar reglas](https://i.imgur.com/Yj6YnYl.png)  

Regresamos al panel del clúster a la zona de configuración de red y seguridad, hacemos click en el botón **_editar_**  

![editar](https://i.imgur.com/W7qyM0Y.png)  

Descendemos y en la parte inferior marcamos la casilla **_Activar accesibilidad pública_**. Hacemos click en el botón naranja **_Guardar cambios_**  

![Guardar cambios](https://i.imgur.com/X8byDPV.png)  

**_¡Atención!_**: Esto es algo que no debe hacerse en entornos de producción. En este caso lo haremos al ser una demo con fines educativos, para evitar complicaciones de configuración adicional de accesos de seguridad  

7. Nos conectamos a **_Redshift_** desde nuestro gestor de BD  

Abrimos el gestor, ya sea **_DataSpell_**, **_DBeaver_** o **_pgAdmin_**  

Dentro del gestor creamos una nueva conexión a una BD de tipo **_Redshift_**. Es muy importante buscar la opción de **_Redshift_**  

En el caso de **_DataSpell_** vamos a la pestaña **_Database_** y en ella hacemos click en el botón con el signo **_+_**  

![Database +](https://i.imgur.com/9UXeBq4.png)  

Seleccionamos la opción **_Data Source_** y dentro del menú desplegable, seleccionamos la opción de **_Amazon Redshift_**  

![Amazon Redshift](https://i.imgur.com/PULqwyP.png)  

Regresamos al panel del administrador del clúster de **_Redshift_** en la consola de **_AWS_** y copiamos el punto de enlace  

![copiamos el punto de enlace](https://i.imgur.com/PXMmmZi.png)  

Regresamos a la interfaz del gestor de BD e ingresamos los siguientes datos para conectarnos:

* **_Host_**: Es la URL del punto de enlace que copiamos, eliminando la parte final “:5439/dev”. Tendrá una forma parecida a **_server.redshift.amazonaws.com_**  
* **_Port_**: 5439  
* **_User_**: demoplatzi  
* **_Password_**: la que le hayamos puesto en el **_clúster de AWS Redshift_** cuando lo creamos en el paso 5  
* **_Database_**: dev  

![datos para conectarnos](https://i.imgur.com/2M15ms5.png)  

Hacemos click en el botón de **_Test Connection_** o su correspondiente para probar la conexión. En DataSpell nos pedirá actualizar unos drivers, le decimos OK  

Una vez que indique que funciona la conexión, hacemos click en el botón **_OK_**, o en el botón disponible de otro gestor, para aceptar la conexión  

![aceptar la conexión](https://i.imgur.com/hQR9lqt.png)  

¡Listo tenemos creado tu clúster con una BD dev en **_Redshift_** y nos hemos conectado a ella!  

![Redshift conectada](https://i.imgur.com/cuvEGgf.png)  

### **_Creación de bucket de almacenamiento en AWS S3_**  

Para el ETL crearemos un **_bucket_** en **_S3_** donde, temporalmente, almacenaremos unos archivos CSV donde guardaremos los datos de las tablas que hemos creado en el proceso de transformación  

1. Entramos en **_panel de S3_** desde la consola de **_AWS_**  

Buscamos **_“S3”_** en el buscador de la consola y seleccionamos la opción de **_S3_**  

![S3](https://i.imgur.com/E5doL1l.png)  

hacemos click en el botón naranja **_Crear bucket_** en el **_panel de S3_**  

![Crear bucket](https://i.imgur.com/vyaXwGR.png)  

Nombramos al **_bucket_**. El nombre debe ser único, ya que no puede haber más de un **_bucket de S3_** con el mismo nombre. También debemos asegurarnos de que la **_región de AWS_** sea la misma que hemos elegido para el **_clúster de Redshift_**, en nuestro caso fue **_us-west-2_**  

![región de AWS](https://i.imgur.com/rs2ihsz.png)  

Descendemos hasta abajo y hacemos click en el botón naranja **_Crear bucket_**  

![Crear bucket](https://i.imgur.com/NdDz6ik.png)  

¡Listo, ya deberá aparecer que nuestro bucket está creado!  

![bucket está creado](https://i.imgur.com/9hejXbl.png)  

**_Nota_**: Ante el cambio de poliíticas de AWS, en lo que resta de este ejercicio utilizaremos, aunque lo habíamos desechado, una BD en Postgre SQL local en el puerto 5433. Además, esta solución es más coherente con mis objetivos profesionales. Al nuevo target, lo llamaremos datawarehouse 

![Nuevo target](https://i.imgur.com/yY4Vl2g.png)

## Crear tablas en AWS Redshift  

Aunque no utilicemos AWS, recogemos el método que sigue el curso  

Por ahora lo que haremos será crear la estructura de las tablas para que  podamos llevar los datos transformados a archivos CSV que subiremos a S3 y que automáticamente serán cargados como registros en nuestro Redshift   

### **_Crear las tablas_**  

Abrimos una nueva **_Query Console_**. Hacemos click con el botón derecho sobre la BD **_dev_**, luego presionamos el botón **_New_** y por último el botón **_Query Console_**  

![Query Console](https://i.imgur.com/IFWeSkg.png)  


Esto abrirá el editor de queries para **_Redshift_**  

![Redshift](https://i.imgur.com/S2lfJY1.png)

Descargamos este [script de SQL](https://static.platzi.com/media/public/uploads/script_8fc7f97e-5e8c-45c5-b03d-35a17d178699.sql) (traducimos los tipos) donde encontraremoss los comandos CREATE para las seis tablas de nuestro target  

El script contiene lo siguiente:  

````AWS
CREATE TABLE IF NOT EXISTS trades (id_trades INT,
trade_usd float,
kg float,
quantity float,
id_code int,
id_country int,
id_quantity int,
id_flow int,
id_year int
);

CREATE TABLE IF NOT EXISTS countries (
  id_country INT,
  alpha_3 VARCHAR(3),
  country VARCHAR(50),
  region VARCHAR(50),
  sub_region VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS flow (
  id_flow INT,
  flow VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS quantity (
  id_quantity INT,
  quantity VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS codes
(
    id_code            integer encode az64,
    code               integer encode az64,
    description        varchar(2000),
    parent_description varchar(1000)
);

CREATE TABLE IF NOT EXISTS years (
  id_year INT,
  year INT
);
````

Cada comando ha sido creado con base en las necesidades de datos que se insertarán en ellas  

Copiamos y pegmos el contenido del script de SQL en el **_Query Console_**  

![Query Console](https://i.imgur.com/mFRunAe.png)  

Ejecutamos la query. Al terminar su ejecución refrescamos la BD, vamos al **_schema public_** y veremos las tablas agregadas  

**_Atención_**: Es normal que veamos otras tablas que no hemos creado. Son las que se crean, por defecto, para la prueba gratis de **_Redshift_**. No hace falta que las borremos  

### **_Configurar las variables de entorno en el OS_**  

Antes de continuar es muy importante que guardemos como variables de nuestro entorno de trabajo los datos de acceso a la cuenta de AWS y clúster de **_Redshift_**  

**_Atención_**: Esto se hace por seguridad, para que los datos de acceso no queden expuestos en el código y que puedan ser obtenidos por personas que no deberían tenerlos  

Para ello vamos a la **_consola de AWS_** y seleccionamos en la parte superior derecha, nuestro nombre de usuario. Esto despliega un menú. hacemos click en el botón **_Credenciales de seguridad_**  

![ImgCredenciales de seguridadur](https://i.imgur.com/cWoAnYv.png)  

Bajamos hasta la sección **_Claves de acceso_** y hacemos click en el botón **_Crear clave de acceso_**  

![Crear clave de acceso](https://i.imgur.com/4h8G2jD.png)  

Marcamos el checkbox y hacemos click sobre el botón naranja **_Crear clave de acceso_**  

![Crear clave de acceso](https://i.imgur.com/2ziWbYl.png)  

Esto generará una clave de acceso y una clave de acceso secreta con la que nos podremos conectar a la cuenta de **_AWS_** desde el notebook de **_Python_**. Las copiamos y las guardamos en un lugar seguro. También podemos descargar el archivo CSV  

Una vez guardadas las claves hacemos click en el botón naranja **_Listo_**  

![claves de acceso](https://i.imgur.com/JPxmUlF.png)  

Ya que tenemos estas **_claves de acceso IAM_** y las **_credenciales del clúster de Redshift_**, creamos las siguientes variables de entorno dentro de nuestro entorno de desarrollo en nuestro SO, ya sea **_WSL_**, **_Linux_** o **_macOS_**:  

* **_aws_access_key_id_**: Es la **_clave de acceso IAM de AWS_**  
* **_aws_secret_access_key_**: Es la **_clave de acceso secreta IAM de AWS_**  
* **_host_**: La **_dirección del clúster de Redshift_**. Es la url del punto de enlace que copiamos eliminando la parte final “:5439/dev”. Tendrá una forma semejante a **_server.redshift.amazonaws.com_**  
* **_database_**: dev  
* **_user_**: demoplatzi  
* **_password_**: La que le hayamos puesto al **_clúster de AWS Redshift_** cuando lo creamos  

¡Listo, ya tenemos las variables de entorno creadas!  

**_¡Atención!_**: Recuerdemos que el notebook que usemos debe estar corriendo desde el entorno del SO donde configuramos las variables de entorno, de lo contrario no funcionará el código porque no encontrará esas variables que se accederán con **_os.environ.get('nombre_variable_entorno')_**  

## Carga de datos con Python en Redshift  

Generamos los ficheros .CSV correspondientes e los df, que hemos obtenido, en la subcarpeta target, de nuestro proyecto  

````python
df_trades_final.to_csv('target/trades.csv',index=False, sep='|')
df_countries.to_csv('target/countries.csv',index=False, sep='|')
df_codes.to_csv('target/codes.csv',index=False, sep='|')
df_quantity.to_csv('target/quantity.csv',index=False, sep='|')
df_flow.to_csv('target/flow.csv',index=False, sep='|')
df_year.to_csv('target/years.csv',index=False, sep='|')
````

Caso que trabajemos con la BD en Redshift cargaremos el entorno

````python
import os
import boto3
import redshift_connector

client = boto3.client(
    's3',
    aws_access_key_id=os.environ.get('AWS_ACCESS_KEY_ID'),
    aws_secret_access_key=os.environ.get('AWS_SECRET_ACCESS_KEY'),
)

conn = redshift_connector.connect(
    host= os.environ.get('redhsift_host'),
    database=os.environ.get('redshift_database'),
    port=5439,
    user=os.environ.get('redshift_user'),
    password=os.environ.get('redshift_pass')
)
cursor = conn.cursor()
````
````python
def load_file(file_name):
    table_name = file_name.split('.')[0]
    client.upload_file(
        Filename="target/{}".format(file_name),
        Bucket="platzi-etl",
        Key="course_etl_target/{}".format(file_name),
    )

    sentence = '''copy etl_test.{} from 's3://platzi-etl/course_etl_target/{}' credentials 'aws_access_key_id={};aws_secret_access_key={}' csv delimiter '|' region 'us-west-2' ignoreheader 1'''.format(
        table_name, file_name, os.environ.get('AWS_ACCESS_KEY_ID'), os.environ.get('AWS_SECRET_ACCESS_KEY')
    )
    try:
        cursor.execute(sentence)
        print('ok tabla '+ table_name)
    except:
        print('error en la tabla '+table_name)
````
````python
list_files = os.listdir('target/')
for _ in list_files:
    load_file(_)
````
````python
conn.commit()
````
````python
conn.close()
````

## Estructurar sentence para carga de datos de S3 a Redshift  

Dentro de la función que hemos definido, para **_S3_**, está la variable **_sentence_**, que es una secuencia de texto con una instrucción para copiar los registros de los archivos CSV, que están dentro del bucket de S3, hacia la base de datos dev que está en un schema.

Esta sentencia debe configurarse específicamente para el schema de tu base de datos y la dirección de tu bucket en S3.

Revisitemos tres componentes principales dentro de la sentencia:

![sentencia](https://i.imgur.com/k0Govze.png)  

* **_Schema en DB en Redshift_**: Es el schema de nuestra BD donde están las tablas a donde se copiarán los registros de los archivos.CSV. Este debe ser remplazado por ese **_schema_**, que en nuestro caso debería ser public en lugar de etl_test  

* **_Nombre de bucket de S3_**: Dirección del bucket donde se guardan temporalmente los archivos .CSV. En nuestro caso debe remplazarse 's3://platzi-etl/course_etl_target/{}' por el nombre único de nuestro bucket. Si nuestro bucket se llamara nombre-unico-bucket-curso-platzi en la sentencia debería estar 's3://nombre-unico-bucket-curso-platzi{}'  

* **_Región elegida de AWS_**: Es esa región donde creamos el clúster de Redshift. En caso de que no lo hayamos hecho en la región us-west-2 escribimos el código de la región que elegimos  

Nuestra sentence se debería parecer a la siguiente, pero no será idéntica porque el nombre de nuestro bucket es único en el mundo:

````python
sentence = '''copy public.{} from 's3://nombre-unico-bucket-curso-platzi/{}' credentials 'aws_access_key_id={};aws_secret_access_key={}' csv delimiter '|' region 'us-west-2' ignoreheader 1'''.format(table_name, file_name, os.environ.get('AWS_ACCESS_KEY_ID'), os.environ.get('AWS_SECRET_ACCESS_KEY'))
````

## Carga de datos: subida de archivos a AWS Redshift  

````python
df_trades_final.to_csv('target/trades.csv',index=False, sep='|')
df_countries.to_csv('target/countries.csv',index=False, sep='|')
df_codes.to_csv('target/codes.csv',index=False, sep='|')
df_quantity.to_csv('target/quantity.csv',index=False, sep='|')
df_flow.to_csv('target/flow.csv',index=False, sep='|')
df_year.to_csv('target/years.csv',index=False, sep='|')
#%%
import os
import boto3
import redshift_connector

client = boto3.client(
    's3',
    aws_access_key_id=os.environ.get('AWS_ACCESS_KEY_ID'),
    aws_secret_access_key=os.environ.get('AWS_SECRET_ACCESS_KEY'),
)

conn = redshift_connector.connect(
    host= os.environ.get('redhsift_host'),
    database=os.environ.get('redshift_database'),
    port=5439,
    user=os.environ.get('redshift_user'),
    password=os.environ.get('redshift_pass')
)
cursor = conn.cursor()
````

````python
def load_file(file_name):
    table_name = file_name.split('.')[0]
    client.upload_file(
        Filename="target/{}".format(file_name),
        Bucket="platzi-etl",
        Key="course_etl_target/{}".format(file_name),
    )

    sentence = '''copy etl_test.{} from 's3://platzi-etl/course_etl_target/{}' credentials 'aws_access_key_id={};aws_secret_access_key={}' csv delimiter '|' region 'us-west-2' ignoreheader 1'''.format(
        table_name, file_name, os.environ.get('AWS_ACCESS_KEY_ID'), os.environ.get('AWS_SECRET_ACCESS_KEY')
    )
    try:
        cursor.execute(sentence)
        print('ok tabla '+ table_name)
    except:
        print('error en la tabla '+table_name)
````

````python
list_files = os.listdir('target/')
for _ in list_files:
    load_file(_)
````

````python
conn.commit()
````

````python
conn.close()
````

## Crear tablas en PgAdmin  

Sobre la BD **_datawarehouse_**, con el botón derecho del ratón, abrimos una nueva **_Query Console_**. Ejecutamos lo siguiente (equivalente al target **_Redshift_**):  

````Postgre
CREATE TABLE IF NOT EXISTS trades (id_trades INT,
trade_usd float,
kg float,
quantity float,
id_code int,
id_country int,
id_quantity int,
id_flow int,
id_year int
);

CREATE TABLE IF NOT EXISTS countries (
  id_country INT,
  alpha_3 VARCHAR(3),
  country VARCHAR(50),
  region VARCHAR(50),
  sub_region VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS flow (
  id_flow INT,
  flow VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS quantity (
  id_quantity INT,
  quantity VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS codes
(
    id_code            INT,
    code               bigint,
    description        varchar(2000),
    parent_description varchar(1000)
);

CREATE TABLE IF NOT EXISTS years (
  id_year INT,
  year INT
);
````
![Tablas creadas en el target](https://i.imgur.com/NMKUODn.png)

Ya tenemos la tablas creadas en el target (datawarehouse), en el cual queremos hacer la carga  

## Carga de datos con Python en Postgre SQL local

En nuestro caso, como ya hemos comentado, hemos obtado por trabajar con una BD **_Postgre SQL_** (**_datawarehouse_**) en el **_puerto 5433_**, es decir, para conectarnos no utilizaremos boto3, sino, como hicimos anteriormente, en la extracción de datos, **_SQLAlchemy_**  

````python
import sys
import psycopg2
import numpy as np
import psycopg2.extras as extras
````

**_¡Atención!_**: Tenemos que cambiar el tipo de datos del campo year, porque int (**_int64_**), no existe en **_Postgre SQL_** y generaría un error de tipo de datos. En su lugar, cambiamos el tipo a **_float64_** (**_numpy_**) y a **_real_** (**_Postgre SQL_**), que sí son compatibles  

````python
# Modificación de los df para que sean totalmente compatibles con las tablas
df_trades=df_trades_final
df_quantity.rename(columns={'values':'quantity'},inplace=True)
df_codes.rename(columns={'clean_code':'code','Desciption':'description'},inplace=True)
df_countries.rename(columns={'alpha-3':'alpha_3','sub-region':'sub_region'},inplace=True)
df_flow.rename(columns={'values':'flow'},inplace=True)
df_years=df_year
df_years.rename(columns={'values':'year'},inplace=True)
# int => int64 no existe en Postgre, pero float64 se puede convertir a real y funciona bien
df_years = df_years.astype({"id_year":"int","year":"float64"})
````
Conexión a la BD (**_Postgre SQL_**, local)  

````python
conn = psycopg2.connect(
    database="datawarehouse", user='postgres', password='xxxxxxxx', host='127.0.0.1', port='5433'
)
````
Función para cargar tablas en Postgre a partir de los df  

````python
def execute_values(conn, df, table):

    tuples = [tuple(x) for x in df.to_numpy()]

    cols = ','.join(list(df.columns))
    # Query SQL a ejecutar
    query = "INSERT INTO %s(%s) VALUES %%s" % (table, cols)
    cursor = conn.cursor()
    try:
        extras.execute_values(cursor, query, tuples)
        conn.commit()
    except (Exception, psycopg2.DatabaseError) as error:
        print("Error: %s" % error)
        conn.rollback()
        cursor.close()
        return 1
    print("Se ha cargado la tabla", table)
    cursor.close()
````
Llamadas a la función para cargar cada df en la tabla correspondiente  

````python
execute_values(conn, df_trades, 'trades')
execute_values(conn, df_countries, 'countries')
execute_values(conn, df_codes, 'codes')
execute_values(conn, df_quantity, 'quantity')
execute_values(conn, df_flow, 'flow')
execute_values(conn, df_years, 'years')         # si no hubiésemos convertido el tipo habría dado error
````
Cierre final de la conexión a la BD  
````python
conn.close()
````

¡Y listo!, ya está cargada la BD con nuestros datos transformados en Python  