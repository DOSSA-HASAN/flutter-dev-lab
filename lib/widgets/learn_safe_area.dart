import 'package:flutter/cupertino.dart';
import 'package:flutter_dev_lab/widgets/box_widgets.dart';

class LearnSafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    // SafeArea is a padding automator, auto-adds padding so ur content is not
    // hidden by notch
    // takes child and minimum
    return SafeArea(child: Column(
      children: [
        LearnContainer(),
        LearnSizedBox(),
        LearnPadding()
      ],
    ),);
  }
}