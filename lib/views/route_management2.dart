import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteManagement2 extends StatelessWidget {
  const RouteManagement2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route1'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back(
                  result: 'Just got back form route 1',
                  closeOverlays: true,
                );
                Get.snackbar(
                  'Test',
                  'Test message',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red.withOpacity(.5),
                );
              },
              child: Text('Go back to Route 0'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
