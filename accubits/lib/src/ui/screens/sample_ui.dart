import 'package:accubits/src/ui/widgets/Call.dart';
import 'package:accubits/src/ui/widgets/Filters.dart';
import 'package:accubits/src/ui/widgets/Lamps.dart';
import 'package:accubits/src/ui/widgets/TopLight.dart';
import 'package:accubits/src/ui/widgets/search_bar.dart';
import 'package:accubits/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleUI extends StatefulWidget {
  @override
  _SampleUIState createState() => _SampleUIState();
}

class _SampleUIState extends State<SampleUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: screenHeight(
            context,
            dividedBy: 1.2,
          ),
          width: screenWidth(context, dividedBy: 1.1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              border: Border.all(style: BorderStyle.none),
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: (Image.asset('assets/images/iconbutton.png')),
                      iconSize: screenWidth(context, dividedBy: 50),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    'Our Product',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Image.asset('assets/images/menuicon.png'),
                      iconSize: screenWidth(context, dividedBy: 50),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Center(
                child: Text('Your choice',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w200,
                        fontSize: 27.0,
                        fontFamily: 'Poppins')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(),
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 20),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TopLight(),
                        Call(),
                        Filters(),
                      ],
                    ),
                    SizedBox(width: screenWidth(context, dividedBy: 5),),
                    LampColumn(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
