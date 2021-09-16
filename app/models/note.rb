class Note < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :note_date, presence: true
  validates :note_title, presence: true
  acts_as_taggable
end
