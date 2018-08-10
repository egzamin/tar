class World
  attr_reader :living_cells
  def initialize
    @living_cells = []
  end

  def set_living_at(x, y)
    living_cells << [x, y]
  end

  def alive_at?(x, y)
    living_cells.include? [x, y]
  end

  def empty?
    # living_cells.empty?
    living_cells.count.zero?
  end
end
