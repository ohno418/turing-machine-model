require_relative '../tape'

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

print 'Tape#symbol: '
tape = Tape.new('01+011')
if tape.symbol(0) == '0'
  print '.'
else
  print 'x'
end
if tape.symbol(2) == '+'
  print '.'
else
  print 'x'
end
print "\n"

print 'Tape#inspect: '
str = '01+011'
if Tape.new(str).inspect == str
  print '.'
else
  print 'x'
end
str = '01011'
if Tape.new(str).inspect == str
  print '.'
else
  print 'x'
end
print "\n"
