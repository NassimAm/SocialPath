import 'package:flutter/material.dart';
import 'package:sociopaths/pages/addagenda.dart';
import 'package:sociopaths/pages/feed.dart';
import 'package:sociopaths/pages/profile.dart';
import 'package:sociopaths/pages/search.dart';

class Activity {
  String name = '';
  String user = '';
  String time = '';
  String location = '';
  Activity(
      {this.name = '', this.user = '', this.time = '', this.location = ''});
}

List<Activity> activities = [
  Activity(
      name: "Programming",
      user: "Me",
      time: "14:00 , 06/03/2022",
      location: 'Online'),
  Activity(
      name: "Reading",
      user: "Ines",
      time: "09:00 , 05/03/2022",
      location: "Esi, Algiers"),
  Activity(
      name: "Playing football",
      user: "Me",
      time: "15:00 , 07/03/2022",
      location: "Bouraoui Ammar"),
];

class Agenda extends StatefulWidget {
  const Agenda({Key? key}) : super(key: key);

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/navbar.png',
                  ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        color: Color(0xFFE5E5E5),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.menu_book)),
                    Text('Feed', style: TextStyle(color: Color(0xFFE5E5E5)))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        color: Color(0xFFE5E5E5),
                        onPressed: () async {
                          Navigator.pop(context);
                          await Navigator.pushNamed(context, '/feed/search');
                          if (this.mounted) {
                            setState(() {});
                          }
                        },
                        icon: Icon(Icons.search)),
                    Text('Search', style: TextStyle(color: Color(0xFFE5E5E5)))
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(6.0),
                    margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB9B8),
                        borderRadius: BorderRadius.circular(50.0)),
                    child: IconButton(
                        color: Color(0xFFE5E5E5),
                        onPressed: () async {
                          Navigator.pop(context);
                          await Navigator.pushNamed(context, '/feed/addagenda');
                          if (this.mounted) {
                            setState(() {});
                          }
                        },
                        icon: Icon(
                          Icons.add,
                        )),
                  ),
                  Text('Add', style: TextStyle(color: Color(0xFFE5E5E5))),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        color: Color(0xFFFFB9B8),
                        onPressed: () {},
                        icon: Icon(Icons.calendar_today)),
                    Text('Agenda', style: TextStyle(color: Color(0xFFFFB9B8)))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        color: Color(0xFFE5E5E5),
                        onPressed: () async {
                          Navigator.pop(context);
                          await Navigator.pushNamed(context, '/feed/profile');
                          if (this.mounted) {
                            setState(() {});
                          }
                        },
                        icon: Icon(
                          Icons.account_circle,
                          color: Color(0xFFE5E5E5),
                        )),
                    Text('Profile', style: TextStyle(color: Color(0xFFE5E5E5)))
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF5F5F5),
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text('Agenda',
                        style: TextStyle(
                          color: Color(0xFFFFB9B8),
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close, size: 50)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(35, 15, 35, 0),
              child: Column(
                children: activities
                    .map((activity) => Container(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          decoration: BoxDecoration(
                              color: activity.user == "Me"
                                  ? Color(0xffFFB9B8)
                                  : Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    activity.name,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                    child: Text(
                                      'By ' + activity.user,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Text(
                                      activity.time,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 5, 0, 10),
                                    child: Text(
                                      'Location : ' + activity.location,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      activities.remove(activity);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.black54,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        )));
  }
}
