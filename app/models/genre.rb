class Genre < ApplicationRecord
  has_many :works
  has_many :users, through: :works

  def self.by_name
    order(:name)
  end

end
