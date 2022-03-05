import 'package:flutter/material.dart';
import 'package:sociopaths/pages/login.dart';
import 'package:sociopaths/pages/profile.dart';
import 'package:sociopaths/pages/search.dart';
import 'package:sociopaths/pages/agenda.dart';
import 'package:sociopaths/pages/feed.dart';
import 'package:sociopaths/pages/addagenda.dart';
import 'package:sociopaths/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/loading': (context) => Loading(),
      '/login': (context) => Login(),
      '/feed': (context) => Feed(),
      '/feed/profile': (context) => Profile(),
      '/feed/search': (context) => Search(),
      '/feed/agenda': (context) => Agenda(),
      '/feed/addagenda': (context) => AddAgenda(),
    },
    initialRoute: '/loading',
  ));
}
