---
name: godot-scaffolder
description: Genera la estructura base para un nuevo plugin de Godot 4 siguiendo los estándares de la Asset Library.
---

# Procedimiento de Scaffolding

## Cuándo usar este skill
Usa este skill cuando el usuario solicite crear un nuevo plugin o asset para Godot 4, o cuando necesites inicializar una estructura base para desarrollo en la Asset Library.

## Pasos de ejecución

1. **Validación:** 
   - Verifica que el nombre del asset sea descriptivo y use snake_case
   - Confirma que no existan caracteres especiales o espacios

2. **Estructura de directorios:**
   - Crear `addons/{{asset_name}}/`
   - Dentro, crear subcarpetas opcionales según necesidad: `icons/`, `scripts/`, `scenes/`

3. **Generación de archivos:**
   
   ### plugin.cfg
   ```ini
   [plugin]
   name="{{AssetName}}"
   description="Descripción del plugin"
   author="Tu Nombre"
   version="1.0.0"
   script="{{asset_name}}.gd"
   ```
   
   ### {{asset_name}}.gd (EditorPlugin)
   - Debe comenzar con `@tool`
   - Extender de `EditorPlugin`
   - Implementar `_enter_tree()` y `_exit_tree()`
   - Usar tipado estático en todas las funciones

4. **Reglas críticas:**
   - **Regla de Oro:** Todo script de plugin debe empezar con `@tool`
   - **Limpieza:** El método `_exit_tree()` debe eliminar cualquier nodo o control añadido al editor
   - **Rutas:** Nunca uses rutas absolutas hardcodeadas. Usa `get_script().resource_path.get_base_dir()`

5. **Verificación post-creación:**
   - Confirmar que el plugin puede activarse/desactivarse sin errores
   - Verificar que no haya leaks de nodos en el editor
