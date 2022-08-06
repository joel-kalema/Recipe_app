require 'rails_helper'

RSpec.describe Food, type: :model do
  let(:user) { User.create(name: 'Don', email: 'example@mail.com', password: 'password') }
  let(:food) { Food.create(user_id: user.id, name: 'Apple', measurement_unit: 'kg', price: 12) }

  describe 'Validations' do
    it 'should allow valid name' do
      food.name = 'Egg'
      expect(food).to_not be 'Apple'
    end
  end
end
