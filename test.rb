require_relative './tape'

print 'Tape#initialize: '
begin
  Tape.new('01+011')
  print '.'
rescue
  print 'x'
end
begin
  Tape.new('01+012')
  print 'x'
rescue ArgumentError
  print '.'
end
begin
  Tape.new('01-011')
  print 'x'
rescue ArgumentError
  print '.'
end
print "\n"


print 'Tape#inspect: '
tape = Tape.new('01+011')
if tape.inspect == '1+3'
  print '.'
else
  print 'x'
end
tape = Tape.new('0110+01+011')
if tape.inspect == '6+1+3'
  print '.'
else
  print 'x'
end
tape = Tape.new('01011')
if tape.inspect == '11'
  print '.'
else
  print 'x'
end
print "\n"
