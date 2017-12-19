class Zombie < ApplicationRecord
  has_one :weapon
  
  def decapitate
    weapon.slice(self, :head)
    self.status = "dead again"
  end
  
  def geolocate
    # Zoogle.graveyard_locator(self.graveyard)
    loc = Zoogle.graveyard_locator(self.graveyard)
    # "#{loc[:latitude]}, #{loc[:longitude]}"
    "#{loc.latitude}, #{log.longitude}"
  end
  
  private
    def latitude
      return 2
    end
    def longitude
      return 3
    end
end
