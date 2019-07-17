import 'package:flutter/material.dart';
import '../Model/post.dart';
class ListViewDome extends StatelessWidget{
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
    
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        );
  }
}
