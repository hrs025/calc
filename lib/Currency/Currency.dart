import 'package:flutter/material.dart';
import 'package:numeric_system/Conversion/data.dart';

class Currency extends StatefulWidget {
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  var text = ["USD", "EUR", "CAD", "HKD", "BHD", "AUD", "MYR", "NZD", "IDR","INR"];
  int count = 9;
  changetext(int textCount) {
    setState(() {
      count = textCount;
    });
  }

  TextEditingController input = TextEditingController();
  TextEditingController output = TextEditingController();

  void botton_pressed(String bottonText) {
    setState(() {
      changetext(count);
      output.text = "Please Enter Valid Number in";
      return;
    });
    switch (bottonText) {
      case "USD":
        output.text = ((double.parse(input.text)) * 82.26).toString();
        break;
      case "EUR":
        output.text = ((double.parse(input.text)) * 86.47).toString();
        break;
      case "AUD":
        output.text = ((double.parse(input.text)) * 55.31).toString();
        break;
      case "CAD":
        output.text = ((double.parse(input.text)) * 60.45).toString();
        break;
      case "MYR":
        output.text = ((double.parse(input.text)) * 18.73).toString();
        break;
      case "NZD":
        output.text = ((double.parse(input.text)) * 52.43).toString();
        break;
      case "IDR":
        output.text = ((double.parse(input.text)) * 0.0053).toString();
        break;
      case "HKD":
        output.text = ((double.parse(input.text)) * 10.56).toString();
        break;
      case "BHD":
        output.text = ((double.parse(input.text)) * 218.19).toString();
        break;
    }
  }

  Widget buildBotton(String bottonText, int i) {
    return MaterialButton(
      shape:
      RoundedRectangleBorder(borderRadius: new BorderRadius.circular(12)),
      onPressed: () {
        botton_pressed(bottonText);
        changetext(i);
      },
      child: Text(
        bottonText,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.purple[200],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],

      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text('Currency Converter', style: AppbarText,textAlign: TextAlign.center,),
      ),

      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  margin:  EdgeInsets.all(12),
                  decoration: decorate,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.characters,
                    controller: input,
                    maxLength: length,
                    keyboardType: key,
                    decoration: inputdecorateConversion,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildBotton(text[0], 0),
                    buildBotton(text[1], 1),
                    buildBotton(text[2], 2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildBotton(text[3], 3),
                    buildBotton(text[4], 4),
                    buildBotton(text[5], 5),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildBotton(text[6], 6),
                    buildBotton(text[7], 7),
                    buildBotton(text[8], 8),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: contDecorate,
                  height: 435,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 130),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          sizebox08,
                          Text(
                            'INR to ${text[count]} conversion is ',
                            style: NormalStyle,
                            textAlign: TextAlign.center,
                          ),
                          sizebox08,
                          SelectableText(
                            output.text.toString(),
                            style: ResultText,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      );
  }
}