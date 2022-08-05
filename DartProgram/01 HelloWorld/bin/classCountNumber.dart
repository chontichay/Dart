
class CountN {
  int methodCountN(int intNum, int intCounting) {
    int intResult = 0;
    List<String> lstNum = intNum.toString().split('');
    
    for (var element in lstNum) {
      if (int.parse(element) == intCounting)
        intResult++;
    }
    return intResult;
  }

  }


