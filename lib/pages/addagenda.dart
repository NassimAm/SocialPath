import 'package:flutter/material.dart';
import 'package:sociopaths/pages/agenda.dart';
import 'package:sociopaths/pages/profile.dart';

class AddAgenda extends StatefulWidget {
  const AddAgenda({Key? key}) : super(key: key);

  @override
  State<AddAgenda> createState() => _AddAgendaState();
}

class _AddAgendaState extends State<AddAgenda> {
  final nameController = TextEditingController();
  final bioController = TextEditingController();
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final locationController = TextEditingController();
  final tagsController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    bioController.dispose();
    dateController.dispose();
    timeController.dispose();
    locationController.dispose();
    tagsController.dispose();
    super.dispose();
  }

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
                        onPressed: () {},
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
            child: ListView(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: const Text('Add an Act',
                        style: TextStyle(
                          color: Color(0xFF272F40),
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
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Name :',
                        style: TextStyle(
                          color: Color(0xFF272F40),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      fillColor: const Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Bio :',
                        style: TextStyle(
                          color: Color(0xFF272F40),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  TextField(
                    controller: bioController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      fillColor: const Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Date :',
                        style: TextStyle(
                          color: Color(0xFF272F40),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintText: 'DD/MM/YY',
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      fillColor: const Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Time :',
                        style: TextStyle(
                          color: Color(0xFF272F40),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  TextField(
                    controller: timeController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintText: '_ _ _ _',
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      fillColor: const Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Location :',
                        style: TextStyle(
                          color: Color(0xFF272F40),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  TextField(
                    controller: locationController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      fillColor: const Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Tags :',
                        style: TextStyle(
                          color: Color(0xFF272F40),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  TextField(
                    controller: tagsController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintText: 'Tags >',
                      hintStyle: const TextStyle(color: Color(0xFFD1D1D1)),
                      fillColor: const Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 25),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFB9B8),
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x99272F40),
                          blurRadius: 4,
                          offset: Offset(0, 5), // Shadow position
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/feed/agenda');
                        activities.add(Activity(
                            name: nameController.text,
                            user: 'Me',
                            time: timeController.text +
                                ' , ' +
                                dateController.text,
                            location: locationController.text));
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    )))
          ],
        )));
  }
}
