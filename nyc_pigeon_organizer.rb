def nyc_pigeon_organizer(data)
  organised_pigeons = {}
  data.each do |pigeon_property, pigeon_property_option|
    pigeon_property_option.each do |option_name, option_info|
      option_info.each do |name|
        if organised_pigeons.key?(name)
          if organised_pigeons[name].key?(pigeon_property)
            organised_pigeons[name][pigeon_property] << option_name.to_s
          else
            organised_pigeons[name][pigeon_property] = [option_name.to_s]
          end
        else
          organised_pigeons[name] = {pigeon_property => [option_name.to_s]}
        end
      end
    end
  end
  organised_pigeons
end