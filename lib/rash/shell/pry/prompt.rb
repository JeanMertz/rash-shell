# frozen_string_literal: true

Pry.config.prompt = [
  proc do |obj, _, pry|
    target = obj.to_s == 'main' ? '' : " (#{obj.to_s.split('::').last})"
    env = Rash::Shell.environment_with_color

    "#{pry.config.prompt_name} [#{env}]#{target} % "
  end,

  proc do |obj, _, pry|
    target = obj.to_s == 'main' ? '' : " (#{obj.to_s.split('::').last})"
    env = Rash::Shell.environment_with_color

    "#{pry.config.prompt_name} [#{env}]#{target} * "
  end
]
