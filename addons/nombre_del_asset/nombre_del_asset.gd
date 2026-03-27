@tool
extends EditorPlugin

const PLUGIN_NAME = "Asset Template"

func _enter_tree() -> void:
	# Inicialización del plugin
	print("[%s] Plugin activado" % PLUGIN_NAME)
	# Aquí puedes añadir botones al editor o configuraciones
	# add_tool_menu_item("Mi Herramienta", _on_menu_pressed)

func _exit_tree() -> void:
	# Limpieza al desactivar
	print("[%s] Plugin desactivado" % PLUGIN_NAME)
	# remove_tool_menu_item("Mi Herramienta")