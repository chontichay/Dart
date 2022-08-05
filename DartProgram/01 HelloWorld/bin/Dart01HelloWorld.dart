//must start operation with method main()
//run program by select menu Run>Run Without Debuging
//view program result in "DEBUG CONSOLE"

void main() {
  //display message to console
  print("Dart01-01 it's basic print command");
  print("Hello My Friend");
  print("-------------------------------------------");

  //print multiple strings by using "+"
  print("Dart01-02 join string in print command");
  print("I love Dart." + " I Try Dart.");
  print("-------------------------------------------");

  //usr "\n to start a new line"
  print("Dart01-03 new line in print command");
  print("My name is chutchonook\nfrom DB BEC NU");
  print("123\n456");
  print("-------------------------------------------");

  //use triple single qoute or triple double qoute to auto new line
  print("Dart01-04 multiple lines in print command");
  print("""Address
  50/14 M.3
  Makhamsoong Muang Phitsanulok
  Phitsanulok 65000""");
  print("""
  123
  456
  789""");
  print("-------------------------------------------");

  //print in raw mode by using r before string
  //in raw mode "\n" will be ignored
  print("Dart01-04 raw mode in print command");
  print(r"My name is chutchonook\nfrom DB BEC NU");
  print("-------------------------------------------");
}
