require "turkish_list/version"
require 'json'

module TurkishList

  class City

    def city_name_for_plate(plate_number)
      file = File.read('../cities.json')
      cities = JSON.parse(file)
      city_name = cities.select {|k,v| k == plate_number.to_s}
      return city_name.values
    end 

    def self.who_am_i
      puts "Cities class"
    end
  
  end
  
end
