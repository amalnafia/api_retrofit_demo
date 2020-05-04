import 'package:flutter/material.dart';

class SharedData extends InheritedModel<String> {
//  AvailableJobModel availableModel;
  final String test;

  SharedData(this.test, child) : super(child: child);

  @override
  bool updateShouldNotify(SharedData oldWidget) {
//    if (oldWidget.test != test) {
//      return true;
//    }
//    return false;
    return true;
  }

  @override
  bool updateShouldNotifyDependent(
      InheritedModel oldWidget, Set<String> dependencies) {
//    if (dependencies.contains('test')) {
//      return true;
//    }
//    return false;
    return true;
  }

  static SharedData of(BuildContext context, String aspect) {
    return InheritedModel.inheritFrom<SharedData>(context, aspect: aspect);
  }

  Widget getTestText() {
//    switch (type) {
//      case 'test':
//        print('called bloc test');
//        return Text('First Test: ');
//    }
//    return Text('Unknown test Type $type');
//  }
    return Text('First Test: ');
  }
}
