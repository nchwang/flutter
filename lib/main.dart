import 'package:flutter/material.dart';
import 'model/post.dart';


 void main(){
   runApp(
     App()
   );
 }


 class App extends StatelessWidget{
   @override
   Widget build(BuildContext context){
     return MaterialApp(
       home: Home(),
       theme:ThemeData(
         primarySwatch: Colors.yellow
       )
     );
  }
 }


 class Hello extends StatelessWidget{
   @override
   @override
   Widget build(BuildContext context){
     return Center(
       child: Text(
         'hello',
          textDirection: TextDirection.ltr, //表示文字从左向右阅读
          style: TextStyle(
            fontSize:40.0,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
        )
       ),
     );
    }
 }

 class Home extends StatelessWidget{
   Widget _listItemBuilder(BuildContext context,int index){
     return Container(
       color:Colors.white,
       margin: EdgeInsets.all(8.0),
       child: Column(
         children: <Widget>[
           Image.network(posts[index].imageUrl),
           SizedBox(height: 16.0),
           Text(
             posts[index].title,
             style: Theme.of(context).textTheme.title
           ),
           Text(
             posts[index].author,
             style: Theme.of(context).textTheme.subhead
           ),
          SizedBox(height: 16.0),
         ],
       )
     );
   }

   @override
   Widget build(BuildContext context){
     return Scaffold(
         backgroundColor: Colors.grey[100], //定义背景色
         appBar: AppBar(
           title:Text('Jacky Wang'),
           elevation:0.0
         ),
         body:ListView.builder( //引入列表小部件来获得数据显示成列表形式
            itemCount:posts.length,
            itemBuilder: _listItemBuilder,
         )
       );
   }
 }