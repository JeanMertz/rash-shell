# frozen_string_literal: true

Pry::Commands.create_command 'no-prompt' do
  description 'Show/hide REPL command prompt prefix'

  def process
    case _pry_.prompt
    when Pry::NO_PROMPT
      _pry_.pop_prompt
    else
      _pry_.push_prompt Pry::NO_PROMPT
    end
  end
end
