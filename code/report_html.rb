# use a haml template to render html report page.
# engine = Haml::Engine.new("%p Haml code!")
# engine.render #=> "<p>Haml code!</p>\n"

require 'haml'
require 'pry'

class ReportHTML
  def self.write(grades, path)
    engine = Haml::Engine.new(File.read("report_template.html.haml"))
    content = engine.render(Object.new, :grades => grades)
    File.open(path, 'w') { |io| 
      io << content
    }

    # binding.pry

  end
end