import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../widgets/navbar.dart';

import 'package:safedates/ui/discover/discover_screen.dart';
import 'package:safedates/ui/messages/messages_screen.dart';
import 'package:safedates/ui/profile/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  //the application app bar
  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 160,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(LineIcons.search)),
        IconButton(onPressed: () {}, icon: Icon(LineIcons.bell))
      ],
      leading: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          const Text(
            "Lorato",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }

  //profile list view
  Widget _topListView() {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      height: 128,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int position) {
            Profile profile = _profiles[position];
            return _profileItemView(profile);
          },
          separatorBuilder: (BuildContext context, int position) {
            return const SizedBox(
              width: 8,
            );
          },
          itemCount: _profiles.length),
    );
  }

  //profile item
  Widget _profileItemView(Profile profile) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Container(
            height: 80,
            width: 80,
            color: Colors.pink.withAlpha(100),
            padding: EdgeInsets.all(4),
            child: ClipOval(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(2),
                child: ClipOval(
                  child: Image.network(
                    profile.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            profile.name,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  //bottom card view
  Widget _bottomCardView() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://i.pinimg.com/564x/8d/a4/5f/8da45fae6f86b928fc32ffd033e211a9.jpg"))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Hanna Jonas, 25",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Text("2 Kilometers Away",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.cancel_sharp,
                              size: 32,
                              color: Colors.grey,
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.heart_broken,
                              size: 32,
                              color: Colors.white,
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Profile> _profiles = [
    Profile(
        "https://i.pinimg.com/564x/78/b1/69/78b1697dcca2c4a8e236d60f3607217b.jpg",
        "Jeremy"),
    Profile(
        "https://i.pinimg.com/564x/8d/a4/5f/8da45fae6f86b928fc32ffd033e211a9.jpg",
        "April"),
    Profile(
        "https://i.pinimg.com/564x/1b/a8/c5/1ba8c5ba058b5ffea8777682cc77c60d.jpg",
        "Hannibal"),
    Profile(
        "https://i.pinimg.com/564x/a8/6b/03/a86b03696ff877b483b9d741a62ba2de.jpg",
        "Angela"),
    Profile(
        "https://i.pinimg.com/564x/78/b1/69/78b1697dcca2c4a8e236d60f3607217b.jpg",
        "Jeremy"),
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        bottomNavigationBar: Navbar(
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the selected index
            });
          },
        ),
        body: IndexedStack( // Use IndexedStack to switch between screens
          index: _currentIndex,
          children: [
            _topListView(), // Replace with your actual screens
            _bottomCardView(), // Replace with your actual screens
            MessageScreen(),
            ProfileScreen(), 
          ],
        ),
    );
  }
}

class Profile {
  String imageUrl;
  String name;

  Profile(this.imageUrl, this.name);
}
