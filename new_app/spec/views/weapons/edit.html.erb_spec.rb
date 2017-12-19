require 'rails_helper'

RSpec.describe "weapons/edit", type: :view do
  before(:each) do
    @weapon = assign(:weapon, Weapon.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit weapon form" do
    render

    assert_select "form[action=?][method=?]", weapon_path(@weapon), "post" do

      assert_select "input[name=?]", "weapon[name]"
    end
  end
end
