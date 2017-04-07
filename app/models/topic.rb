class Topic < ApplicationRecord
  belongs_to :week
  has_many :questions
  has_many :events
end
