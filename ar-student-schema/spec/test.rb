require_relative '../app/models/student'
require_relative '../app/models/teacher'

$test_counter = 0
def assert
	$test_counter += 1
	raise "TEST #{$test_counter} FAILED" unless yield
	puts "#{$test_counter}. TEST PASSED"
end

# WRITE A BETTER TEST
assert {Teacher.first.email != Teacher.last.email}
assert {Student.first.teacher_id.is_a? Integer}