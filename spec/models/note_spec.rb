# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Note, type: :model do
  describe '#validations' do
    it { should validate_presence_of(:note_title) }
    it { should validate_presence_of(:note_date) }
    it { should validate_presence_of(:user_id) }
    it 'is valid with valid attributes' do
      note = create(:note)
      expect(note).to be_valid
    end
  end

  describe '#tags' do
    before do
      @note = create(:note)
      @note.tag_list.add('test_tag')
    end

    it 'can take tags' do
      expect(@note.tag_list).to include('test_tag')
    end

    it 'can have a tag removed' do
      @note.tag_list.remove('test_tag')
      expect(@note.tag_list).to_not include('test_tag')
    end
  end
end
