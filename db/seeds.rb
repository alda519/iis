# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
# Role
r1 = Role.create :name => "Admin"
r2 = Role.create :name =>"Judge"
r3 = Role.create :name =>"Clerk"
r4 = Role.create :name =>"Policeman"

# Uzivatele
a = User.create(:login => 'admin', :name => 'Dapper Drake')
b = User.create(:login => 'policeman', :name => 'Breezy Badger')
c = User.create(:login => 'judge', :name => 'Hoary Hedgehog')
d = User.create(:login => 'clerk', :name => 'Warty Warthog')

# Role uzivatelu
a.roles = [r1]
b.roles = [r4]
c.roles = [r2]
d.roles = [r3]

# Ridici
# Auta
# Prestupky
# Atd. TBD

=end
