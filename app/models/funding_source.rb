class FundingSource < ActiveRecord::Base
  attr_accessible :name
  has_many :projects

  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
end