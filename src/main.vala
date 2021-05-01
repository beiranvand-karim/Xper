using GLib;
using Gtk;

public class Main : Object {


	public void on_destroy (Widget window) {
		Gtk.main_quit();
	}

	static int main (string[] args) {
		Gtk.init (ref args);

         MyWindow window = new MyWindow ();
         window.show_all();
         window.destroy.connect (main_quit);

		Gtk.main ();

		return 0;
	}
}
