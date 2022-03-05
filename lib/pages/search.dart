import 'package:flutter/material.dart';
import 'package:sociopaths/pages/addagenda.dart';
import 'package:sociopaths/pages/agenda.dart';
import 'package:sociopaths/pages/feed.dart';
import 'package:sociopaths/pages/profile.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                        color: Color(0xFFFFB9B8),
                        onPressed: () {},
                        icon: Icon(Icons.search)),
                    Text('Search', style: TextStyle(color: Color(0xFFFFB9B8)))
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
                        onPressed: () async {
                          Navigator.pop(context);
                          await Navigator.pushNamed(context, '/feed/profile');
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
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(35, 15, 35, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                  hintText: "Search",
                  fillColor: const Color(0xFFE5E5E5),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 5),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB9B8),
                        borderRadius: BorderRadius.circular(100.0)),
                    child: Text(
                      'All',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 5),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB9B8),
                        borderRadius: BorderRadius.circular(100.0)),
                    child: Text(
                      'People',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 5),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB9B8),
                        borderRadius: BorderRadius.circular(100.0)),
                    child: Text(
                      'Acts',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 2,
                color: Color(0xFFFFB9B8))
          ],
        )));
  }
}
