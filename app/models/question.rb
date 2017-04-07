class Question < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  acts_as_votable
end
