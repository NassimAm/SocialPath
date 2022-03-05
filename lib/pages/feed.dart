import 'package:flutter/material.dart';
import 'package:sociopaths/pages/addagenda.dart';
import 'package:sociopaths/pages/agenda.dart';
import 'package:sociopaths/pages/profile.dart';
import 'package:sociopaths/pages/search.dart';

class Comment {
  String comment = "";
  String user = "";

  Comment({this.comment = "", this.user = ""});
}

class Post {
  String user = "";
  String date = "";
  String desc = "";
  String image = "";
  List<Comment> comments = [];

  Post(
      {this.user = '',
      this.date = '',
      this.desc = '',
      this.image = '',
      this.comments = const []});
}

List<Post> feeds = [
  Post(
      user: "Moncef Moussaoui",
      date: "14:00 , 06/03/22",
      desc: "playing a match in bouraoui stadium",
      image: 'assets/profil_pic3.jpg',
      comments: [
        Comment(comment: "I'm comming", user: "zack belhadj"),
        Comment(comment: "Kayan douche?", user: "Islem Medjahdi")
      ]),
  Post(
      user: "Ines Boumaazouza",
      date: "14:00 , 07/03/22",
      desc: "revising ReactJs",
      image: 'assets/profil_pic2.png',
      comments: [
        Comment(comment: "I'm a newbie, is it OK ?!", user: "Nassim Ameur"),
      ]),
  Post(
      user: "Nassim Ameur",
      date: "14:00 , 05/03/22",
      desc: "programming battle in HackerRank",
      image: 'assets/profil_pic4.png',
      comments: [
        Comment(comment: "I'm ready :D", user: "Islem Medjahdi"),
      ]),
];

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
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
                      color: Color(0xFFFFB9B8),
                      onPressed: () {},
                      icon: Icon(Icons.menu_book)),
                  Text('Feed', style: TextStyle(color: Color(0xFFFFB9B8)))
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
                        await Navigator.pushNamed(context, '/feed/profile');
                      },
                      icon: const Icon(
                        Icons.account_circle,
                        color: Color(0xFFE5E5E5),
                      )),
                  const Text('Profile',
                      style: TextStyle(color: Color(0xFFE5E5E5)))
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
                  Image.asset(
                    'assets/S_logo.png',
                    scale: 5,
                  ),
                  Image.asset('assets/message.png'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(35, 15, 35, 0),
              child: Column(
                children: feeds
                    .map((e) => Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            color: Color(0xff272F40),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        margin: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.0)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.asset(e.image),
                                        ),
                                      ),
                                      Text(
                                        e.user,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                    size: 50,
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        e.desc,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 24),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Comments",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            )),
                                        const Icon(
                                          Icons.message,
                                          color: Colors.grey,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 25),
                                            decoration: BoxDecoration(
                                                color: Color(0xFFFFB9B8),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Text("join",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20)))),
                                  ]),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
