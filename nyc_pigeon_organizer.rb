def nyc_pigeon_organizer(data)
  list = {}
  data.each do |level, sublevel|
    sublevel.each do |details, names|
      names.each do |name|
        if list.key(name) == nil
          list["#{name}"] = {:color => [], :gender => [], :lives => []}
        end
      end
    end
  end
  data.each do |level, sublevel|
    sublevel.each do |details, names|
      names.each do |name|
        list["#{name}"][level] << details.to_s
      end
    end
  end
  list
end
