require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation of a user' do
    it 'uses email and password as parameters' do
      user = User.create(email: 'test@hotmail.com', password: 'notsecure')

      expect(user.email).to eq 'test@hotmail.com'
      expect(user.password).to eq 'notsecure'
    end
  end
end
