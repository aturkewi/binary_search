def find_pivot(array, imin=0, imax=nil)
  imax = array.length - 1 if imax == nil
  return "No pivot" if array.first < array.last
  imid = (imax - imin)/2 + imin
  if array[imid] > array[imid+1]
    imid
  elsif array[imid] > array[imin]
    find_pivot(array, imid + 1, imax)
  else
    find_pivot(array, imin, imid-1)
  end
end

def recursive_binary_search(array, query, imin, imax)
  return "Not found" if imax < imin
  imid = (imax - imin)/2 + imin
  if array[imid] > query
    recursive_binary_search(array, query, imin, imid-1)
  elsif array[imid] < query
    recursive_binary_search(array, query, imid + 1, imax)
  else
    imid
  end
end

def binary_search(array, query)
  pivot = find_pivot(array)
  imax = array.length - 1
  if pivot == "No pivot"
    recursive_binary_search(array, query, 0, imax)
  elsif query >= array[0]
    recursive_binary_search(array, query, 0, pivot)
  else
    recursive_binary_search(array, query, pivot+1, imax)
  end
end
