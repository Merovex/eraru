class Fix < ActiveRecord::Base
  before_save :assign_contributor
  belongs_to :version
  belongs_to :book
  belongs_to :contributor

  validates_presence_of :version, :kind, :text, :location, :book_id, :version_id

  def assign_contributor
  	return if self.email.nil?
  	c = Contributor.find_by_email(self.email)
	c = Contributor.create({email: self.email, name: self.name }) if c.nil?
	c.name = (!self.name.nil? and c.name == "Anonymous") ? self.name : "Anonymous"
	return unless self.contributor.nil?
	self.contributor = c
  end
end
