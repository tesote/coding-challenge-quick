# frozen_string_literal: true

class Person
  def initialize(...)
    @person_repo = PersonRepo.new(self)
  end

  # ...
end
