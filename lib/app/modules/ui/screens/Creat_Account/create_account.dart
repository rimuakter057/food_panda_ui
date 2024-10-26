/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CreateAccountScreen extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<CreateAccountScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoSwitch(
              value: _switchValue,
              onChanged: (bool value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              _switchValue ? 'Switch is ON' : 'Switch is OFF',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_ui/app/controllers/switch_controller.dart';
import 'package:get/get.dart';


class CreateAccountScreen extends StatelessWidget {
 CreateAccountScreen({super.key});

SwitchController switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx((){
            return Transform.scale(
              scale: 2,
              child: CupertinoSwitch(value:switchController.switchValue.value,
                  trackColor: Colors.red,
                  thumbColor: Colors.blue,
                  activeColor: Colors.orange,
                  onChanged:(bool value){
                    SwitchController().switchValue(value);
                  }),
            );
          }),



          const SizedBox(height: 20),
            Text(
             switchController.switchValue.value ? 'Switch is ON' : 'Switch is OFF',
              style: TextStyle(fontSize: 20),
            ),

        ],
      ),
    );
  }
}
