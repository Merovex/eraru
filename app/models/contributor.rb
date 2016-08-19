class Contributor < ActiveRecord::Base
	extend FriendlyId
	has_many :fixes
	friendly_id :name, use: :slugged
end
