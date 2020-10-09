require "turkish_list/version"

module TurkishList

  class City
    cities = {}
    def initialize
      file = File.read('./cities.json')
      cities = JSON.parse(file)
    end

    def city_name_for_plate(plate_number)
      city_name = cities.select {|k,v| k == plate_number}
      return city_name.values
    end 

    def self.who_am_i
      puts "Cities class"
    end
  
  end
  
end
