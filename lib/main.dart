import 'package:flutter/material.dart';
import 'package:secondapp/AboutPage.dart';
import 'package:secondapp/BankAc.dart';
import 'package:secondapp/BmiCalculator.dart';
import 'package:secondapp/ButtonExample.dart';
import 'package:secondapp/ButtonPractice.dart';
import 'package:secondapp/CardPractice.dart';
import 'package:secondapp/CardWidgetExample.dart';
import 'package:secondapp/CheckBox.dart';
import 'package:secondapp/ContainerExample.dart';
import 'package:secondapp/DialerScreen.dart';
import 'package:secondapp/DropDownExample.dart';
import 'package:secondapp/ExpandPractice.dart';
import 'package:secondapp/FirstScreen.dart';
import 'package:secondapp/FlutterToastSplash.dart';
import 'package:secondapp/MainHomePage.dart';
import 'package:secondapp/PrintSecondScreen.dart';
import 'package:secondapp/SecondScreen.dart';
import 'package:secondapp/SplashScreen.dart';
import 'package:secondapp/StudentForm.dart';
import 'package:secondapp/StudentResult.dart';
import 'package:secondapp/TrendingPractice.dart';
import 'package:secondapp/ValidationForm.dart';
import 'package:secondapp/radiobutton.dart';

import 'AccordionExample.dart';
import 'AlaksaAppScreens.dart';
import 'AlertDialogExample.dart';
import 'AllDarts.dart';
import 'BottomNavigationExample.dart';
import 'ConfirmPIn.dart';
import 'CreatePin.dart';
import 'DrawerExample.dart';
import 'FlutterToastExample.dart';
import 'GrideViewExample.dart';
import 'ImageExample.dart';
import 'ListViewExample.dart';
import 'MxPlayerExample.dart';
import 'SalaryCreate.dart';
import 'SharedPrefenceDemo.dart';
import 'SharedPreferenceExample.dart';
import 'SliderExample.dart';
import 'StackWidgetExample.dart';
import 'TabExample.dart';
import 'TableWidgetExample.dart';
import 'TextFieldExample.dart';
import 'TextWidgetExample.dart';
import 'TruecallerExample.dart';
import 'WatsappExample.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
         home: TabExample(),
         // home: CardPractice(),
      // home: DialerScreen(),
    );
  }
}

