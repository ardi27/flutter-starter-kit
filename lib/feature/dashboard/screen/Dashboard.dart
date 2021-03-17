import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String? welcome;
  const Dashboard({Key? key,this.welcome}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Welcome ${widget.welcome}"),
      ),
    );
  }
}
