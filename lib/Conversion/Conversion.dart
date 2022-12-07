import 'package:flutter/material.dart';
import 'package:numeric_system/Conversion/data.dart';
import 'package:numeric_system/Conversion/Brain.dart';

class Conversion extends StatefulWidget {
  @override
  _ConversionState createState() => _ConversionState();
}

class _ConversionState extends State<Conversion> {
  Brain brain = Brain(); // object of brain class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text('Numeric Conversion', style: AppbarText,textAlign: TextAlign.center,),
      ),

      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  decoration: decorate,
                  child: TextFormField(
                    textCapitalization: TextCapitalization.characters,
                    controller: val1,
                    maxLength: length,
                    keyboardType: key,
                    decoration: inputdecorateConversion,
                  ),
                ),
                sizebox10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: contDecorate,
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: DropdownButton<String>(
                        value: dropdownValue1,
                        iconSize: 24,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String? newValue) {
                          setState(() {
                            swapConversion = dropdownValue1;
                            dropdownValue1 = newValue!;
                            brain.cleartext();
                            brain.dropdown1brain();
                          });
                        },
                        items: listItem
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    todropdown,
                    Container(
                      decoration: contDecorate,
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: DropdownButton<String>(
                        value: dropdownValue2,
                        iconSize: 24,
                        style: TextStyle(color: Colors.black),
                        onChanged: (String? newValue) {
                          setState(() {
                            swapConversion = dropdownValue2;
                            dropdownValue2 = newValue!;
                            brain.dropdown1brain();
                          });
                        },
                        items: listItem
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                sizebox10,
                Container(
                  height: 50,
                  decoration: buttondecorate,
                  child: InkWell(
                    onTap: () {
                      print("calculate pressed");
                      setState(() {
                        FocusScope.of(context).requestFocus(FocusNode());
                        value = val1.text;
                        brain.conversionbrain();
                      });
                    },
                    onTapCancel: () {},
                    child: conversionbutton,
                  ),
                ),
                sizebox10,
                Container(
                  decoration: contDecorate,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$message1',
                              style: ErrorStyle,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 130),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          resulttext,
                          sizebox08,
                          Text(
                            '$print1 to $print2 conversion is ',
                            style: NormalStyle,
                            textAlign: TextAlign.center,
                          ),
                          sizebox08,
                          SelectableText(
                            resultConversion,
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
