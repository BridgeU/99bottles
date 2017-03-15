# 99 Bottles

This repo is an adapted version of the exercise from Sandi Metz' book "99
Bottles of OOP"

The aim is to TDD a class that can output the lyrics to the song "99 bottles",
but the process of TDDing the solution can then be explored to understand some
core OOP concepts.

In this example, the tests that will drive the class are already written for
you.

## Instructions

Clone the repo into a local folder, and run

```
$ bundle install
```

to ensure the dependencies are available.

Then, start running the tests in a terminal window with the following command.

```
$ guard -c
```

Guard will watch the `lib/bottles.rb` file for changes, and rerun the tests
every time the file is updated.

Although a test suite is already written for you, the repo patches Minitest so
that only the next test you have to worry about will be run. Use the test output
to inform what code you write next.
