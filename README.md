


# 📡 Documentación API REST

Esta documentación describe la configuración inicial y las distintas solicitudes disponibles en una API RESTful desarrollada con PHP.

---

## 🔧 Configuración Inicial

### 📁 Archivo: `models/connection.php`

#### 1. Credenciales de la Base de Datos
Edita el método `infoDatabase()` para configurar:
- Nombre de la base de datos
- Usuario
- Contraseña

`static  public  function  infoDatabase(){
		$infoDB  =  array(
		"database"  =>  "courses_db",
		"user"  =>  "root",
		"pass"  =>  ""
		);
	return  $infoDB;
	}`
 

#### 2. API Key
En el método `apikey()` agrega la clave segura de la API (solo conocida por el administrador) puede ser uan cadena de caracteres aleatoria pero que solo sea conocida por el admin o quien usa la API.

`static public function apikey(){
	return "tu-api-key";
}`

#### 3. Acceso Público
En el método `publicAccess()` define las tablas públicas dentro de la api a las que se puede acceder de forma libre los usuarios que usen la API, esta configuración es opcional.

    static public function publicAccess(){
		$tables = ["courses",  "instructors"];
		return  $tables;
	}

Estas son las tablas que van a ser públicas, deben estar separadas por coma

---

## 🗄️ Estructura de la Base de Datos

 - Las tablas deben estar en **plural**.
 - Las columnas deben finalizar con el **nombre de la tabla en singular** como (_sufijo).
Ejemplo:
	 Tabla: `categories`	
	 Columnas:
	  - `id_category`
	  - `name_category`
	  - `date_created_category`
	  - `date_updated_category`
	 

 Las columnas mínimas por tabla deben ser:
 - `id_*` (auto incrementable)
 - `date_created_*`
 - `date_updated_*`
 
 


**Para relaciones entre tablas:**

Para relacionar tablas, el número del ID de la Tabla Relacionada debe estar en una columna de la Tabla Principal, y dicha columna debe tener el siguiente orden de palabras: id_(Tabla Relacionada en singular)_(Tabla Principal en singular) 

Tabla Principal: `countries` 
Tabla Relacionada: `codes| Columna: id_code_country` 
Tabla Relacionada: `dialcodes| Columna: id_dialcode_country`
  ```
  id_(tabla_relacionada_singular)_(tabla_principal_singular)
  ```

### 🧪 Autenticación
Para realizar autenticaciones con la API RESTful, es indispensable que la tabla de autenticación tenga siempre estas 4 columnas:
- `email_*` tipo text
- `password_*` tipo text
- `token_*` tipo text
- `token_exp_*` tipo text (aunque es una fecha de expiración lo que se guarda en la bd se guarda como text) ya que JWT nos da esta fecha 1516239022.

---

## 🔐 Autorización

 Todas las solicitudes a la API deben llevar en la cabecera 
(HEADERS) la propiedad Authorization con la respectiva 
APIKEY creada por el administrador.
```
Authorization: TU_APIKEY
```

---

## 📥 Solicitudes HTTP

🔍 SOLICITUDES DE TIPO GET
 La selección básica, consiste simplemente en colocar el 
nombre de la tabla luego del ENDPOINT.

`api.com/courses`

 *Nota: Si el nombre de la tabla está mal escrito o no existe en la 
base de datos recibirá como respuesta un status 404

`{
"status":  404,
"results":  "Not Found",
"method":  "get"
}`

---
🔍 SOLICITUDES DE TIPO GET
Seleccionar un dato específico, consiste en agregar el 
parámetro select a la url y colocar el nombre exacto (sin 
espacios a los lados) de una columna que exista en la 
tabla. Puede agregar las columnas que desee separándolas 
por coma.
`api.com/courses?select=id_course,tittle_course`

Ejemplo de respuesta:
`"status": 200,
"total": 39,
"results": [
{
"id_course": 1,
"tittle_course": "Curso de PHP Básico"
},
{
"id_course": 2,
"tittle_course": "Curso de HTML y CSS
},`

---
🔍 SOLICITUDES DE TIPO GET
***Filtrar una selección con un solo valor***, consiste en agregar los parámetros `linkTo` y `equalTo` a la url. En el primer parámetro escribir el nombre de columna donde se desea encontrar la coincidencia, y en el segundo parámetro colocar el valor exacto de lo que se desea filtrar.
`api.com/courses?select=tittle_course,id_course,description_course&linkTo=tittle_course&equalTo=Curso de HTML y CSS`

Ejemplo de respuesta:
`{
	"status": 200,
	"total": 1,
	"results": [
{
	"tittle_course": "Curso de HTML y CSS",
	"id_course": 2,
	"description_course": "Diseña sitios web responsivos con HTML y CSS."
	}
	]
}`

> Nota: Evita filtrar contenido de textos que contengan alguna coma.

---
🔍 SOLICITUDES DE TIPO GET
Filtrar una selección con varios valores, consiste en agregar más columnas separadas por comas al parámetro `linkTo` y en agregar más valores separados por coma en el parámetro `equalTo`.

`api.com/courses?select=tittle_course,id_course,description_course&linkTo=tittle_course&equalTo=Curso de HTML y CSS`

Ejemplo de respuesta:
`"status": 200,
"total": 1,
"results": [{
			"tittle_course": "Curso de HTML y CSS",
			"id_course": 2,
			"description_course": "Diseña sitios web responsivos con HTML y CSS."
			}
		]
	}`

> Nota: Agregar un solo valor por cada columna adicional.

---

🔍 SOLICITUDES DE TIPO GET
Ordenar datos, consiste en agregar los parámetros `orderBy` y `orderMode` e indicar en `orderBy` la columna que ordenará los datos y usar las palabras reservadas `ASC` o `DESC` en el parámetro `orderMode` para indicar el tipo de orden (Ascendente o Descendente)

`api.com/courses?select=tittle_course&orderBy=tittle_course&orderMode=ASC`

Ejemplo de respuesta:
`{
"status": 200,
"total": 39,
"results": [
{
"tittle_course": "After Effects"
},
{
"tittle_course": "APIs REST con Django"
},
{
"tittle_course": "Arduino y electrónica"
},
{
"tittle_course": "Automatización con Python"
}`

> *Nota: El orden se puede aplicar a números, alfabeto o fechas.

---
🔍 SOLICITUDES DE TIPO GET
Limitar datos, consiste en agregar los parámetros `startAt` y `endAt` e indicar en `startAt` la posición inicial desde donde se desea limitar los datos (la primera posición es el 0) y en el parámetro `endAt` indicar la cantidad de registros que se desean seleccionar. 
`api.com/courses?select=*&startAt=0&endAt=5&orderBy=id_course&orderMode=DESC`

Ejemplo de respuesta:
`{
"status": 200,
"total": 5,
"results": [
{
"id_course": 39,
"tittle_course": "Ciberseguridad",
"description_course": "Protege sistemas y redes.",
"id_instructor_course": 9,
"image_course": "cyber.jpg",
"price_course": "72.00",
"date_created_course": "2025-06-20 20:28:34",
"date_update_course": "2025-06-20 20:28:34"
}`

> Nota: Se puede combinar el orden y los límites, pero siempre el orden
> será la prioridad para la API


---
🔍 SOLICITUDES DE TIPO GET
***Relaciones entre tablas sin filtro***, consiste en traer información entre varias tablas que estén relacionadas por su ID sin filtrar información. 
La estructura de la URL cambia: 
 - Debemos agregar la palabra `relations` luego del ENDPOINT.
 - Agregar el parámetro `rel`:Allí indicar en primer lugar el nombre de la
   tabla principal y luego separado por comas las tablas relacionadas.
 - Luego agregar el parámetro `type`: Allí agregar los sufijos de las
   tablas puestas en el parámetro `rel`.

`api.com/relations?select=name_instructor,tittle_course,id_course&rel=courses,instructors&type=course,instructor&orderBy=id_course&orderMode=ASC&starAt=0&endAt=5`


> Nota: Al no filtrar datos traemos el total de información de todas las
> tablas en relación de acuerdo a los datos seleccionados.
---
🔍 SOLICITUDES DE TIPO GET
***Relaciones entre tablas con filtros***, consiste en traer información entre varias tablas que estén relacionadas por su ID filtrando información. 
Se repite exactamente el mismo procedimiento que se hace en la solicitud de tablas relacionadas agregando los parámetros `linkTo` y `equalTo` para buscar coincidencias en una o varias columnas de cualquiera de las tablas que se estén relacionando
`api.com/relations?linkTo=tittle_course&equalTo=Curso de HTML y CSS&select=name_instructor,tittle_course,id_course&rel=courses,instructors&type=course,instructor`

---
🔍 SOLICITUDES DE TIPO GET
***Búsqueda sin relaciones y con filtros***, consiste en realizar búsquedas en la base de datos en una sola tabla usando palabras claves y filtrando datos exactos. 
Usamos el parámetro `linkTo` para el nombre de columnas y agregamos el parámetro `search` para la búsqueda de la palabra clave y datos exactos.

`api.com/courses?select=*&linkTo=tittle_course&search=php`

> Nota: El primer valor de `linkTo` debe ser siempre la columna en donde se realizará la búsqueda, de igual forma, el primer valor de `search` debe ser la palabra clave. Luego con comas aplicamos los filtros.

---
🔍 SOLICITUDES DE TIPO GET
***Búsqueda con relaciones y con filtros***, consiste en realizar búsquedas en la base de datos en entre varias tablas relacionadas usando palabras claves y filtrando datos exactos. 
Además de los parámetros `linkTo` y `search`, usamos los parámetros de relación `rel` y `type`

`api.com/relations?rel=products,categories&type=product,category&search=Cortinas,2&select=name_product,name_category&linkTo=name_product,id_category_prduct`

---
🔍 SOLICITUDES DE TIPO GET
***Rangos con filtros***, consiste en seleccionar un rango de datos entre números o fechas en una sola tabla agregando los parámetros `between1` para el rango inicial y `between2` para el rango final, filtramos la información con el parámetro `filterTo` indicando el nombre de columna y el parámetro `inTo` para indicar el valor del filtro

`api.com/products?select=*&between1=2025-05-06&between2=2025-06-06&linkTo=date_created_product&filterTo=id_category_product&inTo=1`

---
🔍 SOLICITUDES DE TIPO GET
***Rangos entre relaciones con filtros***, consiste en seleccionar un rango de datos entre varias tablas relacionadas. Se realiza la solicitud de igual forma a la anterior agregando los parámetros de relación.

`api.com/relations?rel=products,categories&type=product,category&linkTo=date_created_product&between1=2025-05-06&between2=2025-06-06&select=name_product,name_category,date_created_product&filterTo=id_category_product&inTo=1`

---
➕ **SOLICITUDES DE TIPO POST**

***Registro usuarios***, consiste en registrar usuarios en la base de datos para luego generar el token de seguridad con su respectiva fecha de vencimiento al momento de realizar el login. 
Debemos agregar luego del `ENDPOINT` la tabla donde se realizará el registro de usuario, acompañado de los parámetros `register` con valor `true` y el parámetro `suffix` con el nombre de la tabla en singular. 
Los datos mínimos del formulario deben ser el `email` y el `password`

`api.com/instructors?register=true&suffix=instructor&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9....`

> Nota: Si la tabla donde se realiza el registro tiene como nombre users, no es necesario enviar el parámetro suffix.

---
➕ SOLICITUDES DE TIPO POST
***Login*** de usuarios, es la acción de solicitar el token de seguridad con su respectiva fecha de vencimiento usando el email y contraseña que usó en el registro. 
Debemos agregar luego del `ENDPOINT` la tabla donde se hizo el registro de usuario, acompañado de los parámetros `login` con valor `true` y el parámetro `suffix` con el nombre de la tabla en singular.

`api.com/instructors?login=true&suffix=instructor`

---
➕ SOLICITUDES DE TIPO POST
***Crear registros***, es la acción de crear información en una tabla de la base de datos. 
Debemos agregar luego del `ENDPOINT` la tabla donde se desea crear el nuevo registro, acompañado de los parámetros `token` con el valor del token entregado luego del `login` y los parámetros `table` y `suffix` con el nombre de la tabla en plural y singular de donde viene el usuario registrado.

`api.com/instructors?register=true&suffix=instructor&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9....`

> Nota: Los nombres de los campos del formulario deben ser exactos a los nombres de las columnas de la tabla donde se realizará el registro

---
 **✏️SOLICITUDES DE TIPO PUT**

***Editar registros***, es la acción de cambiar información en una tabla de la base de datos. 
Debemos agregar luego del `ENDPOINT` la tabla donde se desea editar el registro, acompañado de los parámetros `token` con el valor del `token` entregado luego del login. 
Además agregar los siguientes parámetros: 
 - El parámetro `id` para indicar el id del registro a editar.  
 - El parámetro `nameId` para indicar el nombre de la columna donde se buscará el id.
  - Los parámetros `table` y `suffix` con el nombre de la tabla en plural y singular de donde viene el usuario registrado

`api.com/courses?id=52&nameId=id_course&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...=instructors&suffix=instructor`

---
**❌SOLICITUDES DE TIPO DELETE**
***Eliminar registros***, es la acción de eliminar información en una tabla de la base de datos. 
Debemos agregar luego del ENDPOINT la tabla donde se desea eliminar el registro, acompañado de los parámetros `token` con el valor del token entregado luego del login. 
Además agregar los siguientes parámetros:

 - El parámetro `id`  para indicar el id del registro a eliminar.
 - El parámetro `nameId` para indicar el nombre de la columna donde se
   buscará el id.
 - Los parámetros `table` y `suffix` con el nombre de la tabla en plural y
   singular de donde viene el usuario registrado

`api.com/courses?id=40&nameId=id_course&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...&table=instructors&suffix=instructor`

---
***CREAR O EDITAR UN REGISTRO CON EXCEPCIÓN***

Esla acción de crear o editar un registro sin la necesidad de usar el token de seguridad. 
El parámetro `token`  debe ir con el valor `no`, y agregamos el parámetro `except` para indicar cualquier nombre de columna de la tabla en que se desea hacer cambios. 

> Nota: Esto se utiliza cuando necesitamos hacer cambios en la base de
> datos sin necesidad de haber generado un “login” de por medio.

---

## 📝 Recomendaciones

- Usa nombres en **inglés** para las tablas y columnas.
- Usa **snake_case** (`_`) para separar palabras.
- Evita comas dentro de textos que van como filtros (`equalTo`, `search`, etc.).

  ***Archivo de configuracion y pruebas para postman***
  [Api Rest.postman_collection.json](https://github.com/user-attachments/files/20875099/Api.Rest.postman_collection.json)

  

