require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute_cat_key, attribute_hash|
    attribute_hash.each do |attribute_key, name_array|
      name_array.length.times do |index|
        if pigeon_list[name_array[index]]
          if pigeon_list[name_array[index]][attribute_cat_key] 
            attribute=pigeon_list[name_array[index]][attribute_cat_key]
            attribute.push(attribute_key.to_s)
            pigeon_list[name_array[index]][attribute_cat_key]=attribute
          else
            attribute = []
            attribute.push(attribute_key.to_s)
            pigeon_list[name_array[index]][attribute_cat_key]=attribute
          end
        else  
          attribute = []
          attribute.push(attribute_key.to_s)
          pigeon_list[name_array[index]] = {attribute_cat_key => attribute}
        end
      end
    end
  end
  return pigeon_list
end