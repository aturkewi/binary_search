def find_pivot(array, imin=0, imax=nil)
  return "No pivot" if array.first < array.last
  imax = array.length - 1 if imax == nil
  imid = (imax - imin)/2 + imin
  if array[imid] > array[imid+1]
    return imid
  elsif array[imid] < array[imin]
    find_pivot(array, imin, imid-1)
  else
    find_pivot(array, imid+1, imax)
  end
end

def recursive_binary_search(array, query, imin, imax)
  return "Not found" if imax < imin
  imid = (imax-imin)/2 + imin
  if array[imid] > query
    recursive_binary_search(array, query, imin, imid-1)
  elsif array[imid] < query
    recursive_binary_search(array, query, imid+1, imax)
  else
    imid
  end
end

def binary_search(array, query)
  pivot = find_pivot(array)
  if pivot == "Not found"
    imin = 0
    imax = array.length - 1
  else
    if array[0] <= query
      imin = 0
      imax = pivot
    else
      imin = pivot+1
      imax = array.length - 1
    end
  end
  recursive_binary_search(array, query, imin, imax)
end
