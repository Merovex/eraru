# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

b = Book.create({
		:title => 'Bellicose'
	})

b.versions.create({
	:name => '2014-07-23',
	:released_on => '2014-07-23'
	})

b = Book.create({
		:title => 'Scintilla'
	})

b.versions.create({
	:name => '2011-09-11',
	:released_on => '2011-09-11'
	})