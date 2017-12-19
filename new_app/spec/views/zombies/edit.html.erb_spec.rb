require 'rails_helper'

RSpec.describe "zombies/edit", type: :view do
  before(:each) do
    @zombie = assign(:zombie, Zombie.create!(
      :name => "MyString",
      :graveyard => "MyString"
    ))
  end

  it "renders the edit zombie form" do
    render

    assert_select "form[action=?][method=?]", zombie_path(@zombie), "post" do

      assert_select "input[name=?]", "zombie[name]"

      assert_select "input[name=?]", "zombie[graveyard]"
    end
  end
end
