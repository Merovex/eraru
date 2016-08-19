# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Book.create({
		:title => 'Bellicose'
	})

a.versions.create({
	:name => '2014-07-23',
	:released_on => '2014-07-23'
	})
a.save

b = Book.create({
		:title => 'Scintilla'
	})

b.versions.create({
	:name => '2011-09-11',
	:released_on => '2011-09-11'
	})
b.save

v = b.versions.first
w = a.versions.first

30.times do |i|
	k = %w(TYPO GRAMMAR SUGGEST INCREDIBLE CONFUSING BORING).sample
	x = [v,w].sample
	
	z = x.fixes.new({
		name: Faker::Name.name,
		book_id: x.book_id,
		email: Faker::Internet.email,
		location: (1..1700).to_a.sample,
		kind: k,
		text: Faker::Lorem.paragraph
	})
	puts z.inspect
	z.save
	puts "created #{z}"
end

        