# LAB5
Instrucciones para construir imagen.

lo primero es situarse sobre el proyecto de node js desde cmd cd / carpeta que contiene al proyecto

Es importante crear el archivo dockerfile por que este nos sirve para: copiar los archivos del proyecto a la imagen crear la base de datos de manera local y ejecutar comandos

despues de haber creado el docker File 

Se ejecuta los siguiente comandos.  # es importante iniciar sesion con el usuario de docker

docker build -t "Nombre de usuario"/"Repositorio de docker" .
Este comando sirve para crear la imagen el docker local
Ej:
docker build -t luis2200/lab5.1 .


docker push "Nombre de usuario"/"Repositorio de docker"
Este comando sirve para subir al repositorio
Ej:
docker push luis2200/lab5.1



Instrucciones para usar imagen.
ya con todo esto se tiene la imagen de la aplicacion en docker y puede ser accedida con luis2200/lab5.1

Despues para poder crear el ambiente local se tiene que crear un archivo docker-compose.yml que este archivo va a tener toda la informacion nesecaria crear los 2 servicios el de node js y el de MYSQL
algo bastante importante es la red para que los 2 servicios se puedan conectar

Despues de haber creado el docker-compose.yml

Se ejecuta el comando 

docker-compose up

y da como resultado
Starting mysql_MYSQLS_1 ... done
Starting mysql_nodejs_1 ... done
nodejs_1  | Server is running at port 40000
nodejs_1  | Mysql Connected...

Documentación de la puesta en marcha en ECS.

Esta parte fue la mas facil solo se tuvo que ejecutar los mismos comandos de la parte 1 pero en el index.js cambiar la ruta de la aplicacion a la del RDS y las credenciales.

Despues en ECS lo unico que tiene que hacer uno es ingresar en la imagen luis2200/lab5 ya que es otra imagen y habilitar el puerto 8000 despues todo lo demas es normal y no requiere ninguna configuracion

Se puede probar la pagina de ECS en el siguiente link conectada al RDS

http://18.220.228.141:8000/