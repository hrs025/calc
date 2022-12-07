import 'package:numeric_system/Conversion/data.dart';
import 'package:units_converter/units_converter.dart';
import 'package:flutter/material.dart';

Widget todropdown =Text(
  'TO',
  textAlign: TextAlign.center,
  style: dropdowntext,
);

Widget conversionbutton = Center(
  child: Text(
    'Convert',
    style: NormalStyle,
    textAlign: TextAlign.center,
  ),
);

Widget resulttext = Text(
  'Result',
  style: TitleText,
  textAlign: TextAlign.center,
);

class Brain2{

  void cleartext(){
    val1.clear();
  }

  dropdown3brain(){
    // ignore: unnecessary_statements
    dropdownValue3 == dropdownValue4 ? dropdownValue4 = swapConversion2 : null;
    dropdownValue3 == "GBP" ? key = text : key = no;
    if (dropdownValue3 == "INR")
      length = 10;
    else if (dropdownValue3 == "USD")
      length = 14;
    else if (dropdownValue3 == "GBP")
      length = 8;
    else
      length = 40;
  }

  dropdown4brain(){
    // ignore: unnecessary_statements
    dropdownValue4 == dropdownValue3 ? dropdownValue3 = swapConversion2: null;
  }

}


class Brain{

  var numeralSystems = NumeralSystems();

  void cleartext(){
    val1.clear();
  }

  dropdown1brain(){
    // ignore: unnecessary_statements
    dropdownValue1 == dropdownValue2 ? dropdownValue2 = swapConversion : null;
    dropdownValue1 == "HexaDecimal" ? key = text : key = no;
    if (dropdownValue1 == "Decimal")
      length = 10;
    else if (dropdownValue1 == "Octal")
      length = 14;
    else if (dropdownValue1 == "HexaDecimal")
      length = 8;
    else
      length = 40;
  }

  dropdown2brain(){
    // ignore: unnecessary_statements
    dropdownValue2 == dropdownValue1 ? dropdownValue1 = swapConversion: null;
  }


  conversionbrain(){
    print1 = dropdownValue1;
    print2 = dropdownValue2;
    if (print1 == "Binary") {
      numeralSystems.convert(NUMERAL_SYSTEMS.binary, value);
      bin.hasMatch(value) ? message1 = '' : message1 = error;
      if (print2 == "Decimal")
        resultConversion = numeralSystems.decimal.stringValue.toString();
      else if (print2 == "Octal")
        resultConversion = numeralSystems.octal.stringValue.toString();
      else
        resultConversion = numeralSystems.hexadecimal.stringValue.toString();
    }
    else if (print1 == "Octal") {
      numeralSystems.convert(NUMERAL_SYSTEMS.octal, value);
      oct.hasMatch(value) ? message1 = '' : message1 = error;
      if (print2 == "Binary")
        resultConversion = numeralSystems.binary.stringValue.toString();
      else if (print2 == "Decimal")
        resultConversion = numeralSystems.decimal.stringValue.toString();
      else
        resultConversion = numeralSystems.hexadecimal.stringValue.toString();
    }
    else if (print1 == "Decimal") {
      numeralSystems.convert(NUMERAL_SYSTEMS.decimal, value);
      dec.hasMatch(value) ? message1 = '' : message1 = error;
      if (print2 == "Binary"){
        resultConversion = numeralSystems.binary.stringValue.toString();
      }// decimal to binary
      else if (print2 == "Octal")
        resultConversion = numeralSystems.octal.stringValue.toString();
      else
        resultConversion = numeralSystems.hexadecimal.stringValue.toString();
    }
    else {
      numeralSystems.convert(NUMERAL_SYSTEMS.hexadecimal, value);
      hex.hasMatch(value) ? message1 = '' : message1 = error;
      if (print2 == "Binary")
        resultConversion = numeralSystems.binary.stringValue.toString();
      else if (print2 == "Octal")
        resultConversion = numeralSystems.octal.stringValue.toString();
      else
        resultConversion = numeralSystems.decimal.stringValue.toString();
    }
    // ignore: unnecessary_statements
    message1 == error ? resultConversion = '0' : null;
    // ignore: unnecessary_statements
    resultConversion == '' ? resultConversion = '0' : null;
  }
}