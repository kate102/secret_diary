OK, We have a secret diary to TDD and encapsulate

SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.

Tests
1. Try to create a secret_diary object in irb
 - this will fail
2. Move this test to  the spec file
 - this will fail rspec
3. Create a basic object in .rb file
 - this should succeed
4. for each of the functions in turn 
	a - try to invoke in irb
	b - try to invoke using rspec
	c - enhance the code


