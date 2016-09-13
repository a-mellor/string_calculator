# String Calculator Kata

## Instrunctions
With default ```,``` delimiter<br>
In ```irb```<br>
```irb(main):001:0> require './lib/string_calculator.rb'``` <br>
```irb(main):002:0> calculator = StringCalculator.new``` <br>
```irb(main):003:0> calculator.add("1,2,3")```

With user defined delimiter <br>
```irb(main):004:0> calculator.add(//[delimiter]\n"1,2,3")``` <br>
delimiter = ```;``` <br>
```irb(main):005:0> calculator.add(//[;]\n"1,2,3")``` <br>

## Tests
Run ```rspec```
#### Two tests pending
Does not allow negative numbers <br>
Multiple delimiters can be used
