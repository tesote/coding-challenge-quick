# frozen_string_literal: true

class Person
  class PersonRepo
    def initialize(person)
      @person = person
    end

    def save
      # save it to ./tmp/persons.json
      # as { "persons": [
      #   { "id": "cb8d5811-2bc1-4861-9193-18e8e1c64bc9", "full_name": "Alice Ferguson", age: 30 },
      #   { "id": "8b1d119e-f986-4379-aed9-2ed34a3a97c1", "full_name": "Bob Smith", age: 25 },
      #   ...
      # ] }
    end
  end
end
