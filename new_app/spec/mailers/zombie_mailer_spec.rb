require "rails_helper"

RSpec.describe ZombieMailer, type: :mailer do
  context "#welcome" do
    # let(:zombie) { Zombie.create(email: 'ash@zombiemail.com') }
    let(:zombie) { stub(email: 'ash@zombiemail.com') }
    subject { ZombieMailer.welcome(zombie) }
    
    its(:from) { should include('admin@codeschool.com') }
    its(:to) { should include(zombie.email) }
    its(:subject) { should == 'Welcome Zombie@' }
  end
end
