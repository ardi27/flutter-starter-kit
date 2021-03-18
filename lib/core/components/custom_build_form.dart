import 'package:flutter/material.dart';

class CustomBuildForm extends StatelessWidget {
  final String label;
  final Widget child;
  const CustomBuildForm({Key? key, required this.label,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        child
      ],
    );
  }
}
