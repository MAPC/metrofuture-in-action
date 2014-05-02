class State < ActiveRecord::Base
  attr_accessible :abbr, :fips, :name

  has_many :municipalities

  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :abbr, presence: true, length: { is: 2 }
  validates :fips, presence: true, length: { is: 2 }
end
