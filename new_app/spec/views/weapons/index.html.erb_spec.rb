require 'rails_helper'

RSpec.describe "weapons/index", type: :view do
  before(:each) do
    assign(:weapons, [
      Weapon.create!(
        :name => "Name"
      ),
      Weapon.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of weapons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
