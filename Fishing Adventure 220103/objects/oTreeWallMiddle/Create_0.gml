// In the Create Event of the tree object

// Generate a unique seed for the tree based on its position
var unique_seed = x + y * room_width;

// Set the random seed
random_set_seed(unique_seed);

// Choose a random sprite index
image_speed = 0;
image_index = irandom_range(0, image_number - 1);

// Reset the random seed to avoid affecting other random events
randomize();
depth = -y