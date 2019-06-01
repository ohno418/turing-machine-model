class Tape
  attr_accessor :cells, :head_position

  ELEMENTS = ['0', '1', '+'].freeze

  def initialize(str)
    @cells = str.chars
    @head_position = 0
    unless appropriate_tape?
      raise ArgumentError, 'Inappropriate cells.'
    end
  end

  def inspect
    if cells.include?('+')
      cells.join(nil).split('+')
           .map { |i| i.to_i(2).to_s }
           .join('+')
    else
      cells.join(nil).to_i(2).to_s
    end
  end

  private

  def appropriate_tape?
    cells.all? { |i| ELEMENTS.include?(i) }
  end
end
