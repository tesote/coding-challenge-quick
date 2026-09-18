# tesote/coding-challenge-quick

> Project brain — established by dz-runner setup mode from this repo, then owned by
> its maintainers. Correct it in place; setup never overwrites a brain that exists.

Partially-implemented Ruby person-management coding challenge (Person/PersonRepo persisted to tmp/persons.json), tested with RSpec; no CI or linting present.

## Stack

Ruby + Bundler + RSpec

Toolchain: `mise.toml` — `bin/setup` runs `mise install`; the box carries only bun.

## Commands

| Task | Command |
|------|---------|
| setup | `bin/setup` — bundle install |
| dev | `bin/dev` — ruby app.rb |
| check | `bin/check` — bundle exec rspec |

## Structure

- `app.rb` — entry point; builds four `Person` objects and calls `save` on each. Requires `lib/person` and `lib/person_repo`.
- `lib/` — `person.rb` (`Person`) and `person_repo.rb` (`Person::PersonRepo`, nested); these are the implementation targets and the only code the app loads.
- `spec/` — RSpec suite (`spec_helper.rb` requires `../lib/person_repo` then `../lib/person`); `person_spec.rb`, `person_repo_spec.rb`.
- `tmp/` — storage location for `tmp/persons.json` written by `PersonRepo` (must be created if missing).
- `vendor/` — Bundler gem cache; never edit.
- Dependency rule: `app.rb` → `lib/*`; `spec/spec_helper.rb` → `lib/*`; `Person#save` delegates to `PersonRepo`; `PersonRepo` owns all file I/O to `tmp/persons.json`.

## Conventions

- Every file starts with `# frozen_string_literal: true` — keep it.
- Test with RSpec only; expect syntax enforced by spec_helper (`config.expect_with :rspec`, monkey-patching disabled).
- Run the suite with `bundle exec rspec`; run the app with `ruby app.rb`.
- The suite is the README's success criteria: it and `ruby app.rb` must pass/run without errors after implementation.
- Persist person records to `tmp/persons.json` in the documented shape (`{ "persons": [ { "id": uuid, "full_name": ..., "age": ... } ] }`); create `tmp/` if missing.
- Use UUIDs for person ids; ids must persist across save/load.
- No linter or typechecker is configured — do not invent one; match the existing simple class style.
- Keep classes in `lib/`, plain requires via `require_relative`, no framework.
