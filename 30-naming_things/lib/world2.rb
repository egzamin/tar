class World2
  attr_reader :living_cells
  def initialize
    @living_cells = []
  end

  def add_living_at(location)
    living_cells.push(location)
  end

  def alive_at?(location)
    living_cells.include?(location)
  end

  def empty?
    # living_cells.empty?
    living_cells.count.zero?
  end
end
