# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#=begin

# Role
r1 = Role.create :name => "Admin"
r2 = Role.create :name => "Judge"
r3 = Role.create :name => "Clerk"
r4 = Role.create :name => "Policeman"

# Uzivatele
a = User.create(:login => 'admin', :name => 'Dapper Drake', :password => 'admin')
b = User.create(:login => 'policeman', :name => 'Breezy Badger', :password => 'police')
c = User.create(:login => 'judge', :name => 'Hoary Hedgehog', :password => 'judge')
d = User.create(:login => 'clerk', :name => 'Warty Warthog', :password => 'clerk')

# Role uzivatelu
a.roles = [r1]
b.roles = [r4]
c.roles = [r2]
d.roles = [r3]

# Ridici - name surname national_id
Driver.create(:name => 'Nikola', :surname => 'Tesla', :national_id => '356345534')
Driver.create(:name => 'Thomas', :surname => 'Edison', :national_id => '76651234')
Driver.create(:name => 'Georg', :surname => 'Ohm', :national_id => '34134511')
Driver.create(:name => 'Leon', :surname => 'Thevenin', :national_id => '34313451')
Driver.create(:name => 'Andre', :surname => 'Ampere', :national_id => '75333124')

# Auta - vin year brand model
Vehicle.create(:vin => 'dsf2f2r0', :year => 2000, :brand => 'Audi', :model => 'A')
Vehicle.create(:vin => 'fdosp221', :year => 2003, :brand => 'Mercedes', :model => 'B')
Vehicle.create(:vin => 'd4y7rewg', :year => 1998, :brand => 'Opel', :model => 'C')
Vehicle.create(:vin => 'rtg335t4', :year => 2009, :brand => 'Citroen', :model => 'D')
Vehicle.create(:vin => 'rt4446rr', :year => 2006, :brand => 'Ford', :model => 'E')
Vehicle.create(:vin => '094idf94', :year => 2005, :brand => 'Audi', :model => 'F')

#=end
=begin

# SPZ

# Prestupky
OffenceType.create(:points => 1, :fine_from => , :fine_to => , :descr => "")
OffenceType.create(:points => 2, :fine_from => , :fine_to => , :descr => "")
OffenceType.create(:points => 2, :fine_from => , :fine_to => , :descr => "")
OffenceType.create(:points => 5, :fine_from => , :fine_to => , :descr => "")
OffenceType.create(:points => 7, :fine_from => , :fine_to => , :descr => "")
# Atd. TBD

=end
