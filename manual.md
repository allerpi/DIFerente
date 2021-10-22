# Manual de instalación

Para correr y compilar la aplicación se necesita tener instalados [MySQL](https://www.mysql.com/downloads/), [Node.js](https://nodejs.org/en/download/), [Flutter](https://flutter.dev/docs/get-started/install), un [JDK](https://www.oracle.com/java/technologies/downloads/) y el [Android SDK](https://developer.android.com/studio#downloads). 

Se necesita un emulador de Android o un dispositivo físico con este sistema operativo. También se podría correr la aplicación en Chrome.

## Configuración del proyecto

### Base de datos

1. Correr comando `mysql -u <usuario> -p < *.sql` en el directorio de db.

### API

1. Correr `node install` en el directorio de api.
2. Llenar información de la base de datos en el archivo [index.js](api/index.js) (donde están las caritas felices).

### Aplicación

1. Se puede cambiar la IP privada de la computadora que corre la API a `192.168.0.12` (si es posibe) o se puede modificar el archivo [database_controller.dart](app_dif/lib/controller/database_controller.dart), cambiando todas las apariciones de `192.168.0.12` por la IP de la computadora que esté corriendo la API.

2. Si se modificó el archivo database_controller.dart, volver a generar el APK de release de la aplicación con `flutter run --release`.

## Correr el proyecto

1. Correr la API desde el directorio raíz con el comando ` node api/index.js`.
2. Instalar APK de release (si no se instaló previamente) en el dispositivo.
3. Si se usó una IP privada, asegurarse que el servidor y el dispositivo móvil se encuentren en la misma red.
4. Usarla :D

## Configuración para pruebas

Para correr las pruebas se necesita tener [Appium Server](https://github.com/appium/appium-desktop/releases/tag/v1.22.0) y [Python](https://www.python.org/downloads/) instalados.

1. Instalar paquete de python de Appium.
```bash
pip install Appium-Python-Client
```

2. Modificar el archivo [pytest.py](tests/pytest.py), modificando todos los campos que tengan una carita feliz
- platformVersion (versión de Android)
- deviceName (del emulador o el dispositivo móvil)
- app (path completo del APK de la aplicación en la computadora)

3. Iniciar el servidor de Appium.

4. Correr el archivo [pytest.py](tests/pytest.py)

5. Ver las pruebas correr :D