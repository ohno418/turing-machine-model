require_relative '../tape'
require_relative '../turing_machine'

# FIXME: Not binary number.
print 'TuringMachine#run: '
if TuringMachine.new(Tape.new('011+100')).run == 3
  print '.'
else
  print 'x'
end
if TuringMachine.new(Tape.new('0110+01+011')).run == 10
  print '.'
else
  print 'x'
end
if TuringMachine.new(Tape.new('01011')).run == 11
  print '.'
else
  print 'x'
end
print "\n"
