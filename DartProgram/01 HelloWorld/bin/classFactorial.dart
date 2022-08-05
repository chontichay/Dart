//import "classGetValue.dart"; //import class to get string, interger, and double
//import "package:meta/meta.dart";
//import "package:intl/intl.dart";

class Factorial {
  double fac(int intBased) {
    double douResult = 1.0;
    int intCountA = intBased;
    while (intCountA > 0) {
    douResult = douResult * intCountA;
    intCountA--;
    }
    return douResult;
  }
  
}