require 'byebug'

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


SUM_DIFFS = [[0, 1], [1, 0], [0, -1], [-1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1]]
MOVE_DIFFS = [[0, 1], [-1, 0], [0, -1], [1, 0]]

def spiral_value(num)
  hash = { [0, 0] => 1 }
  pos = [0, 0]
  side_length = 0
  num_turns = 0
  current_val = 1

  until current_val > num
    side_length += 1 if num_turns.even?

    delta = MOVE_DIFFS[num_turns % MOVE_DIFFS.length]

    side_length.times do
      new_pos = [pos[0] + delta[0], pos[1] + delta[1]]
      current_val = find_sum(hash, new_pos)
      hash[new_pos] = current_val
      pos = new_pos

      break if current_val > num
    end

    num_turns += 1
  end

  current_val
end

def find_sum(hash, pos)
  x, y = pos
  sum = 0

  SUM_DIFFS.each do |(dx, dy)|
    val = hash[[x + dx, y + dy]]
    sum += val if val
  end

  sum
end
