require 'rails_helper'

RSpec.describe "vampires/show", type: :view do
  before(:each) do
    @vampire = assign(:vampire, Vampire.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
