import 'package:intl/intl.dart';
import 'classCountNumber.dart';
import "classGetValue.dart";

void main() {
  var objNum = GetValue();
  var objCount = CountN();
  var objFInt = NumberFormat("#,##0");
  int intPoint = 0;
  int intNumber = 0;

  print("Counting Number");
  int intStart =
      objNum.getInt(strValueName: "start number", intMin: 1, intMax: 100);
  int intStop =
      objNum.getInt(strValueName: "stop number", intMin: intStart + 1, intMax: 10000);
  int intcounting =
      objNum.getInt(strValueName: "counting number", intMin: 0, intMax: 9);
  
      for (var i = intStart; i<= intStop; i++){
        intPoint = intPoint + objCount.methodCountN(i, intcounting);
        if (objCount.methodCountN(i, intcounting)!= 0){
          intNumber++;
        }
      }

  print("There are '${objFInt.format(intPoint)}' points of '${objFInt.format(intcounting)}' in '${objFInt.format(intNumber)}' number from ${objFInt.format(intStart)} to ${objFInt.format(intStop)} ");

}