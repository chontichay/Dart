//import 'dart:ffi';
import "classGetValue.dart";
import "package:intl/intl.dart";
//import "dart:io";
import "classFactorial.dart";
import "classDivisible.dart";

void main() {
  //stdout.write("Please input your username : ");
  //String strUsername = stdin.readLineSync().toString();
  //print("Your username is $strUsername");

  var objDou2Format = NumberFormat('#,###,##0.00');
  var objGetInt = GetValue();
  
  int intB = objGetInt.getInt(strValueName: "based number", intMin: 1, intMax: 25);
  var objFac = Factorial();
  print("$intB! = ${objDou2Format.format(objFac.fac(intB))}");

  int intStart =
      objGetInt.getInt(strValueName: "start number", intMin: 0, intMax: 99);
  int intStop =
      objGetInt.getInt(strValueName: "stop number", intMin: intStart + 1, intMax: 100);
  int intStep =
      objGetInt.getInt(strValueName: "step number", intMin: 1, intMax: 20);
  var objDivisible = Dividible();
  print(objDivisible.divis(intStart, intStop, intStep));
    print(
      "Between $intStart-$intStop there are ${objDivisible.divis(intStart, intStop, intStep)} that are divisible by $intStep");

  //stdout.write("Please input your income (THB/week) : ");
  //double douIncome = double.parse(stdin.readLineSync().toString());
  //print("Your income is ${objDou2Format.format(douIncome * 4)} (THB/month)");
  //print("------------------------------------------------------");

  //factorial(); //call factoria() function
  //stdout.write("Please input based number : ");
  //int intB= int.parse(stdin.readLineSync().toString());
  //var objFac = Factorial();
  //print("$intB! = ${objDou2Format.format(objFac.fac(intB))}");

  //print("------------------------------------------------------");
  //divisible(); //call divisible() function
  //print("------------------------------------------------------");

  //depreciation();
  print("--------------------end of program--------------------");
}
/*
//void ทำหน้าที่อย่างเดียวไม่คืนค่า
void factorial() {
  var objDouble2formatter = NumberFormat("#,###,##0.00");
  //while loop
  //1.initial counter 2.counter condition 3.counter adjust
  GetValue objGetNum = GetValue();
  int intNum =
      objGetNum.getInt(strValueName: "based number", intMin: 1, intMax: 20);
  double douResult = 1.0;
  int intCountA = intNum;
  while (intCountA > 0) {
    douResult = douResult * intCountA;
    intCountA--;
  }
  print("$intNum! = ${objDouble2formatter.format(douResult)}");

  print("------------------------------------------------------");
}
*/
/*
void divisible() {
  GetValue objGetNum = GetValue();
  int intStart =
      objGetNum.getInt(strValueName: "start number", intMin: 0, intMax: 99);
  int intStop = objGetNum.getInt(
      strValueName: "stop number", intMin: intStart + 1, intMax: 100);
  int intStep =
      objGetNum.getInt(strValueName: "step number", intMin: 1, intMax: 20);
  int intCountB = 0;
  List<String> lisNum = [];
  for (var i = intStart; i < 101; i++) {
    if (i == intStop + 1) {
      break; //stop then exit loop
    } else if (i % intStep != 0) {
      continue; //stop then go to next loop
    } else {
      lisNum.add(i.toString());
      intCountB++;
    }
  }
  String strTemp = "";
  for (var element in lisNum) {
    strTemp = strTemp + element + ",";
  }
  strTemp = strTemp.substring(0, strTemp.length - 1);
  print(
      "Between $intStart-$intStop there are $intCountB numbers ($strTemp) that are divisible by $intStep");
}
*/
/*
void depreciation() {
  var objDouble2format = NumberFormat('#,###,##0.00');
  
  print("Straight Line Depreciation");
  stdout.write("Please input asset value (THB) : ");
  double douAsset = double.parse(stdin.readLineSync().toString());
  stdout.write("Please input useful life (yrs) : ");
  int intLife = int.parse(stdin.readLineSync().toString());
  double douDepreciation = douAsset / intLife;

  print(
    "Annual depreciation expense is ${objDouble2format.format(douDepreciation)} THB/year");

//ใช้ for
  for (var i = 0; i < intLife; i++) {
    print(
      "at th end of year ${i + 1} asset value is ${objDouble2format.format(douAsset - douDepreciation)}");
      douAsset = douAsset - douDepreciation;
  }
/*
  //ใช้ while
  int intCount = 1;
  while (douAsset > 0) {
    print("at th end of year $intCount asset value is ${objDouble2format.format(douAsset - douDepreciation)}");
    douAsset = douAsset - douDepreciation;
    intCount++;
  }

//ใช้ do while
  int intCount2 = 1;
  do {
    print("at th end of year $intCount asset value is ${objDouble2format.format(douAsset - douDepreciation)}");
    douAsset = douAsset - douDepreciation;
    intCount++;
  }
  while (douAsset > 0);
  */
}
*/