talking = false

image_speed = 0.2

wind_strength = random_range(1, 10); // Wind strength
boat_direction = 0; // Initialize boat direction
sail_angle = 0; // Angle of the sail relative to the boat

// In a Create or Step event
// Assign a simple wind direction
wind_direction_words = choose("North", "Northeast", "East", "Southeast", "South", "Southwest", "West", "Northwest");
wind_direction = 350
// Initialize boat direction (angle in degrees)
boat_direction = 0; // Starting facing east
move_speed = 0
wind_boost = 0
setsail = false