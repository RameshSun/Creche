# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Child.delete_all

Child.create(:name => 'Nishevitha',
  :parentname => 'Ramesh',
  :age => 4,
  :parentcompany => 'MSI',
  :emailaddr => 'ram.sun@motorolasolutions.com',    
  :phone => '9886497498',
  :status => 'not inside',
  :remarks => 'none')
# . . .

Child.create(:name => 'Tanvi Payal',
  :parentname => 'Payal',
  :age => 4,
  :parentcompany => 'MMI',
  :emailaddr => 'xxy@motorola.com',    
  :phone => '9886497xxy',
  :status => 'not inside',
  :remarks => 'none')
# . . .

Child.create(:name => 'Sughasini',
  :parentname => 'Prasanna',
  :age => 6,
  :parentcompany => 'NSN',
  :emailaddr => 'prasanna@nsn.com',    
  :phone => '9886497xxx',
  :status => 'not inside',
  :remarks => 'none')
# . . .

Child.create(:name => 'Vrishank',
  :parentname => 'Ramesh',
  :age => 1,
  :parentcompany => 'MSI',
  :emailaddr => 'ram.sun@motorolasolutions.com',    
  :phone => '9886497498',
  :status => 'waitlisted',
  :remarks => 'none')