class Answer < ActiveRecord::Base
  has_one :card
  has_many :guesses

  validates_presence_of :answer
end
