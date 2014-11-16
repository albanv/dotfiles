# Editors
#   available options: vim, mvim, mate, emacsclient...etc.
Pry.config.editor = "vim"

# Custom prompt
Pry.config.prompt = [
  proc { |obj, nest_level, _| "pry (#{obj}):#{nest_level} > " },
  proc { |obj, nest_level, _| "pry (#{obj}):#{nest_level} * " }
]

# Exception
Pry.config.exception_handler = proc do |output, exception, _|
  def colorize(text, color_code)
    "\033[#{color_code}m#{text}\033[0m"
  end
  puts colorize "#{exception.class}: #{exception.message}", 31
  puts colorize "from #{exception.backtrace.first}", 31
end

# Rails
if defined?(Rails)
  begin
    require "rails/console/app"
    require "rails/console/helpers"
  rescue LoadError => e
    require "console_app"
    require "console_with_helpers"
  end
end

# === Listing config ===
# Better colors - by default the headings for methods are too
# similar to method name colors leading to a "soup"
# These colors are optimized for use with Solarized scheme
# for your terminal
Pry.config.ls.heading_color = :magenta
Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black


# awesome_print gem: great syntax colorized printing
# look at ~/.aprc for more settings for awesome_print
begin
  require 'awesome_print'
#   # The following line enables awesome_print for all pry output,
#   # and it also enables paging
#   Pry.config.print = proc {|output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output)}
#   # If you want awesome_print without automatic pagination, use the line below
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
   puts "gem install awesome_print  # <-- highly recommended"
 end

def reload
  reload!
end
