import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BelajarAppBar(),
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ));
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Music",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/image/wemanys.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Music"),
                      new Tab(icon: new Icon(Icons.collections), text: "Album"),
                      new Tab(icon: new Icon(Icons.favorite), text: "Playlist"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            Music(),
            Album(),
            Playlist(),
          ]),
        ),
      ),
    );
  }
}

class Music extends StatelessWidget {
  final List lagu = [
    "Ziva Magnolya - Peri Cintaku",
    "Febio Ashers - Rumah Singgah ",
    "Adele - Easy On Me",
    "Mahalini - Kisah Sempurna",
    "Keisya Levronka - Tak Ingin Usai",
    "Tulus - Diri",
    "Troye Sivan - Angel Baby",
    "Arsy Widianto, Tiara Andini - Bahaya",
    "Rizky Febian & Ziva - Terlukis Indah",
    "Mahen - Pura Pura Lupa",
    "Steven Pasaribu - Belum Siap Kehilangan",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(lagu[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + lagu[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: lagu.length,
      ),
    );
  }
}

class Album extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.pinimg.com/736x/ea/ae/76/eaae76ab5715824fb5d2a322996f83c3.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Ziva Magnolya - Peri Cintaku',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.ibb.co/nRHFnmK/kuku.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Febio Ashers - Rumah Singgah',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.ibb.co/wdcLJ9p/bunga.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Adele - Easy On Me',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.ibb.co/hXY3GMb/awna.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Mahalini - Kisah Sempurna',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.ibb.co/GQmdG6d/hun8729.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Keisya Levronka - Tak Ingin Usai',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.ibb.co/KyXL3sC/matahari.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Tulus - Diri',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/nRCcZDR/sun.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Troye Sivan - Angel Baby',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/c8BBBgz/sebja.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Arsy Widianto, Tiara Andini - Bahaya',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/jMc2N9b/kucing.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Rizky Febian & Ziva - Terlukis Indah',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/mD85xZ2/hiling2.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Mahen - Pura Pura Lupa',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/n1QYnpq/Macdie.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15.0),
              Text(
                'Steven Pasaribu - Belum Siap Kehilangan',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class Playlist extends StatelessWidget {
  final List ffv = [
    "Febio Ashers - Rumah Singgah ",
    "Adele - Easy On Me",
    "Mahalini - Kisah Sempurna",
    "Rizky Febian & Ziva - Terlukis Indah",
    "Mahen - Pura Pura Lupa",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(ffv[index], style: TextStyle(fontSize: 20)),
            subtitle: Text(" Lagu dari " + ffv[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: ffv.length,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.black,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
