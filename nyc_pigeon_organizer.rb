def nyc_pigeon_organizer(data)
  # write your code here!

  new_data = {}

data.each do |outer_key, outer_val|
  outer_val.each do |inner_key, inner_val|
    inner_val.each do |pigeons|
# pigeons = names, outer-Key = color/gender/value, inner_val = vals
if !new_data[pigeons]
  new_data[pigeons]= {}
  end
  if !new_data[pigeons][outer_key]
    new_data[pigeons][outer_key] = []
  end
  new_data[pigeons][outer_key] << inner_key.to_s
end
end
end



  new_data
end


#if !new_data.keys.include?(data[data_key][att][index])
#  new_data << data[data_key][att][index]
#end
#new_data[data[data_key]] = data[data_key][att]
