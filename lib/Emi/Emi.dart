import 'package:flutter/material.dart';
import 'package:numeric_system/Conversion/data.dart';

class Emi_calculator extends StatefulWidget {
  const Emi_calculator({Key? key}) : super(key: key);

  @override
  State<Emi_calculator> createState() => _Emi_calculatorState();
}

class _Emi_calculatorState extends State<Emi_calculator> {

  double amount = 10000;
  double rate = 1;
  double year = 1;
  double emi = 0;
  double Loan = 0;

  void live() {
    setState(
          () {
        emi = (amount + (amount * rate * year) / 100) / 12;
        Loan = emi * 12;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text('EMI Calculator', style: AppbarText,textAlign: TextAlign.center,),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 716,
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 22,
                          ),
                          Row(
                            children: [
                              Text(
                                "Total Loan : ",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),

                              Text(
                                "Rs = ${Loan.toInt()} ",
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            children: [
                              Text(
                                "Your Loan EMI is : ",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "Rs = ${emi.toInt()} / month",
                                style: TextStyle(color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 190, left: 10, right: 10),
                height: 520,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "LoanAmount",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Rs - $amount",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        value: amount,
                        activeColor: Colors.grey[900],
                        divisions: 100,
                        onChanged: (data) {
                          setState(
                                () {
                              amount = data;
                            },
                          );
                          live();
                        },
                        max: 1000000,
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "Intrest Rate",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "$rate %",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        value: rate,
                        activeColor: Colors.grey[900],
                        divisions: 40,
                        onChanged: (data) {
                          setState(
                                () {
                              rate = data;
                            },
                          );
                          live();
                        },
                        max: 20,
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "Loan Tenuer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$year year",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        activeColor: Colors.grey[900],
                        value: year,
                        divisions: 30,
                        onChanged: (data) {
                          setState(
                                () {
                              year = data;
                            },
                          );
                          live();
                        },
                        max: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}