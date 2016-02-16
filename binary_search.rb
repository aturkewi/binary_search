def binary_search(array, query, imin=0, imax=nil)
  imax = array.length - 1 if imax == nil
  return "Value Not Found" if imax < imin
  imid = imin + (imax-imin)/2
  puts "imax: #{imax}, imin: #{imin}"
  if array[imid] > query
    binary_search(array, query, imin, imid-1)
  elsif array[imid] < query
    binary_search(array, query, imid+1, imax)
  else
    imid
  end
end
