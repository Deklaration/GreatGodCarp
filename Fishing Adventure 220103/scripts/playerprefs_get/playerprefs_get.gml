/// @description  playerprefs_get(key, [default = undefined]);
/// @param {string} key The key to find the playerpref saved value
/// @param {string|real|undefined} [default = undefined] The default value to return if the key does not exists
/// @returns {string|real|undefined} The saved playerpref value
function playerprefs_get() {
	/**
	 * Gets the value of the preference identified by key.
	 * If it doesn't exist, it will return the default value.
	 * 
	 * @example 
	 * var name = playerprefs_get("player_name");
	 * var health = playerprefs_get("health", 0);
	 */

	playerprefs_get_instance();
	if (argument_count > 1) {
	    if (!ds_map_exists(global._playerprefs_map, argument[0])) {
	        return argument[1];
	    }
	}
	return ds_map_find_value(global._playerprefs_map, argument[0]); 



}
