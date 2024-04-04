import 'package:fitgoal_app/screens/screens.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

int _selectedIndex = 0;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Widget> _pages = [
    ExerciseMenu(),
    CoachMenu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarFitGoalComplete(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Color.fromRGBO(114, 191, 1, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: [_bottomItem(0), _bottomItem(1)],
      ),
    );
  }
}

BottomNavigationBarItem _bottomItem(int index) {
  return BottomNavigationBarItem(
    icon: Transform.scale(
      scale: 1,
      child: _selectedIndex == 0 ?
      index == 0
          ? Image.asset(
              "assets/png_icons/exercise_icon_activated.png",
              width: 40,
              height: 40,
            )
          : Image.asset(
              "assets/png_icons/team_icon.png",
              width: 40,
              height: 40,
            )
            :
            index == 0
          ? Image.asset(
              "assets/png_icons/exercise_icon.png",
              width: 40,
              height: 40,
            )
          : Image.asset(
              "assets/png_icons/team_icon_activated.png",
              width: 40,
              height: 40,
            ),
    ),
    label: "",
  );
}
