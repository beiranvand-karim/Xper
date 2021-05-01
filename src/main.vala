using Gtk;

int main (string[] args) {

    Gtk.init(ref args);
    var window = new Window();
    window.title = "Hello, world";
    window.border_width = 10;
    window.window_position = WindowPosition.CENTER;
    window.destroy.connect(Gtk.main_quit);
    window.show_all();
    Gtk.main();
	return 0;
}
