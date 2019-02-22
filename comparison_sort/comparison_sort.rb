include RSpec

def comparison_sort(array)
    return array.sort { |a,b| a <=> b}
end