require "turkish_list/version"
require 'turkish_list/city'

module TurkishList

  def self.city_name_by_plate_number(plate_number)
    City.find_by_plate_number(plate_number)
  end
  
end
