import 'package:flutter/material.dart';

//numeric
String swapConversion = ''; //For Swaping
String dropdownValue1 = 'Binary'; //on Value change dropdown1
String dropdownValue2 = 'Decimal'; //on Value change dropdown2

//currency
String swapConversion2 = ''; //For Swaping
String dropdownValue3 = 'INR'; //on Value change dropdown3
String dropdownValue4 = 'USD'; //on Value change dropdown4


String print1 = 'Binary'; //for update value change of dropdown1 in result
String print2 = 'Decimal'; //for update value change of dropdown2 in result
String message1 = ''; //For printing Error message
String error = "*Enter valid values"; //Default Error message
var value; //input value

var value2;

String resultConversion = '0'; // default result
var key = no; // keyboard change
final val1 = TextEditingController(); //to store input value
int length = 40; //input text length

final no = TextInputType.number; // Number Keyboard
final text = TextInputType.text; // Normal Keyboard

//Regular Expression for Input Validation for Conversion
final RegExp bin = RegExp(r"^[0-1]{1,40}$"); //Regex For Binary
final RegExp dec = RegExp(r"^[0-9]{1,10}$"); //Regex For Decimal
final RegExp oct = RegExp(r"^[0-7]{1,14}$"); //Regex For Octal
final RegExp hex = RegExp(r"^[0-9,A-F]{1,8}$"); // Regex For HexaDecimal


//Appbar Text
const AppbarText = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.normal,
  color: Colors.white,
);

//Title Text
const TitleText = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

//Result Text
const ResultText = TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);

//Normal Text
const NormalStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);

//Error Text
const ErrorStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: Colors.redAccent,
);

//Dropdown Text
const dropdowntext = TextStyle(
fontWeight: FontWeight.bold,
letterSpacing: 1,
fontSize: 24,
color: Colors.white,
);

//DropDown Item List
const List<String> listItem = [
  "Binary",
  "Octal",
  "Decimal",
  "HexaDecimal",
];

//DropDown Item List
const List<String> listItem2 = [
  "INR",
  "USD",
  "EUR",
  "GBP",
];


//Normal Decoration
Decoration decorate = BoxDecoration(
    color: Colors.white,
    border: Border.all(width: 0.5),
    borderRadius: BorderRadius.circular(5));

//Input Decoration
InputDecoration inputdecorateConversion = InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Enter Value',
    counterText: '',
    hintStyle: TextStyle(
      color: Colors.black,
    ));

//Dropdown Decoration
Decoration contDecorate = BoxDecoration(
  border: Border.all(width: 1,),
  borderRadius: BorderRadius.circular(5),
  color: Colors.white,
);

//Button Decoration
Decoration buttondecorate = BoxDecoration(
    border: Border.all(width: 2),
    color: Colors.purple[200],
    borderRadius: BorderRadius.circular(5));

Widget sizebox08 = SizedBox(height: 0.8);
Widget sizebox10 = SizedBox(height: 10);
