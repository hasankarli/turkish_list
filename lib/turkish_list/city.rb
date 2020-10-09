require 'turkish_list/data/city_list'


class City
    def find_by_plate_number(plate_number)
      city_name = CITY_LIST.select {|k,v| k == plate_number.to_s}
      return city_name.values
    end 

    def self.who_am_i
      puts "Cities class"
    end
end