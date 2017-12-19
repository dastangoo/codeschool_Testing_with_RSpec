require "spec_helper"
require "zombie"
# Instead of using this
# describe "A Zombie" do
# We can use this
describe Zombie do
  # it "is named Ash" do
  #   zombie = Zombie.new
  #   zombie.name.should == 'Ash'
  # end
  
  it "has no brains" do
    zombie = Zombie.new
    zombie.brains.should < 1
  end
  
  it "is hungry" do
    zombie = Zombie.new
    # zombie.hungry?.should == true
    # zombie.hungry?.should be_true
    zombie.should be_hungry
  end
  # xit "is named Ash" do
  # 
  # end
  # it "is named Ash" do
  #   pending
  # end
end

