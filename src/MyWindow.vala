using Gtk;

public class MyWindow : Gtk.Window {

private Image image;

	public MyWindow () {

	this.set_title ("Image Viewer in Vala");
    this.border_width = 10;
    this.window_position = WindowPosition.CENTER;
    this.set_default_size (350, 70);

	var box = new Box (Orientation.VERTICAL, 5);
	var button = new Button.with_label ("Open image");
	image = new Image ();

	box.pack_start (image, true, true, 0);
	box.pack_start (button, false, false, 0);
	this.add (box);

	button.clicked.connect (on_open_image);
	}


public void on_open_image (Button self) {
	var filter = new FileFilter ();
	var dialog = new FileChooserDialog ("Open image",
	                                    this,
	                                    FileChooserAction.OPEN,
	                                    Stock.OK,
	                                    ResponseType.ACCEPT,
	                                    Stock.CANCEL,
	                                    ResponseType.CANCEL);
	filter.add_pixbuf_formats ();
	dialog.add_filter (filter);

	switch (dialog.run ())
	{
		case ResponseType.ACCEPT:
			var filename = dialog.get_filename ();
			image.set_from_file (filename);
			break;
		default:
			break;
	}
	dialog.destroy ();
}
}
