//variables and data type in dart
//int > integer (number without decimals) --ตัวเลขไม่มีทศนิยม
//double > real number (number with decimals) --จำนวนจริงที่มีตัวทศนิยมได้
//num > integer or real number --ตัวเลขกลาง ๆ เป็น int ได้ เป็น double ได้
//bool > boolean (true or false) --T , F
//String > string
//dynamic > changable data type (default variable data type) --ตัวแปรที่เปลี่ยนได้
//Lists > duplicatable data array --สามอันนี้เป็นข้อมูลแบบชุด-- lists ค่าซ้ำกันได้
//Sets > unique data array -- ห้ามมีค่าซ้ำกัน ใช้กรณีที่เป็น p key
//Maps > key and value array -- ค่าที่เป็น index, value ไม่จำเป็นต้องเป็นค่า

void main() {
  //default value of unassigned varible is "null"
  //use "$" to use inline variable with string
  int intX = 5;
  double douY = 10.25;
  bool booDone = false;
  String strName = "Somchai";
  String strLastName = "Rakphitlok";

  print("Dart02-01 Variable : string, integer, double, and boolean");
  print("String Variable is $strName $strLastName");
  print("My name is $strName $strLastName");
  print("Integer Variabel is $intX\nDouble Variable is $douY");
  print("Boolean Variable is $booDone");
  print("---------------------------------------------------------");

  //use var,final,const to define nontype variable (duck type) -- var ใช้ง่ายแต่ไม่ดี ไม่สามารถทราบได้ว่าเป็นตัวแปรชนิดไหน
  //can not change value of final and const data type variable
  //final is suitable for class and function -- เปลี่ยนค่าไม่ได้ กำหนดแล้วกำหนดเลย
  //const is suitable for variable
  var varFirstName = "Samart";
  final finAge = 30;
  const conStatus = "Single";
  print("Dart02-02 var, final, and const");
  print("$varFirstName is $conStatus with $finAge years old.");

  varFirstName = "Somsak";
  print("$varFirstName is $conStatus with $finAge years old.");
  print("---------------------------------------------------------");

  //use {} to calculate with variable
  print("Dart02-03 display calculated result");
  print("Next year $varFirstName will be ${finAge + 5} years old.");
  print("Next 10 years $varFirstName will be ${finAge + 10} years old.");
  print("---------------------------------------------------------");

  //use DateTime.now() to get present date and time -- เวลาปัจจุบัน --
  //use method "toString().substring(start position,stop position)" to capture string --แปลงให้เป็น toString ช่วงที่ต้องการ--
  print("Dart02-04 date and time");
  print("Now is ${DateTime.now()}");

  final finNow = new DateTime.now();
  final finDate = finNow.toString().substring(0, 10);
  final finTime = finNow.toString().substring(11, 19);
  String strYear = finNow.toString().substring(0, 4);
  print("Today is $finDate");
  print("This time is $finTime");
  print("This year is $strYear");
  print("---------------------------------------------------------");

  //use toString to convert number to string
  print("Dart02-05 convert to string");
  String strX = intX.toString();
  String strY = douY.toString();
  print("String intX and douY is $strX and $strY");
  print("---------------------------------------------------------");
}
