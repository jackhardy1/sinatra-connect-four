class Grid

  attr_accessor :rows

  def initialize
    @rows = [
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x']]
  end

  def set_grid_size columns, rows
    @rows = []
    columns.times {@rows.push([])}
    @rows.each {|row| rows.times {row.push('x')}}
  end

  def out_of_bounds? row
    row > @rows.length
  end

end
