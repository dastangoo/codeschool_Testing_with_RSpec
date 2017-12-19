require 'rails_helper'

RSpec.describe Zombie, type: :model do
  context 'when hungry' do
    it "wants brains"
    # context "with a veggie preference", focus: true do
    context "with a veggie preference", slow: true do
      it "still craves brains"
      it "prefers vegan brains"
    end
  end
end
