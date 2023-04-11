# Introducción a ETL

## ¿Qué es un ETL en ingeniería de datos?  

### ***ETL***  
Extraer datos de diferentes fuentes, transformarlos para que cumplan con los requisitos de calidad y formato esperados y, finalmente, cargarlos en un sistema de almacenamiento centralizado. 

> [Extract, transform and load - fuente Wikipedia -](https://es.wikipedia.org/wiki/Extract,_transform_and_load)

### ***¿Para qué sirve?***  

* Para tener una vista **unificada y coherente** de los datos  
* Para tomar **decisiones más precisas**, con respecto a los datos  
* Para asegurar la **calidad de los datos**, al limpiarlos y normalizarlos   
* Para **detectar anomalías** en el proceso de extracción o de transformación de los datos  
* Para tener **fuentes confiables** para Machine Learning (ML) y Data Science (DS)  

### ***¿Cómo se usa actualmente?***  

![ETL-AWS](https://i.imgur.com/8OYvdtX.png)  

![ETL-GCP](https://i.imgur.com/hXxF2U0.png)  

![ETL-Azure](https://i.imgur.com/rd6dBqH.png)

***ETL - Python***  

    1. ***Recolección de datos***  
        * RIAA  
        * Google  
        * Spotify  
        * Kaggle  
    2. ***Validación de datos***   
            Diseñar las tablas para guardar datos en CSVs, importarlos en una base de datos (BD) de SQL y detectar conflictos en la BD  
            Herramientas: Python y Pandas  
    3. Creación de la BD  
            Dar un formato común a los datos (estandarización / consistencia). Limpiar duplicados. Rellenar datos perdidos vs. borrar datos incompletos  
            Herramientas: PostgreSQL (en nuestro proyecto)  
***Proyecto***  

![Esquema proyecto](https://i.imgur.com/aNLNaPB.png)  

![Proyecto Python](https://i.imgur.com/fMaNlB2.png)

![Proyecto Pentaho](https://i.imgur.com/31qy4fZ.png)

## Conceptos base de ETL  

### ***Source (fuente de datos)***  

Es de dónde vamos a sacar los datos, del tipo que sea.

* Cloud  
* CSV  
* JSON  
* API  
* CRM  

### ***Target (datos objetivo)***  

Es donde voy a cargar el proceso de ETL, por lo general base de datos unificada columnar (snowflake, redshift, big query) o transaccionales (Oracle, postgreSQL, mysql).

![Sources](https://i.imgur.com/plRXVbR.png)  

### ***Staging (áreas intermedias de datos)***  

Suele ser en memoria y es dónde se van a hacer transformaciones. Se pueden guardar en bases de datos para luego retomar la transformación y proceder al load.

![Staging](https://i.imgur.com/dTpo2UK.png)  

### ***Data Warehouse (almacén de datos)*** 

Es donde se van a almacenar datos de una manera definida  

![DWH](https://i.imgur.com/QHrE888.png)

Es esencialmente una BD, que reside en la nube o en un servidor. Recopila información de fuentes variadas y heterogéneas, principalmente para respaldar la investigación y la preparación para la toma de decisiones de administración de cualquier negocio. Se caracteriza por tener **información orientada a temas, coordinada, variable en el tiempo y no inestable** para proporcionar información comercial y ayudar en el proceso de toma de decisiones  

### ***Data Mart (Data Warehouse departamental)***

Es un componente de almacenamiento que **se refiere a un departamento específico de una organización**. Es un subconjunto de los datos almacenados en el Data Warehouse. Se enfoca solo en una función particular de una organización y lo mantiene una sola autoridad, por ejemplo, finanzas, marketing. Son pequeños y flexibles  

***Dependent Data Mart (DM dependiente)*** 

Se crea extrayendo los datos del repositorio central (Data Warehouse). El primer almacén de datos se crea extrayendo datos (a través de la herramienta ETL) de fuentes externas y luego se crea el DM a partir del almacén de datos. El DM dependiente se crea en un enfoque de arriba a abajo de la arquitectura del almacén de datos. Este modelo de DM es utilizado por grandes organizaciones  

***Independent Data Mart (DM independiente)***  

Se crea directamente a partir de fuentes externas, en lugar del Data Warehouse (DWH). El primer DM se crea extrayendo datos de fuentes externas y luego el DWH se crea a partir de los datos presentes en el DM. Está diseñado con un enfoque de abajo a arriba de la arquitectura del almacén de datos. Este modelo es utilizado por organizaciones pequeñas y es comparativamente rentable  

*** Hybrid Data Mart (DM híbrido)***  

Se crea extrayendo datos de una fuente operativa o de un DWH  

***Requerimientos***

* Se enfocan solo en el funcionamiento de un departamento particular de una organización  
* Los mantiene una sola autoridad de una organización  
* Dado que almacena los datos relacionados con una parte específica de una organización, la recuperación de datos es muy rápida  
* Se considera que el diseño y el mantenimiento del DM es bastante sencilla en comparación con el DWH  
* Reduce el tiempo de respuesta del usuario ya que almacena un pequeño volumen de datos  
* Es de tamaño pequeño debido a que el acceso a los datos es muy rápido  
* Esta unidad de almacenamiento es utilizada por la mayoría de las organizaciones para el buen funcionamiento de sus departamentos  

***Ventajas***

* La implementación del DM requiere menos tiempo en comparación con la implementación del DWH, ya que el está diseñado para un departamento particular de una organización  
* Las organizaciones cuentan con opciones para elegir el modelo de DM según el costo y negocio  
* Se puede acceder fácilmente a los datos  
* Contiene consultas a las que se accede con frecuencia, por lo que permite analizar la tendencia empresarial  

***Desventajas***  

* Dado que almacena los datos relacionados, solo con una función específica, no almacena un gran volumen de datos relacionados con todos y cada uno de los departamentos de una organización como el DWH  
* A veces, crear demasiados DMs se vuelve engorroso  

### ***Star model o star schema (modelo en estrella)***  

![Star model](https://i.imgur.com/YJyj1ja.png)

Un esquema en estrella es un tipo de técnica de modelado de datos utilizada en el almacenamiento de datos para representar datos de una manera estructurada e intuitiva. En un esquema en estrella, los datos se organizan en una tabla de hechos central que contiene las medidas de interés, rodeada de tablas de dimensiones que describen los atributos de las medidas.

**La tabla de hechos** en este esquema **contiene las medidas o métricas que son de interés** para el usuario o la organización. Por ejemplo, en un *Data Warehouse* de ventas, la tabla de hechos puede contener ingresos por ventas, unidades vendidas y márgenes de beneficio. **Cada registro de la tabla de hechos representa un evento o una transacción específicos**, como una venta o un pedido.

**Las tablas de dimensiones** de este esquema **contienen los atributos descriptivos de las medidas en la tabla de hechos**. Estos atributos **se utilizan para segmentar los datos en la tabla de hechos, lo que permite a los usuarios analizar los datos desde diferentes perspectivas**. Por ejemplo, en un almacén de datos de ventas, las tablas de dimensiones pueden incluir producto, cliente, hora y ubicación.

En este esquema, **cada tabla de dimensiones se une a la tabla de hechos a través de una relación de clave externa (foreign key)**. Esto permite a los usuarios **consultar los datos en la tabla de hechos utilizando atributos de las tablas de dimensiones**. Por ejemplo, un usuario puede querer ver los ingresos por ventas por categoría de producto o por región y período de tiempo.

Es una técnica popular de modelado de datos en el almacenamiento de datos porque es fácil de entender y consultar. La estructura simple del esquema en estrella **permite tiempos de respuesta de consulta rápidos y un uso eficiente de los recursos de la BD**. Además, este esquema **se puede ampliar fácilmente agregando nuevas tablas de dimensiones o medidas a la tabla de hechos**, lo que la convierte en una **solución escalable y flexible** para el almacenamiento de datos.

Es el **esquema fundamental de los esquemas de Data Mart y es el más simple**. Se usa ampliamente para desarrollar o construir Data Warehouse y Data Marts dimensionales. Incluye una o más tablas de hechos que indexan cualquier número de tablas de dimensiones. **Es una causa necesaria del esquema de copo de nieve (snowflake schema), es decir, el esquema de copo de nieve se monta a apartir de un modelo (básico) en estrella**. También es eficiente para manejar consultas básicas.

![Ejemplo de modelo en estrella](https://i.imgur.com/1JvncK9.png)  
Ejemplo de modelo en estrella  

* ***Tabla de hechos***: SALES
    * ***Atributos***:  
        * ID de producto (FK)  
        * ID de pedido (FK)  
        * ID de cliente (FK)  
        * ID de empleador (FK)  
        * Total  
        * Cantidad  
        * Descuento
    
* ***Tablas de dimensiones***
    * ***Empleados***  
        * ***Atributos***
            * ID de empleado (PK)  
            * Nombre del empleado   
            * Cargo  
            * Departamento  
            * Región
    * ***Productos*** 
        * ***Atributos***  
            * ID del producto (PK)  
            * Nombre del producto
            * Categoría  
            * Precio unitario  
    * ***Clientes***
        * ***Atributos***  
            * ID del cliente (PK)  
            * Nombre del cliente  
            * Dirección  
            * Ciudad  
            * Código postal  
    * ***Tiempo***  
        * ***Atributos***  
            * ID de pedido (PK)  
            * Fecha de pedido  
            * Año  
            * Trimestre  
            * Mes  

***Ventajas***  

* ***Consultas más simples***: La lógica de unión del esquema en estrella es bastante fácil, en comparación con otra lógica de unión, que se necesita para obtener datos de un esquema transaccional altamente normalizado  

* ***Lógica simplificada de informes comerciales***: En comparación con un esquema transaccional que está muy normalizado, el esquema en estrella hace que la lógica de informes comerciales comunes sea más simple, como la de informes y período tras período  

* ***Cubos de alimentación***: El esquema en estrella es ampliamente utilizado por todos los sistemas OLAP para diseñar cubos OLAP de manera eficiente. De hecho, los principales sistemas OLAP ofrecen un modo de operación ROLAP que puede usar un esquema en estrella como fuente sin diseñar una estructura de cubo  

***Desventajas***  
* ***No aplica bien Integridad Referencial***: La integridad referencial (IR) de los datos, no se aplica bien, ya que se encuentra en un estado de esquema altamente desnormalizado  

* ***Inflexible***: No es flexible en términos de necesidades analíticas como un modelo de datos normalizado  

* ***No aplican las relaciones de muchos a muchos (m:n)***: Los esquemas en estrella no montan relaciones de muchos a muchos dentro de las entidades comerciales, al menos no con frecuencia  

### ***Data Lake (almacen de datos en formato original)***  

Es un repositorio dónde se manda información, formato nativo o raw de los datos (datos sin modificaciones, cómo los genera el origen). Se guarda en disco duro  

![DL](https://i.imgur.com/pBbfoDf.png)

Es el concepto en el que se pueden descargar todo tipo de datos a un bajo costo pero con un almacenamiento/zona sumamente **adaptable para ser examinados posteriormente en busca de información potencial**. Es la ***Zona de aterrizaje de datos***. Actualmente estamos analizando TODO tipo de información, independientemente de su construcción, estructura, metadatos, etc. Una de las ideas detrás de Data Lake es que actualmente la innovación ha hecho posible almacenar TODA la información que una empresa genera/compra (antes la empresa TENÍA que seleccionar la información pertinente y almacenarla en un centro de distribución estructurado)  

***Diferencias entre Data Warehouse y Data Lake***

| Data Lake  | Data Warehouse |
| :--------- | :------------- | 
| Los datos se mantienen sin procesar y se mantienen independientemente de la fuente de información. Son como se cambiaron a otras formas en cualquier punto requerido | Se compone de datos extraídos de marcos de medición basados en valores y otros. Aquí la información no está en bruto y se cambia y limpia continuamente |
| Su objetivo principal son los investigadores de datos, los ingenieros de Big Data y los ingenieros de ML que deben hacer una investigación profunda para formar modelos para el comercio, como el modelado predictivo | Su objetivo principal son los clientes operativos, ya que esta información se encuentra organizada y se puede preparar para generar informes. Por lo tanto, generalmente se utilizan para BI |
| La mayoría de las entradas son de todo tipo de información, como pueda ser información organizada, semiestructurada y no estructurada. Esta información reside aquí en su forma única | Las entradas principales son informaciones organizadas que provienen de marcos de medición y basados en valores que en ese momento están organizados en forma de esquemas |
| Se compone de datos sin procesar que se seleccionarán o no | Se compone de datos depurados, que están centralizados y están preparados para ser utilizados con fines de análisis e información comercial |
| Los datos no están en forma normalizada | Esquemas desnormalizados |
| La herramientas utilizadas (como Hadoop) son moderadamente modernos | La tecnología que se utiliza es más antigua |
| Pueden tener todo tipo de información y pueden utilizarse teniendo en cuenta el pasado, lo actual y las perspectivas | La mayor parte del tiempo se invierte en analizar las diferentes fuentes de datos |
| Los datos están abiertos y se pueden actualizar rápidamente | Los datos son más complicados y requieren más trabajo de recuperación, para realizar cambios |

### ***Data Lakehouse (Data Warehouse + Data Lake)***  
Es donde se guarda de manera raw de los datos, pero se tiene una capa de consulta (sql, spark) para realizar analítica sin mover los datos. Se una con el proceso ELT  

![DLH](https://i.imgur.com/xaNGlJl.png)

![ELT vs ETL](https://i.imgur.com/eyW12XY.png)

![ELT vs ETL](https://i.imgur.com/cgwC4PQ.png)

Un Data Lakehouse (DLH) es una nueva arquitectura de grandes almacenamientos de datos que combina las mejores características de los DWH y los Data lakes (DL). Habilita un repositorio único para todos sus datos (estructurados, semiestructurados y no estructurados) al tiempo que habilita las mejores capacidades de transmisión, BI y ML de su clase  

Suelen comenzar como DL que contienen todos los tipos de datos, luego, los datos se convierten al formato Delta Lake (una capa de almacenamiento de código abierto que brinda confiabilidad a los DL). Los Lagos Delta permiten procesos transaccionales ACID desde DWH tradicionales en DL  

***Ventajas***

La arquitectura de DLH combina la estructura de datos y las funciones de administración de un DWH con el almacenamiento y la flexibilidad de bajo costo de un DL. Los beneficios de esta implementación son enormes e incluyen:

* ***Reducción de la redundancia de datos***: Reducen la duplicación de datos al proporcionar una única plataforma de almacenamiento de datos multiusos para satisfacer todas las demandas de datos comerciales. Debido a las ventajas del DWH y el DL, la mayoría de las empresas optan por una solución híbrida. Sin embargo, este enfoque podría dar lugar a la duplicación de datos, lo que puede resultar costoso  

* ***Rentabilidad***: Implementan las funciones de almacenamiento rentables de los DL mediante el uso de opciones de almacenamiento de objetos de bajo costo. Además, eliminan los costos y el tiempo de mantener múltiples sistemas de almacenamiento de datos al brindar una única solución  

* ***Compatibilidad con una variedad más amplia de cargas de trabajo***: Brindan acceso directo a algunas de las herramientas de BI más utilizadas (Tableau, Power BI) para permitir análisis avanzados. Además, usan formatos de datos abiertos (como Parquet) con API y bibliotecas de ML, incluidos Python/R, lo que facilita que los científicos de datos y los ingenieros de NL utilicen los datos  

* ***Facilidad de control de versiones, gobierno y seguridad de los datos: La arquitectura DLH hace cumplir el esquema y la integridad de los datos, lo que facilita la implementación de mecanismos sólidos de seguridad y gobierno de datos  

***Desventajas***

La principal desventaja de un DLH es que todavía es una tecnología relativamente nueva e inmadura. Como tal, no está claro si cumplirá sus promesas. Pueden pasar años antes de que los DLH puedan competir con las soluciones maduras de almacenamiento de big data. Pero con la velocidad actual de la innovación, es difícil predecir si una nueva solución de almacenamiento de datos podría eventualmente usurparla  

|     | DWH | DL  | DLH |
| :-: | :-: | :-: | :-: |
|Tipo de datos de almacenamiento | Funciona bien con datos estructurados | Funciona bien con datos semiestructurados y no estructurados | Puede manejar datos estructurados, semiestructurados y no estructurados |
| Propósito | Óptimo para casos de uso de análisis de datos y BI | Adecuado para cargas de trabajo de ML e IA | Adecuado para cargas de trabajo de ML y análisis de datos |
| Coste | El almacenamiento es costoso y requiere mucho tiempo | El almacenamiento es rentable, rápido y flexible | El almacenamiento es rentable, rápido y flexible |
| Conformidad con ACID | Registra datos de manera compatible con ACID para garantizar los más altos niveles de integridad | No conformidad con ACID: las actualizaciones y eliminaciones son operaciones complejas | Conformidad con ACID para garantizar la coherencia ya que varias partes leen o escriben datos al mismo tiempo |

[ACID - Wikipedia -](https://es.wikipedia.org/wiki/ACID)

## Consideraciones de ETL  

* Se debe asegurar la **calidad de los datos**  
* Hay que tener claro sources y targets  
* Se debe definir si el ETL sera en batch (cada cierto tiempo) o streaming (en menos de 1 seg, o en tiempo real)  
* Se debe definir si mi ETL sera incremental (solo los datos que cambian, acostumbran a ser batch) o total (todos los datos)
* Hay que documentar

## Servicios y herramientas para ETL  

### ***Herramientas enterprise***  

![Herramientas enterprise](https://i.imgur.com/HT45pfa.png)  

### ***Herramientas cloud***  

![Herramientas cloud](https://i.imgur.com/DeJALT7.png)  

### ***Herramientas open source***  

![Herramientas open source](https://i.imgur.com/1EKlD2M.png)  

### ***Herramientas custom***  

![Herramientas custom](https://i.imgur.com/LxsyTSN.png)  

## Quiz: Introducción a ETL  