var upper = Int(readLine()!)!
var lower = Int(readLine()!)!

var one = lower%10
var ten = (lower%100) - one
var hundred = lower - ten - one

print(upper*one)
print(upper*ten/10)
print(upper*hundred/100)
print(upper*lower)