require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'Don', email: 'example@mail.com', password: 'password') }

  context '.name' do
    it 'is valid with a name of more than 3 characters' do
      expect(user).to be_valid
    end
  end
end
