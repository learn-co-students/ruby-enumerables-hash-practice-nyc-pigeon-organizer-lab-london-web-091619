def nyc_pigeon_organizer(data)
  pigeon_names = data[:gender][:male] + data[:gender][:female]
  pigeon_list = pigeon_names.each_with_object({}) do |name, h|
    h[name] = {
      color: [],
      gender: [],
      lives: []
    }
  end

  pigeon_list.each_key do |list_name|
    data.each_pair do |type_k, token_h|
      token_h.each_pair do |token_k, data_names|
        if data_names.include?(list_name)
          pigeon_list[list_name][type_k] << token_k.to_s
        end
      end
    end
  end

  pigeon_list
end