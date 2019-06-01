class Tape
  attr_accessor :cells

  ELEMENTS = ['0', '1', '+'].freeze

  def initialize(str)
    @cells = str.chars
    unless appropriate_tape?
      raise ArgumentError, 'Inappropriate cells.'
    end
  end

  def symbol(position)
    cells[position]
  end

  def write(new_symbol, position)
    unless ELEMENTS.include?(new_symbol)
      raise ArgumentError, 'Inappropriate symbol.'
    end

    cells[position] = new_symbol
  end

  def inspect
    cells.join(nil)
  end

  private

  def appropriate_tape?
    cells.all? { |i| ELEMENTS.include?(i) }
  end
end
