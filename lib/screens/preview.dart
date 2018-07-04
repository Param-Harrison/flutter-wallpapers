import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wallpapers/models.dart';


class PreviewScreen extends StatelessWidget {
    final Photo photo;

    PreviewScreen({Key key, this.photo}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            body: GestureDetector(
                onTap: () {
                    Navigator.pop(context);
                },
                child: Container(
                    color: Colors.black,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            Expanded(
                                child: FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    image: photo.regular(),
                                    fit: BoxFit.cover,
                                ),
                            ),
                            Row(
                                children: <Widget>[
                                    Expanded(
                                        child: Container(
                                            padding: EdgeInsets.all(12.0),
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                    Text(
                                                        'By ${photo.user.fullName}',
                                                        style: TextStyle(color: Colors.white),
                                                    ),
                                                    Text(
                                                        'Unsplash.com',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12.0,
                                                        )
                                                    )
                                                ],
                                            ),
                                        )
                                    ),
                                    IconButton(icon: Icon(Icons.wallpaper), onPressed: null)
                                ],
                            ),
                        ],
                    )
                ),
            ),
        );
    }
}