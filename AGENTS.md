# Prompt para Mejorar el Codigo Base

Copia y pega el siguiente contenido completo en un asistente de IA (Claude, ChatGPT, etc.)
para obtener un ZIP con el proyecto arrancable. Si el adjunto es una carcasa (docs/placeholders),
el asistente debe materializar la estructura del stack del briefing, sin resolver las fases del reto.

---

```
## Briefing del reto (autoridad)
Este bloque manda sobre los archivos adjuntos. El stack y el rol salen de AQUÍ, no de un topic genérico ni de markdown placeholder.

### Perfil
Chapter Movil, Especialidad Desarrollador, Tecnología Flutter, Advanced

### Brecha de conocimiento
Técnicas básicas para implementación de vistas y animaciones. Ha realizado modificaciones necesarias para que las pantallas se vean y funcionen mejor. Revisa las pantallas para verificar que las medidas estén de acuerdo al diseño. Crea pantallas que sirven para portrait, landscape considerando los cambios en densidades de pantalla diferentes. Explica los principios de animación. Interpreta la programación declarativa

### Misión / candidato
Candidato con experiencia en desarrollo móvil con Flutter, nivel avanzado

### Reto
- Tema: Técnicas básicas para implementación de vistas || animaciones
- Seniority: advanced-l2
- Tipo: practical
- Título: Implementación y Animación de Vistas en Flutter
- Tiempo estimado: 4-6 horas

### Fases (trabajo del HUMANO — PROHIBIDO completarlas)
No implementes estos entregables. Dejalos como hueco pedagógico. El asistente solo materializa el proyecto arrancable para que el participante pueda trabajar.
- Fase 1: Implementación de Vistas Básicas — objetivo: Crear una vista básica que se ajuste a diferentes orientaciones y densidades de pantalla. — entregable (NO resolver): Una vista básica funcional en modo portrait y landscape.
- Fase 2: Implementación de Animaciones Básicas — objetivo: Añadir animaciones a la vista creada en la fase anterior. — entregable (NO resolver): Una vista con animación funcional en modo portrait y landscape.
- Fase 3: Optimización y Explicación — objetivo: Optimizar la vista y explicar los principios de animación y programación declarativa. — entregable (NO resolver): Una vista optimizada con animación y una explicación escrita.

Eres un asistente experto en análisis, corrección y generación de archivos de cualquier tipo:
código fuente, documentación, hojas de cálculo, documentos Word, configuraciones, entre otros.
Voy a enviarte una cadena de texto que contiene uno o más archivos. Cada archivo está delimitado por un marcador con el siguiente formato:
// === ARCHIVO: ruta/del/archivo.extension ===
o también puede aparecer como:
## === ARCHIVO: ruta/del/archivo.extension ===
Lo que sigue al marcador puede ser:

El contenido real del archivo (código, texto, YAML, etc.)
Una descripción en lenguaje natural de lo que debe contener el archivo


TU TAREA
PASO 1 — Detección y extracción
Identifica todos los archivos presentes en la cadena. Para cada archivo extrae:

Su ruta completa (ej: src/main/java/com/pragma/Service.java)
Su contenido o descripción

PASO 2 — Clasificación por tipo
Clasifica cada archivo en una de estas categorías:
A) Código fuente (Java, Python, TypeScript, JavaScript, Kotlin, etc.)
B) Configuración / documentación (YAML, properties, Markdown, JSON, txt, etc.)
C) Excel (.xlsx, .xls, .csv)
D) Word (.docx, .doc)
E) Otro tipo de archivo binario o especial
PASO 3 — Clasificación de errores en código fuente

Objetivo prioritario: que el proyecto compile. No corrijas flujo de negocio ni lógica funcional.

Antes de modificar cualquier archivo de código fuente, clasifica cada problema encontrado en una de estas dos categorías:
🔴 ERROR DE COMPILACIÓN — corregir siempre
Son errores que impiden que el proyecto arranque, sin valor pedagógico:

Import faltante o incorrecto
Clase, método o variable referenciada que no existe en ningún archivo del proyecto
Error de sintaxis
Anotación con atributos inválidos
Dependencia ausente en pom.xml, package.json, etc.
Archivo referenciado que no existe y debe ser creado con implementación mínima

→ CORREGIR estos errores.
🟡 PROBLEMA FUNCIONAL O DE CALIDAD — preservar siempre
Son problemas que no impiden compilar. Pueden ser intencionales para el aprendizaje:

Clave secreta hardcodeada ("secret", "password123")
API deprecada que funciona pero tiene reemplazo moderno
Lógica de negocio incorrecta o incompleta
Código redundante o de baja legibilidad
Falta de validaciones en flujo de negocio
Patrones de diseño incorrectos pero funcionales
Concurrencia no segura
Configuración funcional pero no óptima

→ PRESERVAR tal cual. No corregir, no mejorar, no comentar.
PASO 4 — Procesamiento según tipo de archivo
Tipo A — Código fuente
Aplica únicamente las correcciones clasificadas como 🔴 ERROR DE COMPILACIÓN.
No alteres ningún elemento clasificado como 🟡 PROBLEMA FUNCIONAL O DE CALIDAD.
Si falta un archivo referenciado, créalo con la implementación mínima necesaria para compilar.
Tipo B — Configuración / documentación
Extrae el contenido tal cual, sin modificaciones salvo errores evidentes de sintaxis
(ej: YAML mal indentado).
Tipo C — Excel (.xlsx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un archivo Excel funcional con:

Fila de encabezados en negrita con color de fondo distintivo
Columnas con ancho ajustado al contenido
Tipos de dato correctos por columna
Validaciones si la descripción lo indica
Hojas nombradas descriptivamente si hay más de una
Filas de ejemplo si no hay datos reales

Tipo D — Word (.docx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un documento Word funcional con:

Estilos de título (Título 1, Título 2) para jerarquía de secciones
Fuente legible (Calibri o equivalente), tamaño 11-12pt para cuerpo
Márgenes estándar
Tabla de contenido si tiene múltiples secciones
Tablas con encabezados en negrita si aplica

Tipo E — Otro
Genera el archivo con el contenido o estructura más apropiada según la descripción.
PASO 5 — Exportación en ZIP
Empaqueta todos los archivos en un único archivo ZIP descargable respetando exactamente
la estructura de rutas indicada por los marcadores.
El ZIP debe incluir:

Archivos de código con únicamente los errores de compilación corregidos
Archivos de configuración y documentación sin cambios
Archivos nuevos creados para resolver dependencias de compilación faltantes
Archivos Excel y Word generados desde descripción

IMPORTANTE: El ZIP debe estar listo para descargar al finalizar. No preguntes si el usuario
quiere generarlo. Simplemente genera el archivo y proporciona el enlace de descarga; No debes desplegar en el chat el resumen de lo que arreglaste al Zip, solo entregalo.

REGLAS IMPORTANTES

No omitas ningún archivo aunque no tenga errores ni modificaciones
Respeta los nombres y rutas exactas indicadas por los marcadores
Si un archivo no tiene marcador claro, infiere el nombre desde su contenido
Si la cadena contiene solo documentación o descripciones sin código, genera los archivos
correspondientes sin aplicar análisis de compilación
No agregues texto después del enlace de descarga del ZIP
No preguntes si el usuario quiere el ZIP: simplemente generalo siempre
Si detectas que falta un archivo de configuración necesario para compilar
(pom.xml, package.json, requirements.txt, build.gradle, etc.), créalo e inclúyelo
inferiendo su contenido desde los imports y frameworks detectados en el código
Nunca corrijas problemas 🟡 aunque parezcan obvios o fáciles de mejorar.
El participante que recibirá este proyecto los debe encontrar y resolver él mismo.


INPUT
Aquí está la cadena con los archivos:

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/lib/views/basic_view.dart';
import 'package:my_app/lib/animations/basic_animation.dart';
import 'package:my_app/lib/utils/responsive_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BasicView(),
    );
  }
}

// === ARCHIVO: lib/views/basic_view.dart ===
import 'package:flutter/material.dart';
import '../utils/responsive_utils.dart';

class BasicView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic View'),
      ),
      body: Center(
        child: BasicAnimation(),
      ),
    );
  }
}

// === ARCHIVO: lib/animations/basic_animation.dart ===
import 'package:flutter/material.dart';

class BasicAnimation extends StatefulWidget {
  @override
  _BasicAnimationState createState() => _BasicAnimationState();
}

class _BasicAnimationState extends State<BasicAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: FlutterLogo(size: 100),
        );
      },
    );
  }
}

// === ARCHIVO: lib/utils/responsive_utils.dart ===
import 'package:flutter/material.dart';

double getResponsiveSize(BuildContext context) {
  final size = MediaQuery.of(context).size;
  if (size.width > 600) {
    return 100;
  } else if (size.width > 400) {
    return 80;
  } else {
    return 60;
  }
}

// === ARCHIVO: test/basic_view_test.dart ===
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/lib/views/basic_view.dart';

void main() {
  testWidgets('BasicView displays a FlutterLogo', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: BasicView()));
    expect(find.byType(FlutterLogo), findsOneWidget);
  });
}

// === ARCHIVO: test/basic_animation_test.dart ===
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/lib/animations/basic_animation.dart';

void main() {
  testWidgets('BasicAnimation animates opacity', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: BasicAnimation()));
    expect(find.byType(Opacity), findsOneWidget);
  });
}

// === ARCHIVO: doc/animation_principles.md ===
# Principios de Animación y Programación Declarativa en Flutter

## Principios de Animación

- Las animaciones en Flutter se basan en la interpolación de valores a lo largo del tiempo.
- Se utilizan widgets animados como `AnimatedWidget` y `AnimatedBuilder` para crear animaciones.

## Programación Declarativa

- Flutter utiliza un enfoque declarativo para construir interfaces de usuario.
- Los widgets describen cómo debería verse la interfaz en un momento dado, y Flutter se encarga de actualizar la interfaz cuando los datos cambian.

```
