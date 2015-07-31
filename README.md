Objective

Write a program that prints out a multiplication table of the first 10 prime numbers.The program must run from the command line and print one table to STDOUT. The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column. 

Notes 
- Consider complexity. How fast does your code run? How does it scale?

It runs in On^2 due to the nested loop to calculate the solutions.

Here are the benchmark tests:

size 10:   0.000000   0.000000   0.000000 (  0.001996)

size 1000000:   0.010000   0.000000   0.010000 (  0.002686)

- Write tests. Try to demonstrate TDD/BDD.

Please see my commit history to see my process of TDD.



-To run the tests, simply run:

`rspec prime_grid_spec.rb`

-To run file, open prime_grid.rb and uncomment the section at the bottom. You can then pass the size of the grid in as an argument from the command line.

`ruby prime_grid.rb 10`

