import 'package:flutter/material.dart';
import 'Model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(), 
      theme: ThemeData(
        primaryColor: Colors.yellowAccent
      ),
    );
  }
}

class Home extends StatelessWidget{

Widget _listItemBuilder(BuildContext context, int index){
  return  Container(
    color: Colors.white,
    margin: EdgeInsets.all(8),
    child: Column(
      children: <Widget>[
        Image.network(posts[index].imageUrl),
        SizedBox(height: 16),
        Text(
          posts[index].title,
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(height: 5),
        Text(
          posts[index].author,
          style: Theme.of(context).textTheme.subtitle,
        ),
        SizedBox(height: 16),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("nihao"),
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        ),
      );
  }
}




