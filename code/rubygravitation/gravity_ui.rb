#!/usr/bin/env ruby
#
# This file is gererated by ruby-glade-create-template 1.1.4.
#
require 'libglade2'

class GravityGlade
   include GetText

   attr :glade

   def initialize(path_or_data, root = nil, domain = nil, localedir = nil, flag = GladeXML::FILE)
      bindtextdomain(domain, localedir, nil, "UTF-8")
      @glade = GladeXML.new(path_or_data, root, domain, localedir, flag) {|handler| method(handler)}

   end

   def on_time_step_combobox_changed(widget)
      puts "on_time_step_combobox_changed() is not implemented yet."
   end
   def on_anaglyphic_checkbutton_toggled(widget)
      puts "on_anaglyphic_checkbutton_toggled() is not implemented yet."
   end
   def on_comet_combobox_changed(widget)
      puts "on_comet_combobox_changed() is not implemented yet."
   end
   def on_graphic_pane_expose_event(widget, arg0)
      puts "on_graphic_pane_expose_event() is not implemented yet."
   end
   def on_step_button_clicked(widget)
      puts "on_step_button_clicked() is not implemented yet."
   end
   def on_eventbox1_button_release_event(widget, arg0)
      puts "on_eventbox1_button_release_event() is not implemented yet."
   end
   def on_pixels_spinbutton_value_changed(widget)
      puts "on_pixels_spinbutton_value_changed() is not implemented yet."
   end
   def on_nice_checkbutton_toggled(widget)
      puts "on_nice_checkbutton_toggled() is not implemented yet."
   end
   def on_GravityUI_delete_event(widget, arg0)
      puts "on_GravityUI_delete_event() is not implemented yet."
   end
   def on_solar_system_checkbutton_toggled(widget)
      puts "on_solar_system_checkbutton_toggled() is not implemented yet."
   end
   def on_eventbox1_motion_notify_event(widget, arg0)
      puts "on_eventbox1_motion_notify_event() is not implemented yet."
   end
   def on_trails_checkbutton_toggled(widget)
      puts "on_trails_checkbutton_toggled() is not implemented yet."
   end
   def on_eventbox1_scroll_event(widget, arg0)
      puts "on_eventbox1_scroll_event() is not implemented yet."
   end
   def on_run_stop_button_clicked(widget)
      puts "on_run_stop_button_clicked() is not implemented yet."
   end
   def on_comets_checkbutton_toggled(widget)
      puts "on_comets_checkbutton_toggled() is not implemented yet."
   end
   def on_eventbox1_button_press_event(widget, arg0)
      puts "on_eventbox1_button_press_event() is not implemented yet."
   end
   def on_quit_button_clicked(widget)
      puts "on_quit_button_clicked() is not implemented yet."
   end
end

# Main program
if __FILE__ == $0
   # Set values as your own application.
   PROG_PATH = "gravity.glade"
   PROG_NAME = "YOUR_APPLICATION_NAME"
   GravityGlade.new(PROG_PATH, nil, PROG_NAME)
   Gtk.main
end
