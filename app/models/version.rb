class Version < ActiveRecord::Base
  belongs_to :book
  belongs_to :contributor
  has_many :fixes
  # has_many :problems
end
