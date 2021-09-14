class Note < ApplicationRecord
  validates :user_id, presence: true
  validates :note_title, presence: true
  validates :note_date, presence: true
  validates :instructor, presence: true
  belongs_to :user
end
