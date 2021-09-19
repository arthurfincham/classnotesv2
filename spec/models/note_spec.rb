require 'rails_helper'

RSpec.describe Note, type: :model do

  it 'is not valid without a user_id' do
    note = Note.new(note_date: '2021-10-11')
    expect(note).to_not be_valid
  end

  it 'is not valid without a date' do
    note = Note.new(user_id: 2)
    expect(note).to_not be_valid
  end

  it 'is not valid without a title' do
    note = Note.new(note_date: '2021-10-11', user_id: 2)
    expect(note).to_not be_valid
  end

  it 'is valid with id, date and title of correct length' do
    note = Note.new(note_date: '2021-10-11', user_id: 2, note_title: 'intermediate')
    expect(note).to be_valid
  end

  it 'is not valid with a title > 14 chars' do
    note = Note.new(note_date: '2021-10-11', user_id: 2, note_title: 'intermediate class')
    expect(note).to_not be_valid
  end

  it 'accepts tags' do
    note = Note.new(note_date: '2021-10-11', user_id: 2, note_title: 'intermediate')
    note.tag_list.add("awesome, slick")
    expect(note.tag_list).to eq ["awesome, slick"]
  end
end


