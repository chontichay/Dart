import 'package:intl/intl.dart';
import 'dart:io';

void main() {
var objDouble2Format =
      NumberFormat('#,###,##0.00');

  print("The Match Bangkok Century Cup 2022");
  print("Ticket Booking System");

   stdout.write("Please input seat (Zone A 20,000 THB, B 15,000 THB) : ");
  String strZone = stdin.readLineSync().toString();
  strZone = strZone.toUpperCase();

  if(strZone == "A" || strZone == "B" ){
    //select avialable zone
    print("50% 0f when buying more than 100,000 THB");
    print("25% 0f when buying more than 50,000 THB");

    stdout.write("Please input ordering ticket : ");
  int intTicket = int.parse(stdin.readLineSync().toString());
  double douPriceEach = 0.0;

  switch (strZone) {
    case "A":
      douPriceEach = 20000.0;
      break;
    case "B":
      douPriceEach = 15000.0;
      break;
    default:
      douPriceEach = 0.0;
  }

  double douPay = intTicket * douPriceEach;
  //print(douPay);
  double douDiscount = 0.0;

  if(douPay>100000){
    douDiscount = 0.5;
  }
  else if(douPay>50000){
    douDiscount = 0.25;
  }
  else{
    douDiscount = 0.0;
  }

  double douFinalPay = douPay*(1-douDiscount);

  print("Your order is ${objDouble2Format.format(douFinalPay)} THB with ${objDouble2Format.format(douDiscount*100)} % discount");

  }else{
    //invallid zone
    print("invalid zone selected");
  }
}