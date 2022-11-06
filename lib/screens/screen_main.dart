import 'package:dream_edu/widgets/widget_main_left.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3FD),
      body: Row(
        children: [
          WidgetMainLeft()
        ],
      ),
    );
  }
}