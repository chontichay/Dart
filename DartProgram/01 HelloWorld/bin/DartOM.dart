import 'package:intl/intl.dart';
import 'classMA.dart';
import 'clsGV650801.dart';
import 'classEOQ.dart';
import 'classStat.dart';
import 'classSLD.dart';

void main() {
  var objCalString = GetValue();

  print("-- Operation Management Calculation -------------------------");
  print("Please Select");
  print("\t> Economic Order Quantity (E)");
  print("\t> Moving Average Forecting (M)");
  print("\t> Descriptive Statistics (D)");
  print("\t> Straight Line Depreciation (S)");
  
  String strCal = objCalString.getString(strValueName: "Calculation Category", intMin: 1, intMax: 1);
  strCal = strCal.toUpperCase();

  switch (strCal) {
    case "E":
      print("-- EOQ Calculation ------------------------------------------");
      calEoQ();
      break;
    case "M":
      print("-- Moving Average Forecasting -------------------------------");
      calMA();
      break;
    case "D":
      print("-- Descriptive Statistics -----------------------------------");
      calDS();
      break;
    case "S":
      print("-- Straight Line Depreciation -------------------------------");
      calSLD();
      break;
    default:
      print("Invalid Selected Choice. Try to Select Again");
  }

  print("---------------------end of program--------------------------");
}

void calEoQ() {
  var objVal = GetValue();
  var objEOQ = EOQ();
  var objFormat0 = NumberFormat("#,##0");
  var objFormat2 = NumberFormat("#,###,##0.00");

  double douDemand = objVal.getDouble(
    strValueName: "Demand", 
    douMin: 1, 
    douMax: 1000000,
    strUnit: "units/year");
  double douOrderingCost = objVal.getDouble(
    strValueName: "Ordering Cost", 
    douMin: 1, 
    douMax: 1000000,
    strUnit: "THB/time");
  double douHoldingCost = objVal.getDouble(
    strValueName: "Holding Cost", 
    douMin: 1, 
    douMax: 1000000,
    strUnit: "THB/unit/year");
    
    objEOQ.calEOQ(
    douDemand: douDemand,
    douOrderCost: douOrderingCost,
    douHoldCost: douHoldingCost);

  print("-------------------------------------------------------------");
  print("EOQ \t\t(units/time) \t= ${objFormat0.format(objEOQ.intEOQ)}");
  print("Order \t\t(time) \t\t= ${objFormat0.format(objEOQ.intOrder)}");
  print(
    "Ordering Cost \t(THB/year) \t= ${objFormat2.format(objEOQ.douTotalOrderingCost)}");
  print(
    "Average Stock \t(units) \t= ${objFormat2.format(objEOQ.douAverageStock)}");
  print(
    "Holding Cost \t(THB/year) \t= ${objFormat2.format(objEOQ.douTotalHoldingCost)}");
  print("Total Cost \t(THB/year) \t= ${objFormat2.format(objEOQ.douTotalCost)}");
}

void calMA(){
  var objVal = GetValue();
  var objMA = MA();
  var objFormat2 = NumberFormat("#,###,##0.00");

  String strDataName = 
      objVal.getString(strValueName: "Data Name", intMin: 2, intMax: 10);
  int intDataLength = 
      objVal.getInt(strValueName: "Data Length", intMin: 1, intMax: 20);
  int intPeriod = 
      objVal.getInt(strValueName: "Moving Period", intMin: 1, intMax: 10);

  print("-------------------------------------------------------------");
    if (intPeriod<intDataLength) {
      List<double> lstVal = objVal.getListDouble(
          strValueName: strDataName, 
          intList: intDataLength, 
          douMin: 0.0, 
          douMax: 1000.0);
      objMA.cal(lstVal: lstVal, intPeriod: intPeriod);
      print("-------------------------------------------------------------");
      print("Forecast Value \t= ${objFormat2.format(objMA.douForecast)}");
      print("RMSE \t\t= ${objFormat2.format(objMA.douRMSE)}");
    } else {
      print("Period should be less than data size");
    }
  }

  void calDS(){
    var objVal = GetValue();
    var objDS = Stat();
    var objFormat2 = NumberFormat("#,###,##0.00");

    String strDataName = objVal.getString(strValueName: "Data Name", intMin: 2, intMax: 10);
    int intDataLength = objVal.getInt(strValueName: "Data Length", intMin: 1, intMax: 20);

    print("-------------------------------------------------------------");
    List<double> lstVal = objVal.getListDouble(
      strValueName: strDataName, 
      intList: intDataLength, 
      douMin: 0.0, 
      douMax: 1000.0);
    objDS.statCal(lstVal: lstVal);
    print("-------------------------------------------------------------");
    print("Minimum \t\t= ${objFormat2.format(objDS.douMin)}");
    print("Maximum \t\t= ${objFormat2.format(objDS.douMax)}");
    print("Average \t\t= ${objFormat2.format(objDS.douAverage)}");
    print("Standard Deviation \t= ${objFormat2.format(objDS.douStdev)}");
  }

  void calSLD(){
    var objVal = GetValue();
    var objSLD = SLD();
    var objFormat2 = NumberFormat("#,###,##0.00");

    double douAssetValue = objVal.getDouble(
        strValueName: "Asset Value", douMin: 1, douMax: 1000000, strUnit: "THB");
    int intLife = objVal.getInt(
        strValueName: "Asset Life", intMin: 1, intMax: 100, strUnit: "year");

    print("-------------------------------------------------------------");
    objSLD.sldCal(douAssetValue: douAssetValue, intLife: intLife);
    print(
      "Depreciation \t\t\t\t= ${objFormat2.format(objSLD.douDepreciation)} THB/year");
    for (var i = 0; i < intLife; i++) {
      print(
        "asset value at the end of year ${i + 1} \t= ${objFormat2.format(douAssetValue - objSLD.douDepreciation)}");
      douAssetValue = douAssetValue - objSLD.douDepreciation;
    }
  }