import 'package:flutter/material.dart';

class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  List<Widget> playlistContainer(BuildContext context, List<Widget> images, List<Widget> names) {
    List<Widget> containers = [];
    for (int i = 0; i < images.length; i++) {
      containers.add(
        Container(
          width: MediaQuery.of(context).size.width * .45,
          height: 65.0,
          margin: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[900],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              images[i],
              names[i],
              SizedBox(width: 15.0,),
            ],
          ),
        )
      );
    }
    return containers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    'Good evening',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.schedule,
                      color: Colors.white,
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
              ],
            ),
            Row(
              children: playlistContainer(
                context,
                [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1682686578842-00ba49b0a71a?auto=format&fit=crop&q=80&w=1375&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1698508679270-f7d22cc08f86?auto=format&fit=crop&q=80&w=1528&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ],
                [
                  Text(
                    'Shower Mix',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Your Playlist',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: playlistContainer(
                context,
                [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                    child: Image.network(
                        'https://img.buzzfeed.com/buzzfeed-static/complex/images/fo5unuq8oobhdkxwja8b/kendrick-lamar-mr-morale-and-the-big-steppers.png'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/4/42/Relapse_%28album%29.jpg'),
                  ),
                ],
                [
                  Text(
                    'Chill Mix',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Relapse',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: playlistContainer(
                context,
                [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1460036521480-ff49c08c2781?auto=format&fit=crop&q=80&w=1473&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1692478330654-92d3cf09c213?auto=format&fit=crop&q=80&w=1480&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ],
                [
                  Text(
                    'Daily Mix 1',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Shower Mix',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Text(
              'Jump back in',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music, color: Colors.white),
            label: 'Your library',
          ),
        ],
      ),
    );
  }
}
