import 'package:flutter/material.dart';
import 'package:numeric_system/Conversion//data.dart';
import 'package:numeric_system/Currency/Currency.dart';
import 'package:numeric_system/Emi/Emi.dart';
import 'Conversion/Conversion.dart';
//import 'package:numeric_system/Conversion/Conversion.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:numeric_system/Calc/Calc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Center(child: Text('Calculator', style: AppbarText)),
      ),

      body: SafeArea(
        child: ListView(
          children: [

            //Numeric
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTileCard(
                  leading: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Conversion()));},
                    child: CircleAvatar(
                      child: Text('N'),
                    ),
                  ),
                  title: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Conversion()));},child: Text('Numeric System',)),
                  subtitle: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Conversion()));},child: Text('Convert Binary, Decimal etc...')),
                  children: <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          """In this, you can Convert In diffrent numeric types. it Includes 4 Types Binary, Decimal, Octal and Hexa.""",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
            ),

            //calc
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTileCard(
                  leading: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Calc()));},
                    child: CircleAvatar(
                      child: Text('C'),
                    ),
                  ),
                  title: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Calc()));},child: Text('Calculator',)),
                  subtitle: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Calc()));},child: Text('simple mathematical calculations')),
                  children: <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text('',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
            ),

            //currency Convertor
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTileCard(
                  leading: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Currency()));},
                    child: CircleAvatar(
                      child: Text('M'),
                    ),
                  ),
                  title: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Currency()));},child: Text('Currency',)),
                  subtitle: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Currency()));},child: Text('Currency Convertor')),
                  children: <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
            ),

            //EMI_calculator
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTileCard(
                  leading: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Emi_calculator()));},
                    child: CircleAvatar(
                      child: Text('E'),
                    ),
                  ),
                  title: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Emi_calculator()));},child: Text('EMI Calculator',)),
                  subtitle: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Emi_calculator()));},child: Text('EMI Calculator')),
                  children: <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text('',
                           style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
            ),

          ],
        ),
      ),
//      Conversion(),
    );
  }
}
