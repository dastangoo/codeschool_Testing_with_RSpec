require 'rails_helper'

RSpec.describe Zombie, type: :model do
  let(:zombie) { Zombie.new }
  before { zombie.hungry! }
  
  it "is hungry" do
    zombie.should be_hungry
  end
  
  it "craves brains" do
    zombie.should be_craving_brains
  end
  
  context 'with a veggie preference' do
    before { zombie.vegetrian = true }
    it "still craves brains" do
      # zombie.hungry!
      # zombie.vegetrian = true
    end
    it "craves vegan brains" do
      # zombie.hungry!
      # zombie.vegetrian = true
    end
  end
  
end
