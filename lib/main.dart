import 'package:flutter/material.dart';
import './components/button.dart';
import './components/icon.dart';
import './components/bottomSheet.dart';
import './components/input.dart';

void main() => runApp(MediaQuery(
    data: const MediaQueryData(), child: MaterialApp(home: HomeScreen())));

class HomeScreen extends StatelessWidget {
  CustomBottomSheet bottomSheet = CustomBottomSheet(
      widget: Container(
        child: const Text('custom bottom sheet'),
      ),
      backgroundColor: Colors.white,
      height: 350,
      padding: 20,
      borderRadius: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learning Flutter')),
      body: ListView(
        children: [
          CustomElevatedButton(
            onPressed: () {
              print("Learning Flutter");
            },
            title: 'Elevated button',
            btnWidth: 240,
            btnHeight: 60,
            backgroundColor: Colors.green,
            titleColor: Colors.white,
            elevation: 6,
            fontWeight: FontWeight.bold,
            borderRadius: 20,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: CustomOutlinedButton(
              onPressed: () {
                print("HI Flutter");
              },
              title: 'outlined Button',
              btnHeight: 60,
              btnWidth: 240,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              borderRadius: 40,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: CustomTextButton(
              onPressed: () {
                print("HI Flutter");
              },
              title: 'Text Button',
              btnHeight: 20,
              btnWidth: 100,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomIconButton(
              iconName: Icons.phone_android_sharp,
              iconSize: 40,
              iconColor: Colors.blue,
              onPressed: () {
                print("You Pressed me!");
              }),
          ElevatedIconButton(
            title: "Elevated Icon Button",
            iconName: Icons.settings,
            iconColor: Colors.black,
            iconSize: 40,
            onPressed: () {
              print('HI Abhishek Singh');
            },
            backgroundColor: Colors.green,
            titleColor: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            elevation: 3,
            iconPostion: "right",
          ),
          Container(
            child: CustomOutlinedIconButton(
              iconName: Icons.settings,
              iconColor: Colors.black,
              iconPostion: "right",
              iconSize: 40,
              onPressed: () {
                print("HI Flutter");
              },
              title: 'outlined Icon Button',
              btnHeight: 60,
              btnWidth: 280,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              borderRadius: 40,
            ),
            margin: const EdgeInsets.only(top: 20),
          ),
          CustomTextIconButton(
            iconName: Icons.settings,
            iconColor: Colors.blue,
            iconPostion: "right",
            iconSize: 20,
            onPressed: () {
              print("HI Flutter");
            },
            title: 'Text Button',
            btnHeight: 20,
            btnWidth: 180,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          CustomIcon(Icons.access_alarm_outlined,
              iconColor: Colors.black, iconSize: 30, onPressed: () {
            bottomSheet.bottomSheet(context);
          }),
          Input(
            labelText: "Email Address",
            hintText: "abhiwebdev2718@gmail.com"
          ),
        ],
      ),
    );
  }
}
//https://www.youtube.com/watch?v=wvhkomzr0dU&t=75s
