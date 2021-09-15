class Note < ApplicationRecord
  validates :user_id, presence: true
  validates :note_date, presence: true
  belongs_to :user, optional: true
  acts_as_taggable_on :tags, :instructor, :note_title
end
