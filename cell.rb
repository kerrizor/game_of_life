class Cell
  attr_accessor :x, :y, :neighbors

  def initialize(opts)
    @x=opts[:x]
    @y=opts[:y]

    @neighbors = opts[:neighbors] || []
    validate_neighbors

    true
  end

  def next_gen
    if neighbors.count < 2
      nil
    elsif neighbors.count > 3
      nil
    else
      self
    end
  end

  private

  def validate_neighbors
    if @neighbors.size >= 1
      result = []

      @neighbors.each do |cell|
        if @neighbors.select { |neighbor| neighbor.x == cell.x && neighbor.y == cell.y }.nil?
          result << cell
        end
      end

      @neighbor = result
    else
      @neighbor
    end
  end
end