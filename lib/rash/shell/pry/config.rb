Pry.hooks.add_hook(:before_session, :welcome) do |output|
  output.print "#{Pry::Helpers::Text.yellow(Pry.config.prompt_name)} shell " \
               "started in #{Rash::Shell.environment_with_color} environment. "

  output.print "Happy Hackin'" unless ENV['RACK_ENV'] == 'production'
  output.puts "\n\n"
end

Pry.config.color = true
Pry.config.theme = 'railscasts'
Pry.config.pager = false
Pry.config.history.file = '.pry_history'
Pry.config.prompt_name = "\e[38;5;222m#{ENV['APP_NAME'] || File.basename(Dir.pwd)}\033[0m"
