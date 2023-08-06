/// @description  playerprefs_has(key);
/// @param {string} key The key to check the playerpref saved value
/// @returns {boolean} True or false depending if there is a saved playerpref with that key
function playerprefs_has(argument0) {
	/**
	 * Returns true if key exists in the preferences.
	 *
	 * @example 
	 * var first_play = playerprefs_has("first_play");
	 * if (!first_play) {
	 * show_message_async("Welcome to my super game!");
	 * }
	 */

	playerprefs_get_instance();
	return ds_map_exists(global._playerprefs_map, argument0); 



}
