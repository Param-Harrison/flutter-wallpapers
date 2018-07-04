import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpapers/widgets/categories.dart';
import 'package:wallpapers/widgets/photos.dart';


class _HomeScreenState extends State<HomeScreen> {
    String filename = 'assets/images.json';
    String text = 'default';
    int currentPage = 0;
    PageStorageBucket _bucket = PageStorageBucket();
    List<Widget> pages = [
        new PhotosListView(key: PageStorageKey('photos')),
        new CategoriesView(key: PageStorageKey('categories')),
    ];

    _switchPage(index) {
        setState(() {
            currentPage = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                backgroundColor: Colors.black,
                title: new Text(
                    widget.title,
                    style: TextStyle(color: Colors.grey.shade400),
                ),
            ),
            body: new PageStorage(
                bucket: _bucket,
                child: pages[currentPage]
            ),
            bottomNavigationBar: new BottomNavigationBar(
                onTap: _switchPage,
                items: [
                    new BottomNavigationBarItem(
                        icon: Icon(Icons.wallpaper),
                        title: Text('Featured'),
                    ),
                    new BottomNavigationBarItem(
                        icon: Icon(Icons.collections),
                        title: Text('Collections')
                    ),
                ]
            ),
        );
    }
}

class HomeScreen extends StatefulWidget {
    final String title;

    HomeScreen({Key key, this.title}) : super(key: key);

    @override
    _HomeScreenState createState() => new _HomeScreenState();
}
