# String Calculator Kata
A command-line calculator that accepts numbers as a string and outputs the sum.

## Instrunctions

Numbers need to be entered as a string and seprated with a delimiter. The defualt is ```,```. For example ("1,3,5").

__Example 1__<br>
Open irb and require the ```string_calculator.rb``` file.
<br>
```$ irb```<br>
```irb(main):001:0> require './lib/string_calculator'```

Initialize a new StringCalculator object.<br>
```irb(main):002:0> calculator = StringCalculator.new```

Call ```add``` on ```calculator``` with your chosen numbers as a string.
<br>
```irb(main):003:0> calculator.add("1,2,3")```

This produce the sum of your chosen numbers. <br>```irb(main):004:0> 6```

__Example 2__<br>
It's possible to use a different delimiter to ```,```. It requires an addition to the argument passed to the calculator. Instead of passing ```("1,2,3")``` the format needs to be ```("//[delimiter]\n1,2,3")```, where ```delimiter``` is replaced with an input of your choice, such as ```;```.

```irb(main):005:0> calculator.add("//[;]1;2;3")```

```irb(main):006:0> 6```

## Tests
This has been built using Rspec. To run the tests type```rspec```
<br>
<br>
There are two tests currently pending that will account for negative numbers and multiple delimiters. The first feature will not allow any negative numbers included in the string. The second test will allow the user to use multiple delimiters.
