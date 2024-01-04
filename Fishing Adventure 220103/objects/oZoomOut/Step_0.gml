if (live_call()) return live_result;

if (oProt.x >= x) {
    // Get the current camera
    var cam = view_camera[0];
	var goalHeight = 540
	var goalWidth = 960
    // Check if we need to increment sizes
    if (newWidth < goalWidth || newHeight < goalHeight) {
        // Calculate steps required to reach the goal
        var widthSteps = (goalWidth - newWidth) / 0.5;
        var heightSteps = (goalHeight - newHeight) / 0.5;
        var maxSteps = max(widthSteps, heightSteps);

        // Prevent division by zero
        if (maxSteps > 0) {
            var widthIncrement = (goalWidth - newWidth) / maxSteps;
            var heightIncrement = (goalHeight - newHeight) / maxSteps;

            // Increment sizes
            newWidth += widthIncrement;
            newHeight += heightIncrement;
        }

        // Ensure values do not exceed goals
        newWidth = min(newWidth, goalWidth);
        newHeight = min(newHeight, goalHeight);
    }

    // Set the camera view size
    camera_set_view_size(cam, newWidth, newHeight);



}

if (oProt.x < x){
    // Get the current camera
    var cam = view_camera[0];
	var goalHeight = 270
	var goalWidth = 480
    // Check if we need to decrement sizes
    if (newWidth > goalWidth || newHeight > goalHeight) {
        // Calculate steps required to reach the goal
        var widthSteps = (newWidth - goalWidth) / 0.5;
        var heightSteps = (newHeight - goalHeight) / 0.5;
        var maxSteps = max(widthSteps, heightSteps);

        // Prevent division by zero
        if (maxSteps > 0) {
            var widthDecrement = (newWidth - goalWidth) / maxSteps;
            var heightDecrement = (newHeight - goalHeight) / maxSteps;

            // Decrement sizes
            newWidth -= widthDecrement;
            newHeight -= heightDecrement;
        }

        // Ensure values do not go below goals
        newWidth = max(newWidth, goalWidth);
        newHeight = max(newHeight, goalHeight);
    }

    // Set the camera view size
    camera_set_view_size(cam, newWidth, newHeight);
	
	// Get the current camera properties
    var camX = camera_get_view_x(cam);
    var camY = camera_get_view_y(cam);

    // Adjust camera position to ensure it stays within the room bounds
    camX = max(0, min(camX, room_width - newWidth));
    camY = max(0, min(camY, room_height - newHeight));

    // Set the camera position
    camera_set_view_pos(cam, camX, camY);
	
}
