# frozen_string_literal: true

Pry.prompt = [
  proc do |target_self, _, pry|
    target = if target_self.to_s == 'main'
               ''
             else
               " (#{target_self.to_s.split('::').last})"
             end
    env = Rash::Shell.environment_with_color

    "#{pry.config.prompt_name} [#{env}]#{target} % "
  end,

  proc do |target_self, _, pry|
    target = if target_self.to_s == 'main'
               ''
             else
               " (#{target_self.to_s.split('::').last})"
             end
    env = Rash::Shell.environment_with_color

    "#{pry.config.prompt_name} [#{env}]#{target} * "
  end
]
