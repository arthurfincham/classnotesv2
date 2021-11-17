# frozen_string_literal: true

FactoryBot.define do
  factory :note do
    note_title { 'Test Title' }
    note_date { '2021-01-12' }
    partner { 'Test Partner' }
    pos_description { 'This is a test technique written in factory bot.' }
    neg_description { 'This is a test sparring written in factory bot.' }
    user_id { 1 }
    user { create(:user) }
  end
end
