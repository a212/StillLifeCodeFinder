
def find(moves, pos, target, depth)
  return if depth <= 0
  if pos == target
    p moves
    return
  end
  [[1, 3, 1, 0, 0], [1, 1, 0, 0, 3], [0, 3, 1, 3, 0],
      [3, 0, 0, 1, 1], [0, 0, 3, 1, 1]].each_with_index do |p, i|
    new_pos = Array.new(pos.size)
    p.each_with_index do |n, j|
      new_pos[j] = (n + pos[j]) % 4
    end
    find(moves + [i + 1], new_pos, target, depth - 1)
  end
end

find([], [0]*5, [0, 2, 2, 1, 3], 12)

