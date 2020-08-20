class User < ApplicationRecord
  has_many :works
  has_many :comments
  has_many :commnted_works, through: :comments
  has_many :genres, through: :works
end
