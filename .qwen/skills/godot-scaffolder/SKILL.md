---
name: godot-scaffolder
description: Genera la estructura base para un nuevo plugin de Godot 4 siguiendo los estándares de la Asset Library.
---

# Procedimiento de Scaffolding

1. **Validación:** Asegurarse de que el nombre del asset sea descriptivo.
2. **Estructura:**
   - Crear `addons/{{asset_name}}/`
   - Generar `plugin.cfg` con versión 1.0.
   - Generar `plugin.gd` heredando de `EditorPlugin`.
3. **Regla de Oro:** Todo script de plugin debe empezar con la anotación `@tool`.
4. **Limpieza:** El método `_exit_tree()` debe eliminar cualquier nodo o control añadido al editor.
