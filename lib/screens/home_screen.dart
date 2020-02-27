import 'package:covid_19/generated/l10n.dart';
import 'package:covid_19/screens/emergency_widget.dart';
import 'package:covid_19/screens/home_screen_widget.dart';
import 'package:covid_19/screens/prevention_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;
  Widget currentView = HomeScreenWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentView,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (tab) {
          setState(() {
            selectedTab = tab;
            switch (selectedTab) {
              case 0:
                currentView = HomeScreenWidget();
                break;
              case 1:
                currentView = PreventionWidget();
                break;
              case 2:
                currentView = EmergencyWidget();
                break;
              default:
                currentView = HomeScreenWidget();
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesome5.hospital),
            title: Text(S.of(context).navigationBarHome),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome5Solid.hands),
            title: Text(S.of(context).navigationPrevention),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.ambulance),
            title: Text(S.of(context).navigationEmergency),
          )
        ],
      ),
    );
  }

  Widget getCurrentWidget() {}
}
