class User < ActiveRecord::Base
  has_secure_password

  has_many :rounds
  has_many :decks, foreign_key: :author_id
  has_many :guesses, {through: :rounds}

  validates_presence_of :username
  validates_uniqueness_of :username
end
