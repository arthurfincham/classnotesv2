class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :timeoutable
  validates_presence_of :username
  validates_uniqueness_of :username
  has_many :notes
end
