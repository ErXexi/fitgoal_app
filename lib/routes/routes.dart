import 'package:fitgoal_app/screens/screens.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginScreen(),
    'home': (BuildContext context) => BottomNavigation(),
    'register': (BuildContext context) => SignUpScreen(),
    'recover': (BuildContext context) => ForgotPassword(),
    'exercices': (BuildContext context) => ExercisesScreen(),
    'exercice': (BuildContext context) => ExerciceInfo(),
    'add_exercice': (BuildContext context) => AddExerciceScreen(),
    'sessions': (BuildContext context) => SessionsScreen(),
    'session': (BuildContext context) => SessionExerciceScreen(),
    'countdown': (BuildContext context) => CountdownPage(),
    'players': (BuildContext context) => PlayersTableScreen(),
    'player': (BuildContext context) => PlayerInfoScreen(),
    'playerCreation': (BuildContext context) => PlayerCreateEditScreen(),
    'board': (BuildContext context) => BoardScreen(),
    'align': (BuildContext context) => PlayerAlignScreen(),
    'settings': (BuildContext context) => SettingsScreen(),
    'changePassword': (BuildContext context) => ChangePasswordScreen(),
    'link': (BuildContext context) => LinkTeamScreen()
  };
}