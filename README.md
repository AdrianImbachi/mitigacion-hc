# mitigacion-hc


Instalación de ENHSP-20:

Asegúrate de tener ENHSP-20 instalado en tu sistema. Puedes descargarlo desde aquí: https://sites.google.com/view/enhsp/.

Archivos Necesarios:

Asegúrate de tener dos archivos:
domain.pddl: Contiene la definición del dominio mitigacion-hc.

problem.pddl: Contiene la instancia del problema problem-hc.

Estructura de Archivos:

Coloca mitigacion-hc.pddl y problem-hc.pddl en una carpeta accesible desde la línea de comandos.
Ejecución desde la Terminal:

Abre una terminal o línea de comandos en tu sistema operativo.

Dentro del directorio ENHSP-20:
Utiliza el siguiente comando para ejecutar ENHSP-20 con los archivos PDDL:
Comando de Ejecución:

 `java -jar enhsp-dist/enhsp.jar /ruta/a/mitigacion-hc.pddl /ruta/a/problem-hc.pddl`

Reemplaza `/ruta/a/domain.pddl` y `/ruta/a/problem.pddl` con las rutas donde tengas almacenados los archivos mitigacion-hc.pddl y problem-hc.pddl, respectivamente.

Espera a la Solución:

ENHSP-20 comenzará a planificar una solución basada en los criterios de minimización del presupuesto total utilizado, conforme a las metas de reducción de emisiones especificadas en el problema.
Interpretación del Resultado:

Una vez que ENHSP-20 haya completado la planificación, mostrará en la salida estándar el plan generado para alcanzar los objetivos del problema problem-hc utilizando el dominio mitigacion-hc.
