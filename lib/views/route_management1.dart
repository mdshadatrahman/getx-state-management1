import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'route_management2.dart';

class RouteManagement1 extends StatelessWidget {
  const RouteManagement1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route0')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
               var res = await Get.to(()=>RouteManagement2());
               debugPrint(res == null ? "No data": res.toString());
              },
              child: Text('Go to Route 1'),
            ),
          ],
        ),
      ),
    );
  }
}
