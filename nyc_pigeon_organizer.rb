def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each { |color_gender_lives, attributes|
    attributes.each { |attribute_value, pigeon_names|
      pigeon_names.each { |individual_name|
        pigeon_list[individual_name] ||= {}
        pigeon_list[individual_name][color_gender_lives] ||= []
        pigeon_list[individual_name][color_gender_lives].push(attribute_value.to_s)
      }
    } 
  }
  pigeon_list
end