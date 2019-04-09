# Bubble Sort Algorithm

def bubble_sort(arr)
    l = arr.length
    swapped = true
    while swapped do
      swapped = false
      (l - 1).times do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
      end
    end
    arr
  end
  
#   bubble_sort([4,3,78,2,0,2])
#   bubble_sort(["hi","hello","hey"])
  
  def bubble_sort_by(arr)
    l = arr.length
    swapped = true
    while swapped do
      swapped = false
      (l - 1).times do |i|
        if yield([arr[i],arr[i+1]]) > 0
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
      end
    end
    arr
  end
  
#   bubble_sort_by(["hi","hello","hey"]) do |left,right|
#     left.length - right.length
#   end
  