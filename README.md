# Godot 4 Asset Template

Plantilla base para crear assets y plugins de Godot 4 optimizada para desarrollo asistido por IA (Qwen Agent).

## 📋 Descripción

Este proyecto proporciona una estructura lista para usar en el desarrollo de plugins para Godot 4.x, siguiendo los estándares de la Godot Asset Library. Incluye configuración de contexto para agentes de IA y skills especializados para acelerar el desarrollo.

## ✨ Características

- **Estructura estándar:** Cumple con los requisitos de la Godot Asset Library
- **Configurado para IA:** Incluye `QWEN.MD` con contexto específico para Qwen Agent
- **Skills personalizados:** Skill `godot-scaffolder` para generación rápida de plugins
- **GDScript 2.0:** Código tipado y optimizado para Godot 4.x
- **Documentación completa:** Guías de estilo y mejores prácticas incluidas

## 📁 Estructura del Proyecto

```
/workspace/
├── .qwen/
│   ├── settings.json          # Configuración del agente Qwen
│   └── skills/
│       └── godot-scaffolder/  # Skill para scaffolding de plugins
│           └── SKILL.md
├── addons/
│   └── nombre_del_asset/      # Tu plugin aquí
│       ├── plugin.cfg
│       └── nombre_del_asset.gd
├── QWEN.MD                    # Contexto para el agente IA
└── README.md                  # Este archivo
```

## 🚀 Instalación

### Para usar esta plantilla:

1. **Clona o descarga** este repositorio
2. **Renombra** la carpeta `addons/nombre_del_asset/` al nombre de tu plugin
3. **Edita** `plugin.cfg` con la información de tu plugin
4. **Personaliza** `nombre_del_asset.gd` con tu lógica
5. **Activa** el plugin en Godot: `Proyecto → Ajustes → Plugins`

### Para desarrollo con Qwen Agent:

El proyecto incluye configuración específica para Qwen Agent:
- `QWEN.MD`: Define el rol, contexto y reglas de estilo
- `.qwen/skills/`: Contiene skills especializados
- `.qwen/settings.json`: Configura herramientas y filtros de contexto

## 💻 Uso

### Desarrollo del Plugin

El plugin base extiende `EditorPlugin` y está listo para:
- Añadir elementos al menú del editor
- Crear docks personalizados
- Modificar la escena o inspector
- Registrar nodos o recursos personalizados

```gdscript
@tool
extends EditorPlugin

func _enter_tree() -> void:
    add_tool_menu_item("Mi Herramienta", _on_menu_pressed)

func _exit_tree() -> void:
    remove_tool_menu_item("Mi Herramienta")
```

### Usando el Skill godot-scaffolder

Para generar un nuevo plugin automáticamente, solicita al agente:
*"Crea un nuevo plugin llamado [nombre] usando godot-scaffolder"*

El skill generará:
- Estructura de directorios correcta
- `plugin.cfg` configurado
- Script principal con `@tool` y `EditorPlugin`
- Métodos `_enter_tree()` y `_exit_tree()` implementados

## 📖 Documentación Adicional

### QWEN.MD - Contexto para IA

Este archivo define:
- **Rol:** Desarrollador Senior de Godot 4.x
- **Estándares:** GDScript 2.0 con tipado estático
- **Convenciones:** Nomenclatura, señales, decoradores
- **Arquitectura:** Desacoplamiento mediante señales

### Estándares de Código

- **Tipado estático obligatorio:** `var salud: int = 100`
- **Señales modernas:** `signal mi_senal(valor: int)`
- **Decoradores:** `@export`, `@onready`, `@tool`
- **Nomenclatura:**
  - Clases: `PascalCase`
  - Variables/Funciones: `snake_case`
  - Constantes: `UPPER_CASE`

## 🔧 Requisitos

- Godot 4.0 o superior
- Qwen Agent (opcional, para desarrollo asistido por IA)

## 📄 Licencia

MIT License - Libre uso para proyectos personales y comerciales.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:
1. Fork el proyecto
2. Crea una rama para tu feature
3. Envía un Pull Request

## 📞 Soporte

Para issues relacionados con la plantilla, abre un issue en el repositorio.
Para problemas específicos de Godot, consulta la [documentación oficial](https://docs.godotengine.org/).