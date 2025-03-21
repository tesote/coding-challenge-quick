# Person Management System - Coding Challenge

## Overview

This repository contains a partially implemented Person Management System. Your task is to complete the implementation according to the requirements below. The goal is to create a simple system that can create, store, and retrieve person records.

## Project Structure

The repository contains the following files:

- `person.rb` - Contains a partially implemented `Person` class
- `person_repo.rb` - Contains a partially implemented `PersonRepo` class
- `main.rb` - Contains code that creates and saves person objects
- `Gemfile` - Lists project dependencies (RSpec for testing)
- `spec/person_repo_spec.rb` - Tests for the `PersonRepo` class
- `spec/person_spec.rb` - Tests for the `Person` class

## Challenge Requirements

You need to implement:

1. The `Person` class with:
    - Constructor that accepts first name, last name, and age
    - A unique identifier (id) for each person
    - A `full_name` method that returns the person's full name
    - A `save` method that uses `PersonRepo` to save the person

2. The `PersonRepo` class with:
    - Functionality to save person data to `tmp/persons.json`
    - Ability to read/retrieve stored person data

## Getting Started

1. Install dependencies:
   ```
   bundle install
   ```

2. Run the failing tests to understand what needs to be implemented:
   ```
   bundle exec rspec
   ```

3. Implement the required functionality in the `Person` and `PersonRepo` classes

4. Make sure all tests pass and the main script runs without errors

## Hints

- You'll need to create a `tmp` directory if it doesn't exist
- The `PersonRepo` should handle JSON serialization and deserialization
- Think about how to structure the JSON data for easy retrieval
- Consider what instance variables the `Person` class needs
- The `full_name` method should combine first and last names appropriately
- Each person should have a unique ID (think about using a universally unique identifier)
- Make sure IDs persist when saving and loading person records

## Success Criteria

- All tests pass
- Running `ruby main.rb` successfully saves all person records
- Person data persists between program runs
- Code is clean, readable, and follows Ruby best practices

Good luck!