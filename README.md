# Despliegue con AWS CodeDeploy para Aplicación Java en Tomcat

Este repositorio proporciona una guía y los recursos necesarios para implementar una aplicación Java en un servidor Tomcat utilizando AWS CodeDeploy.

## Configuración Inicial

1. **Preparación del entorno en AWS**:
   - Crea una aplicación en AWS CodeDeploy.
   - Configura un grupo de implementación que incluya las instancias de EC2 con Tomcat.

2. **Scripts de Despliegue**:
   - Dentro del directorio `codedeploy-scripts`, encontrarás los siguientes scripts:
     - `start.sh`: Inicia el servicio de Tomcat.
     - `stop.sh`: Detiene el servicio de Tomcat.
     - `beforeinstall.sh`: Se ejecuta antes de instalar la nueva versión de la aplicación.

3. **Configuración de `appspec.yml`**:
   - Este archivo define cómo CodeDeploy debe implementar tu aplicación.
   - Asegúrate de que los nombres de los scripts y las ubicaciones sean correctos.
   - Un ejemplo de archivo `appspec.yml` se encuentra en la raíz del repositorio.

## Implementación

1. **Empaquetado de la Aplicación**:
   - Asegúrate de que tu aplicación esté empaquetada correctamente, preferiblemente como un archivo WAR.
   - Coloca el archivo WAR en la ubicación correcta dentro del directorio `build/libs`.

2. **Implementación con CodeDeploy**:
   - Utiliza la consola de CodeDeploy o la CLI de AWS para implementar tu aplicación.
   - Durante el proceso de implementación, CodeDeploy ejecutará los scripts definidos en `appspec.yml` en las instancias de EC2 objetivo.

3. **Monitoreo y Solución de Problemas**:
   - Verifica los eventos y registros de implementación en la consola de CodeDeploy para monitorear el progreso y solucionar problemas durante el despliegue.

## Notas Adicionales

- Asegúrate de tener las credenciales de AWS configuradas adecuadamente para interactuar con CodeDeploy desde la línea de comandos o a través de scripts.
- Los permisos de los scripts deben ser configurados correctamente para que CodeDeploy pueda ejecutarlos sin problemas.
