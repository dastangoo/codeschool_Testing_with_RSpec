class Zombie < ApplicationRecord
  validates :name, presence: { message: 'been eaten' }
  
end
