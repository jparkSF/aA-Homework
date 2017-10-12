#############################################
####    Big O-ctopus and Biggest Fish    ####
#############################################

FISHES = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'].freeze

def sluggish_octopus
  longest_fish = ""

  FISHES.each do |fish_1|
    FISHES.each do |fish_2|
      longest_fish = fish_2 if fish_2.length > longest_fish.length
    end
  end

  longest_fish
end

#Dominant Octopus
def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = arr.take(mid)
  right = arr.drop(mid)

  sorted(merge_sort(left),merge_sort(right))
end

def sorted(left, right)
  merged = []

  until left.empty? || right.empty?
    case left.first.length <=> right.first.length
    when -1
      merged << left.shift
    else
      merged << right.shift
    end
  end

  merged + left + right
end

def clever_octopus
  longest_fish = ""

  FISHES.each do |fish|
    longest_fish = fish if fish.size > longest_fish.size
  end
  longest_fish
end

p sluggish_octopus == "fiiiissshhhhhh"
p merge_sort(FISHES).last == "fiiiissshhhhhh"
p clever_octopus == "fiiiissshhhhhh"


#############################################
############   Dancing Octopus   ############
#############################################

TILES_ARRAY = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ].freeze

def slow_dance(direction, tile_arr)
  tile_arr.each_with_index do |v,i|
    return i if v == direction
  end
  nil
end

TILES_HASH = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4,
            "left-down" => 5, "left" => 6,  "left-up" => 7}.freeze

def fast_dance(direction, new_tiles_data_structure)
  new_tiles_data_structure[direction]
end

p slow_dance("up", TILES_ARRAY) == 0
p slow_dance("right-down", TILES_ARRAY) == 3
p fast_dance("up", TILES_HASH) == 0
p fast_dance("right-down", TILES_HASH) == 3
