import 'dart:math';

class Stat {
  int intCount = 0;
  double douMin = 0;
  double douMax = 0;
  double douAverage = 0;
  double douStdev = 0;
  List<double> lstVal = [];

  void statCal({required List<double> lstVal}) {
    this.lstVal = lstVal;
    this.intCount = lstVal.length;
    calMinMaxAverage();
    calStdev();
  }

  void calMinMaxAverage(){
    double douSum = 0;
    this.douMin = lstVal[0];
    this.douMax = lstVal[0];
    for (var element in lstVal) {
      if (element > this.douMax) {
        this.douMax = element;
      }
      if (element < this.douMin) {
        this.douMin = element;
      }
      douSum = douSum + element;
    }
    this.douAverage = douSum / this.intCount;
  }

  void calStdev(){
    double douTemp = 0;

    for (var element in lstVal) {
      douTemp = douTemp + pow((element - this.douAverage),2); 
    }
    this.douStdev = sqrt(douTemp / this.intCount);
  }
}