class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
         skip_before_action :verify_authenticity_token
  validates_presence_of :username
  validates_uniqueness_of :username
  has_many :notes
end
