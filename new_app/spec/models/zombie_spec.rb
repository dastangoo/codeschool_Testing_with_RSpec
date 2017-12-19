require 'rails_helper'

RSpec.describe Zombie, type: :model do
  it "validates presence of name" do
    zombie = Zombie.new(name: nil)
    # zombie.valid?
    # zombie.errors.should have_key(:name)
    zombie.should validate_presence_of_name(:name).with_message('been eaten')
    
  end
end
