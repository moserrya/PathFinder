class PathFinder
  attr_reader :paths

  def initialize(grid_size)
    @size = grid_size - 1
    build_grid
    @paths = 0
  end

  def explore(grid = @grid, coord = [0, 0])
    @paths += 1 if coord == [@size, @size]
    gridcopy = Marshal.load(Marshal.dump(grid))
    gridcopy[coord] = false
    possible_moves(coord).each { |move| explore(gridcopy, move) if gridcopy[move] }
    @paths
  end

  private

  def possible_moves(coord)
    [up(coord), right(coord), down(coord), left(coord)]
  end

  def right(coord)
    [coord.first + 1, coord.last]
  end

  def left(coord)
    [coord.first - 1, coord.last]
  end

  def up(coord)
    [coord.first, coord.last - 1]
  end

  def down(coord)
    [coord.first, coord.last + 1]
  end

  def build_grid
    @grid = Hash.new
    (0..@size).each do |i|
      (0..@size).each do |j|
        @grid[[i, j]] = true
      end
    end
  end
end