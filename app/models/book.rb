class Book < ActiveRecord::Base
	has_many :versions
	# belongs_to :version
end
