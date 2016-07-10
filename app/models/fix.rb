class Fix < ActiveRecord::Base
  belongs_to :version
  belongs_to :book
  belongs_to :contributor
end
