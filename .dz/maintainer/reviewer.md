# Reviewer instructions — tesote/coding-challenge-quick

> Read by the developerz.ai reviewer at EVERY review of this repository, at the reviewed
> commit, as this repo's own layer of the reviewer's prompt — established by dz-runner setup mode.
> It refines the platform rules (a finding is cited or withheld; the bot always discloses)
> and never overrides them. Edit freely; keep it under 12,000 characters — past that it is cut.

## Stack

Ruby + Bundler + RSpec. The gate is `bin/check` (`bundle exec rspec`): a change that does not pass it is not proven, whatever its description says.

## Review conventions
- Hold every change to the README's requirements: `Person` constructor (first name, last name, age), unique uuid `id`, `full_name`, `save` via `PersonRepo`.
- Verify data is written to `tmp/persons.json` in the documented shape and survives a reload — read the file, don't trust the spec alone.
- Require `# frozen_string_literal: true` at the top of every Ruby file.
- Expect `expect` syntax in specs (spec_helper disables monkey-patching and old `should`).
- Implementation belongs in `lib/person.rb` and `lib/person_repo.rb`; `app.rb` stays the demo entry point.

## Gates that matter
- `bundle exec rspec` exits 0 — all specs green (they fail until the challenge is implemented; that is the baseline, not a broken gate).
- `ruby app.rb` runs to completion and writes `tmp/persons.json`.
- Person ids are UUIDs and identical before save and after reload.
- No new dependencies: Gemfile is rspec-only and that is intentional.

## Never flag
- The intentionally empty/stub bodies the challenge ships (`PersonRepo#save`, the `# ...` markers, the skeleton specs).
- Missing linter, typecheck, CI config, or Rakefile — none exists in this repo by design.
- The `RACK_ENV` line in spec_helper (unused leftover, harmless) and the `vendor/` cache directory.
- One-file-per-class layout and absence of namespaces beyond `Person::PersonRepo`.
