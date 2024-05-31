use glib::variant::ToVariant;
use gtk::{prelude::*, Window, WindowType};
use webkit2gtk::{WebView,WebViewExt};

fn main() {
    gtk::init().unwrap();

    let window = Window::new(WindowType::Toplevel);

    let webview = WebView::new();
    webview.load_uri("http://example.com");

    window.add(&webview);
    window.show_all();

    gtk::main();
}
