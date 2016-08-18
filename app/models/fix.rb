class Fix < ActiveRecord::Base
  belongs_to :version
  belongs_to :book

  validates_presence_of :version, :kind, :text, :location, :book_id, :version_id

end
