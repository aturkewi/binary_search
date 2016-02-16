def binary_search(array, query, imin=0, imax = nil)
  imax = array.length-1 if imax == nil
  return "Not found" if imax < imin
  imid = (imax-imin)/2 + imin
  if array[imid] > query
    binary_search(array, query, imin, imid-1)
  elsif array[imid] < query
    binary_search(array, query, imid+1, imax)
  else
    imid
  end
end
