// Set the resolution we want to display, or get this value from the device
var displayWidth = global.displayWidth; //display_get_width();
var displayHeight = global.displayHeight; //display_get_height();

// Set the size of GUI
display_set_gui_size(displayWidth, displayHeight);

// Set the size of the game window
window_set_size(displayWidth, displayHeight);

// Set the resolution we've programmed the game for
var baseWidth = 1280;
var baseHeight = 720;

// Determine the aspect ratio
var aspect = baseWidth/baseHeight;

// Work out the adjusted height and width
if (displayWidth >= displayHeight)
{
    var height = min(baseHeight, displayHeight);
    var width = height * aspect;
}

// Resize the application surface to our adjusted values
surface_resize(application_surface, width, height);
