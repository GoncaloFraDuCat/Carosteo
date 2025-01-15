require 'rails_helper'

RSpec.describe User, type: :model do
it 'returns the full_name for a user' do
  user = User.create(first_name: 'John', last_name: 'Doe')
  
  expect(user.full_name).to eq('John Doe')
end
end
