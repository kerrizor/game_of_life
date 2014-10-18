require 'minitest/autorun'

require_relative 'gol'

describe "universe" do
  it "should stop if there are no living cells" do
    universe = Universe.new([])
    universe.living_cells?.must_equal false
  end

  it "can compute the next generation" do
    universe = Universe.new([])
    universe.next_gen.must_equal universe
  end

  # it "will compute the next generation when there are cells" do
  #   universe = Universe.new([Cell.new])
  #   universe.next_gen
  #   universe.living_cells.must_equal []
  #   # universe.next_gen.must_not_equal Universe.new
  # end
end

describe "cell" do

  describe "#neighbors" do
    it "should have a list of its neighbors, case 1" do
      cell = Cell.new(neighbors: [Cell.new(x:0, y:1)])

      cell.neighbors.size.must_equal 1
    end

    it "should have a list of its neighbors, case 2" do
      cell = Cell.new(neighbors: [Cell.new(x:0, y:1), Cell.new(x:1,y:1)])

      cell.neighbors.size.must_equal 2
    end

    it "should have a list of its neighbors, case 3" do
      cell = Cell.new(neighbors: [Cell.new(x:0, y:1), Cell.new(x:0, y:1)])

      cell.neighbors.size.must_equal 1
    end
  end
end

#  it "a cell should know about its immediate neighbors"


  # fewer than 2 neighbors, dies

  # 2 or 3, lives

  # > 3 dies

  # dead w/ 3 live neighbors comes to life

  # if living_neighbors == 3
  #  living state = alive
  # end
