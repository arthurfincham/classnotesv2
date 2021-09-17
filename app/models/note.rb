class Note < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :note_date, presence: true
  validates :note_title, presence: true, length: { minimum: 3, maximum: 12 }
  acts_as_taggable
end
