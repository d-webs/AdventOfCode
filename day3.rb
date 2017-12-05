def manhattan_distance(num)
  coordinate = 1
  side_length = 0
  num_turns = 0

  until coordinate >= num
    side_length += 1 if num_turns.even?
    coordinate += side_length
    num_turns += 1
  end

  radius = (n + 1) / 2
  mid_point = coordinate - radius
  horizontal_steps = (num - mid_point).abs

  horizontal_steps + radius
end


SIDES = [:bottom, :right, :top, :left]
DIFFS = [[0, 1], [1, 0], [0, -1], [-1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1]]


def find_sum(grid, pos)
  x, y = pos
  sum = 0

  DIFFS.each do |(dx, dy)|
    val = grid[x + dx][y + dy]
    sum += val if val
  end

  sum
end


def spiral_value(num)
  val = 0
  side_length = 1
  num_turns = 1
  spiral = [[1, 1]]
  row_idx = 0

  until coordinate >= num
    current_side = SIDES[num_turns % 4]

    side_length += 1 if num_turns.even?

    case current_side
    when :bottom
      new_row = []
      side_length.times do
      end
    when :right
      (side_length - 2).downto(0) do |row|
        current_pos = [row, spiral.last.length]
        val = find_sum(spiral, current_pos)
        row[idx] << val
      end

      
    num_turns += 1
  end

  radius = (n + 1) / 2
  mid_point = coordinate - radius
  horizontal_steps = (num - mid_point).abs

  horizontal_steps + radius
end

def manhattan_distance(num)
  side_length = 1
  num_turns = 1
  spiral = [[1, 1]]
  idx = 1

  until current_row.last > num
    current_row = [spiral[-1][-1]] # start with last element from last row.
    # sub_idx = 1 # we already have one element, start with index of one.
    spiral << current_row # put it into spiral matrix.

    side_length += 1 if num_turns.even? # incriment side length every 2 turns.

    current_side = num_turns % 3

    # push values into row until it is the correct side length
    side_length.times do
      val = 0
      DIFFS.each do |(dx, dy)|
      end
    end

    num_turns += 1 # turn after row is complete.
  end

  radius = (n + 1) / 2
  mid_point = coordinate - radius
  horizontal_steps = (num - mid_point).abs

  horizontal_steps + radius
end
