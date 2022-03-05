import 'package:flutter/material.dart';
import 'package:sociopaths/pages/addagenda.dart';
import 'package:sociopaths/pages/agenda.dart';
import 'package:sociopaths/pages/feed.dart';
import 'package:sociopaths/pages/search.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

List<String> hobbies = ["programming", "sport", "music", "video-games"];

String fname = "Islem Medjahdi";
String aboutMe =
    "Hello I'm a computer science student, I love programming and playing video games";
String tel = "0559594160";
String email = "ki_medjahdi@esi.dz";
String social = "@IslemMedjahdi";

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.transparent,
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
                      color: Color(0xFFE5E5E5),
                      onPressed: () async {
                        Navigator.pop(context);
                        await Navigator.pushNamed(context, '/feed/agenda');
                      },
                      icon: Icon(Icons.calendar_today)),
                  Text('Agenda', style: TextStyle(color: Color(0xFFE5E5E5)))
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle,
                        color: Color(0xFFFFB9B8),
                      )),
                  Text('Profile', style: TextStyle(color: Color(0xFFFFB9B8)))
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
          Stack(
            children: [
              Positioned(
                bottom: 10,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/profile_bg.png',
                      scale: 0.9,
                    )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/S_logo.png', scale: 4.0),
                    const Text('Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                    Image.asset('assets/message.png'),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(40, 70, 40, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFEDF5F9), width: 2.0),
                          borderRadius: BorderRadius.circular(100.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('assets/profil_pic.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  fname,
                  style: TextStyle(
                      color: Color(0xFF272F40),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: const Center(
              child: Text('About Me',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 5, 15, 20),
            child: Text(aboutMe,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                )),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(35, 0, 35, 0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 15, 0, 5),
                  child: const Text('Hobbies',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 15),
                    child: Wrap(
                      children: hobbies
                          .map((hobby) => Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 5),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 15.0),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFB9B8),
                                  borderRadius: BorderRadius.circular(100.0)),
                              child: Text(hobby,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ))))
                          .toList(),
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 15, 0, 0),
            child: const Text('Contacts:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 15, 0, 0),
            child: Text('Tel: ' + tel,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 5, 0, 0),
            child: Text('Email: ' + email,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 5, 0, 30),
            child: Text('Social Media: ' + social,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
        ],
      )),
    );
  }
}
