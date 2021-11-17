# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validations' do
    it 'is valid with valid attributes' do
      user = create(:user)
      expect(user).to be_valid
    end
    it { should validate_presence_of(:email) }
  end

  describe '#associations' do
    it { is_expected.to have_many(:notes) }
  end
end
