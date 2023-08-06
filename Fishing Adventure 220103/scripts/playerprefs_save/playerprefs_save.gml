/// @description playerprefs_save();
function playerprefs_save() {
	/**
	 * Writes all modified preferences to disk. Normally, there is no need to call this function,
	 * since playerprefs_gm will automatically call it for you.
	 * 
	 * You can use it to force the saving in critical points of the game/application. 
	 *
	 * Note: There is no need to call this function manually inside game end event.
	 * 
	 * Note: On mobile platforms preferences are saved during 
	 * application suspend, because there's no game end event. 
	 */
	playerprefs_get_instance();
	if (global._playerprefs_changes) {
	    ds_map_secure_save(global._playerprefs_map, global._playerprefs_filename);
	    global._playerprefs_changes = false;
	}



}
