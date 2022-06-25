import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/models/test_model.dart';

class AnimalHome extends StatelessWidget {
  // TextEditingController nameController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   nameController.dispose();
  //   print('dispose method called');
  // }
  //
  Cat _cat = Cat();

  // Cat _cat1 = Cat().obs as Cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Home'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Animal Name: ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Obx(
                    () => Text(
                      '${_cat.name.value.toString()}',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Animal Age: ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Obx(
                    () => Text(
                      '${_cat.age.toString()}',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Animal Is Ill: ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Obx(
                    () => _cat.isIll == true
                        ? Text(
                            'Yes',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        : Text(
                            'No',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // TextField(controller: nameController),
              SizedBox(height: 10),
              // ElevatedButton(
              //   onPressed: () {
              //     _cat.changeName(nameController.text);
              //   },
              //         child: Text('Change Name'),
              //       ),
              ElevatedButton(
                onPressed: () {
                  _cat.increaseAge();
                },
                child: Text('Increase Age'),
              ),
              ElevatedButton(
                onPressed: () {
                  _cat.decreaseAge();
                },
                child: Text('Decrease Age'),
              ),
              ElevatedButton(
                onPressed: () {
                  _cat.changeIsIll();
                },
                child: Text('Change Illness'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
