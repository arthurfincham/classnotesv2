require 'rails_helper'

RSpec.describe Note, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:note_date) }
  end

  it 'is valid with valid attributes' do
    note = Note.new(user_id: 2, note_date: '2021-10-11')
    expect(note).to be_valid
  end

  it 'is not valid without a user_id' do
    note = Note.new(note_date: '2021-10-11')
    expect(note).to_not be_valid
  end

  it 'is not valid without a date' do
    note = Note.new(user_id: 2)
    expect(note).to_not be_valid
  end

end


