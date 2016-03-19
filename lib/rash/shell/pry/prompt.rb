Pry.prompt = [
  proc do |target_self, _, pry|
    target = target_self.to_s == 'main' ? '' : " (#{target_self.to_s.split('::').last})"
    env = Rash::Shell.environment_with_color

    "#{pry.config.prompt_name} [#{env}]#{target} % "
  end,

  proc do |target_self, _, pry|
    target = target_self.to_s == 'main' ? '' : " (#{target_self.to_s.split('::').last})"
    env = Rash::Shell.environment_with_color

    "#{pry.config.prompt_name} [#{env}]#{target} * "
  end
]
