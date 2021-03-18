import 'package:flutter/material.dart';
import 'package:starter_kit/core/constants/Strings.dart';
import 'package:starter_kit/core/constants/Theme.dart';

class Dashboard extends StatefulWidget {
  final int index;
  const Dashboard({Key? key,required this.index}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
    _tabController =
        TabController(length: 3, vsync: this, initialIndex: widget.index);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Home")),
          Center(child: Text("Feed")),
          Center(child: Text("Profile")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Themes.kPrimaryColor,
        onTap: (index){
          setState(() {
            _currentIndex = index;
            _tabController.index = index;
          });
        },
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: Strings.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_rounded),
            label: Strings.feed,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: Strings.profile
          )
        ],
      ),
    );
  }
}
