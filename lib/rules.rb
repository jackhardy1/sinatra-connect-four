class Rules

  def four_in_a_vertical_line? grid
    grid.each do |column|
      if column.each_cons(4).any? {|line|line.uniq.length == 1 && line.uniq[0].is_a?(Integer)}
        return true
      else
        return false
      end
    end
  end

  def four_in_a_horizontal_line? grid
    new_grid = grid
    new_grid.transpose.each do |row|
      if row.each_cons(4).any? {|line|line.uniq.length == 1 && line.uniq[0].is_a?(Integer)}
        return true
      else
        return false
      end
    end
  end

  # def four_in_a_diagonal? grid
  #
  # end
end
