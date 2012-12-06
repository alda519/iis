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

# SPZ
RegistrationPlate.create(:reg => 'G5J 845', :valid_from => "12.3.2000", :valid_to => "4.2.2007", :driver_id => 2, :vehicle_id => 1)
RegistrationPlate.create(:reg => 'G7R 445', :valid_from => "12.3.2003", :valid_to => "8.9.2008", :driver_id => 3, :vehicle_id => 2)
RegistrationPlate.create(:reg => 'H4J 885', :valid_from => "12.3.1998", :valid_to => "2.2.2004", :driver_id => 4, :vehicle_id => 3)
RegistrationPlate.create(:reg => 'F5J $45', :valid_from => "12.3.2009", :valid_to => "9.6.2010", :driver_id => 1, :vehicle_id => 4)
RegistrationPlate.create(:reg => 'H7H 390', :valid_from => "5.2.2007", :driver_id => 5, :vehicle_id => 1)
RegistrationPlate.create(:reg => 'E4R 038', :valid_from => "9.9.2008", :driver_id => 5, :vehicle_id => 2)
RegistrationPlate.create(:reg => 'A1B 453', :valid_from => "3.2.2004", :driver_id => 1, :vehicle_id => 3)
RegistrationPlate.create(:reg => 'R7H 936', :valid_from => "10.6.2010", :driver_id => 4, :vehicle_id => 4)
RegistrationPlate.create(:reg => 'G3H 443', :valid_from => "5.6.2010", :driver_id => 2, :vehicle_id => 5)
RegistrationPlate.create(:reg => 'A3A 333', :valid_from => "9.5.2000", :driver_id => 3, :vehicle_id => 6)


# typy prestupku
OffenceType.create(:points => 1, :fine_from => 3000 , :fine_to => 7000, :descr => "jizda se zavazanyma ocima")
OffenceType.create(:points => 2, :fine_from => 1000 , :fine_to => 2000, :descr => "telefonovani z budky za jizdy")
OffenceType.create(:points => 2, :fine_from => 1500 , :fine_to => 3500, :descr => "jizda v protismeru")
OffenceType.create(:points => 5, :fine_from => 2500 , :fine_to => 4000, :descr => "jizda na cervenou")
OffenceType.create(:points => 7, :fine_from => 1000 , :fine_to => 2500, :descr => "parkovani na prechodu")

# Prestupky
Offence.create(:when => "6.2.2009", :where => "Los Angeles", :fine => "4000", :offence_type_id => 1, :driver_id => 1)
Offence.create(:when => "7.12.2008", :where => "Los Angeles", :fine => "1500", :offence_type_id => 2, :driver_id => 1)
Offence.create(:when => "1.9.2006", :where => "New York", :fine => "2000", :offence_type_id => 3, :driver_id => 2)
Offence.create(:when => "17.7.2004", :where => "Liptakov", :fine => "3000", :offence_type_id => 4, :driver_id => 3)
Offence.create(:when => "16.3.2011", :where => "Phoenix", :fine => "1000", :offence_type_id => 5, :driver_id => 4)
Offence.create(:when => "4.6.2012", :where => "New Orleans", :fine => "2000", :offence_type_id => 3, :driver_id => 5)

# ridicaky
LicenceGroup.create(:driver_id => "1", :valid_from => "20.03.1995", :valid_to => "20.10.2005", :group => "B")
LicenceGroup.create(:driver_id => "1", :valid_from => "14.03.1994", :valid_to => "20.11.2004", :group => "D")
LicenceGroup.create(:driver_id => "2", :valid_from => "2.03.1999", :valid_to => "20.10.2009", :group => "B")
LicenceGroup.create(:driver_id => "2", :valid_from => "5.03.1980", :valid_to => "20.09.2000", :group => "C")
LicenceGroup.create(:driver_id => "3", :valid_from => "17.06.1999", :valid_to => "20.12.2009", :group => "B")
LicenceGroup.create(:driver_id => "4", :valid_from => "14.03.2000", :valid_to => "20.08.2010", :group => "B")
LicenceGroup.create(:driver_id => "5", :valid_from => "10.4.2003", :valid_to => "20.4.2013", :group => "B")
LicenceGroup.create(:driver_id => "5", :valid_from => "1.06.2010", :valid_to => "20.7.2020", :group => "C")

# bonus body
BonusPoint.create(points: 3, when: "4.5.2005", driver_id: 1)
BonusPoint.create(points: 4, when: "6.7.2008", driver_id: 2)

# kradeze
Theft.create(:when => "1.1.2010", :vehicle_id => 2, :returned => true)
Theft.create(:when => "11.11.2011", :vehicle_id => 5)

=begin
# pojistky

# omezeni RO
LicenceRestrict.create(:from => , :to =>, :descr => "", :driver_id => )
LicenceRestrict.create(:from => , :to =>, :descr => "", :driver_id => )
LicenceRestrict.create(:from => , :to =>, :descr => "", :driver_id => )
=end
