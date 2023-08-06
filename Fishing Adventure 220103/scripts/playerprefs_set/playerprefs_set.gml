/// @description playerprefs_set(key, value);
/// @param {string} key The key of the playerpref saved value
/// @param {string|real} value The value to save
function playerprefs_set(argument0, argument1) {
	/*
	 * Sets the value of the preference identified by key.
	 *
	 * @example
	 * playerprefs_set("player_name", "Ciberman");
	 * playerprefs_set("health", 58);
	 */

	playerprefs_get_instance();
	global._playerprefs_changes = true;
	ds_map_set(global._playerprefs_map, argument0, argument1); 



}
