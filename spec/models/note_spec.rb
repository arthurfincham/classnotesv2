require 'rails_helper'

RSpec.describe Note, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:note_title) }
    it { should validate_presence_of(:note_date) }
    it { should validate_presence_of(:instructor) }
  end

  it 'is valid with valid attributes' do
    note = Note.new(user_id: 2, note_title: 'TestTitle', note_date: '2021-10-11', instructor: 'Testructor')
    expect(note).to be_valid
  end

  it 'is not valid without a user_id' do
    note = Note.new(note_title: 'TestTitle', note_date: '2021-10-11', instructor: 'Testructor')
    expect(note).to_not be_valid
  end

  it 'is not valid without a title' do
    note = Note.new(user_id: 2, note_date: '2021-10-11', instructor: 'Testructor')
    expect(note).to_not be_valid
  end


  it 'is not valid without a date' do
    note = Note.new(user_id: 2, note_title: 'TestTitle', instructor: 'Testructor')
    expect(note).to_not be_valid
  end

  it 'is not valid without an instructor' do
    note = Note.new(user_id: 2, note_title: 'TestTitle', note_date: '2021-10-11')
    expect(note).to_not be_valid
  end

end


