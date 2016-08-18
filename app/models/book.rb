class Book < ActiveRecord::Base
	extend FriendlyId
	has_many :versions
	has_many :fixes
	friendly_id :title, use: :slugged
	# belongs_to :version
end
