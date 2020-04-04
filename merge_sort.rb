class MergeSort
  def self.merge_sort(array)
    if array.length < 2
      array
    else 
      a = merge_sort(array[0...array.length/2]) 
      b = merge_sort(array[array.length/2 + 1.. -1])
      full = []

      until a.empty? && b.empty?
        if a.empty?
          full += b
          b.clear
        elsif b.empty?
          full += a
          a.clear
        elsif a[0] <= b[0]
          full.push(a.shift)
        else
          full.push(b.shift)
        end
      end
      full
    end
  end
end
