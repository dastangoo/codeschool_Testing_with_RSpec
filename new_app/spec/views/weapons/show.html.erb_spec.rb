require 'rails_helper'

RSpec.describe "weapons/show", type: :view do
  before(:each) do
    @weapon = assign(:weapon, Weapon.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
