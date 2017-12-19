require 'rails_helper'

RSpec.describe Zombie, type: :model do
  it "is invalid without a name" do
    zombie = Zombie.new
    zombie.should_not be_valid
  end
  it "has a name that matches 'Ash Clone'" do
    zombie = Zombie.new(name: "Ash Clone 1")
    zombie.name.should match(/Ash Clone \d/)
  end
  it "include tweets" do
    tweet1 = Tweet.new(status: 'Uuuuuuuuuuuuu')
    tweet2 = Tweet.new(status: 'Arggggggggg')
    zombie = Zombie.new(name: 'Ash', tweets:[tweet1, tweet2])
    zombie.tweets.should include(tweet1)
    zombie.tweets.should include(tweet2)
  end
  it "starts with two weapons" do
    zombie = Zombie.new(name: 'Ash')
    # zombie.weapons.count.should == 2
    zombie.should have(2).weapons
  end
  it "changes the number of Zombies" do
    zombie = Zombie.new(name: 'Ash')
    expect { zombie.save }.to_change { Zombie.count }.by(1)
  end
  it "raises an error if saved without a name" do
    zombie = Zombie.new
    expect { zombie.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end
  # it "responds to name" do
    # zombie = Zombie.new
    # zombie.should respond_to(:name)
    # subject.should respond_to(:name)
    # should respond_to(:name)
  # end
  # it "responds to name" { should respond_to(:name) }
  it { should respond_to(:name) }
  # it { subject.name.should == 'Ash' 
  its(:name) { should == 'Ash' }
  its(:weapons) { should include(weapon) }
  its(:brain) { should be_nil }
  its('tweets.size') { should == 2 }
  it 'craves brains when hungry'
  # it 'with a veggie prefrence still craves brains when hungry'
  # it 'with a veggie prefrence prefers vegan brains when hungry'
  
  # it 'craves brains when hungry'
  # describe 'with a veggie preference' do
  #   it 'still craves brains when hungry'
  #   it 'prefers vegan brains when hungry'
  # end
  
  # describe 'when hungry' do
  #   it 'craves brains' 
  #   describe 'with a veggie preference' do
  #     it 'still craves brains'
  #     it 'prefers vegan brains'
  #   end
  
  # context 'when hungry' do
  #   it 'craves brains'
  #   context 'with a veggie preference' do
  #     it 'still craves brains'
  #     it 'prefers vegan brains'
  #   end
  # end
  
  # context 'with a veggie preference' do
  #   subject { Zombie.new(vegetation: true) }
  # 
  #   it 'craves vegan brains' do
  #     craving.should == 'vegan brains' 
  #   end
  # end
  
  its(:craving) { should == 'vegan brains' }
  
  # context 'with a veggie preference' do
  #   subject { Zombie.new(vegetarian: true, weapons: [axe]) }
  #   let(:axe) { Weapon.new(name: 'axe') }
  # 
  #   its(:weapons) { should include(axe) }
  # 
  #   it 'can use its axe' do
  #     subject.swing(axe).should == true
  #   end
  # end
  
  # context 'with a veggie preference' do
  #   let(:zombie) { Zombie.new(vegetarian: true, weapons: [axe]) }
  #   let(:axe) { Weapon.new(name: 'axe') }
  #   subject { zombie }
  # 
  #   its(:weapons) { should include(axe) }
  # 
  #   it 'can use its axe' do
  #     zombie.swing(axe).should == true
  #   end
  # end
  
  context 'with a veggie preference' do
    subject(:zombie) { Zombie.new(vegetarian: true, weapons: [axe])}
    let(:axe) { Weapon.new(name: 'axe') }
    
    it 'can use its axe' do
      zombie.swing(axe).should == true
    end
  end
  
  let!(:zombie) { Zombie.create }
  subject { zombie }
  its(:name) { should be_nil? }
  
  let(:zombie) { Zombie.create }
  subject { zombie }
  
  its(:name){ should be_nil? }
  
  it {should be_craving_brains }
  
  it "should not be hungry after eating brains" do
    expect { zombie.eat(:brains) }.to change {
      zombie.hungry
    }.from(true).to(false)
    # @zombie.hungry.should be_true
    # @zombie.eat(:brains)
    # @zombie.hungry.should be_false
  end
end
