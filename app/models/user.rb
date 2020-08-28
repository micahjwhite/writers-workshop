class User < ApplicationRecord
  has_many :works
  has_many :comments
  has_many :commnted_works, through: :comments, source: :works
  has_many :genres, through: :works

  validates :username, uniqueness: true
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  has_secure_password 

  def full_name
    self.first_name + " " + self.last_name
  end
end
