1-define costructor of LinkedList class
2-split input of user by
  -each sign replaced by sign concate with * to save sign
  -split each term with *
  - validate input : term of degree 1 & term of degree 2
  -split power and coeff and save them into array
3-arrange power descending and map coeff to it
4-create polynomial as linkedlist each node is the polynomial`s term
    -node contain power&coeff as string
5-evaluate method split node and calculate result
6-equal method take arranged powers as argument and check euality
7-print method concate each term tom a strinh and display it in order view
8-add method take arranged coeff and power of the second polynomial function with same order an same number of terms and add coeff to each other
9-subtract method take arranged coeff and power of the second polynomial function with same order an same number of terms and subtract coeff from each other
10-Menu to choose desired option (add,subtract,evaluate,equality,print)
=====================================================
To run this code just write into terminal
ruby polynoimal.rb      

