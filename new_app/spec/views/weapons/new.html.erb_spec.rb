require 'rails_helper'

RSpec.describe "weapons/new", type: :view do
  before(:each) do
    assign(:weapon, Weapon.new(
      :name => "MyString"
    ))
  end

  it "renders new weapon form" do
    render

    assert_select "form[action=?][method=?]", weapons_path, "post" do

      assert_select "input[name=?]", "weapon[name]"
    end
  end
end
