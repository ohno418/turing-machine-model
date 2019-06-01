require_relative './state_transitions'

class TuringMachine
  attr_accessor :tape, :head_position,
                :current_state, :state_transitions

  def initialize(tape, state_transitions=STATE_TRANSITIONS)
    @tape = tape
    @head_position = 0
    @current_state = 0
    @state_transitions = state_transitions
  end

  def run
    write_symbol, transition, next_state = get_order

    tape.write(write_symbol, head_position)

    case transition
    when 'R'; go_right
    when 'L'; go_left
    when '!'
      return tape.cells.count('1')
    end

    self.current_state = next_state

    run
  end

  def inspect
    tape_str = tape.inspect
    tape_str[head_position] = "#{tape.symbol(head_position)}(h)"
    "#<#{self.class.name} tape: #{tape_str}, state: #{current_state.to_s}>"
  end

  private

  def get_order
    key = "#{tape.symbol(head_position)}#{current_state}"
    state_transitions[key].chars
  end

  def go_right
    self.head_position = head_position + 1
  end

  def go_left
    self.head_position = head_position - 1
  end
end
