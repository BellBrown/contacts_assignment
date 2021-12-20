import 'package:flutter/material.dart';

class profilepage extends StatelessWidget {
  const profilepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightBlue.shade100,
    appBar: AppBar(title: const Padding(
      padding: EdgeInsets.only(left: 75),
      child: Text("profile"),
    ),
    actions: [Icon(Icons.more_vert)],
    bottom:PreferredSize(child: Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Column(children: const [
        CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1536063211352-0b94219f6212?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
       radius: 50, ),Text("Ephuwah Brown",style: TextStyle(fontWeight: FontWeight.bold),),
        Text("Accra,Ghana",style: TextStyle(color: Colors.grey),)
      ],),
    ),
     preferredSize: Size.fromHeight(150))
      
      ) ,
      body: Column(children: [
        ListTile(title: const Text("Mobile"),
        subtitle: const Text("0577156704"),
        trailing: Row(children: const [
          CircleAvatar(child: Icon(Icons.message),
          ),CircleAvatar(child: Icon(Icons.call),)
        ],),)

      ],)
      );
  }
}