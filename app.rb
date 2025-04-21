# frozen_string_literal: true


require_relative 'lib/person'
require_relative 'lib/person_repo'

alice = Person.new('Alice', 'Ferguson', 30)

bob = Person.new('Bob', 'Smith', 25)
charlie = Person.new('Charlie', 'Johnson', 42)
diana = Person.new('Diana', 'Williams', 37)

people = [alice, bob, charlie, diana]

people.each do |person|
  puts "Saving #{person.full_name}"
  person.save
end
