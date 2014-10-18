class Universe
  attr_accessor :living_cells

  def initialize(seeds = [])
    @living_cells = seeds
  end

  def living_cells?
    living_cells.size > 0
  end

  def next_gen
    if living_cells.empty?
      self
    else
      living_cells.each do |cell|
        cell.next_gen
        cell.neighbors.next_gen

        # list of living cells
      end
    end
  end

  def eql(other)
    other.living_cells == living_cells
  end

  def living_cells
    @living_cells.sort.uniq
  end

end