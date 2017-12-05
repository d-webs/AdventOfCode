require 'byebug'

def take_path(filename)
  path = File.readlines(filename).map { |num| Integer(num.chomp) }

  current_step = 0 # Start at the first index
  total_steps = 0 # Initial total number of steps at 0

  while current_step >= 0 && current_step < path.length
    num_steps = path[current_step]

    num_steps >= 3 ? path[current_step] -= 1 : path[current_step] += 1
    
    current_step += num_steps

    total_steps += 1
  end

  total_steps
end
