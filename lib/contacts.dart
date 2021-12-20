import 'package:contact_assignment/profile.dart';
import 'package:flutter/material.dart';


class Contact extends StatelessWidget {
   Contact({ Key? key }) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
   appBar: AppBar(elevation: 0,
   backgroundColor: Colors.white,
   title: Text("My Contacts",style: TextStyle(color: Colors.black),
   ),actions: [Padding(
     padding: const EdgeInsets.all(8.0),
     child: CircleAvatar(backgroundImage: NetworkImage(""),
     ),
   )],
   bottom: PreferredSize(child: TextField(decoration: InputDecoration(border: OutlineInputBorder(
     borderRadius: BorderRadius.circular(25)
   ),prefixIcon: Icon(Icons.search),
   hintText: "Search by name or number"),
   ), preferredSize: Size.fromHeight(90))),
     body: Padding(
       padding: const EdgeInsets.all(12.0),
       child: ListView(controller: _scrollController,shrinkWrap: true,
       children: [Text("Recents"),
        NewWidget(
          image: "https://images.unsplash.com/photo-1639931723005-483ded9ab43b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
          name: "Rex",
          number: "+233577156704",
        ),
        Divider(indent: 25,thickness: 1.2,),
         NewWidget(
           image:"https://images.unsplash.com/photo-1607001470214-11b5dc2a6f69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
           name: "AJ",
           number: "+233277167704",
         ),
         Divider(indent: 25,thickness: 1.2,),
          NewWidget(
            image: "https://images.unsplash.com/photo-1509783236416-c9ad59bae472?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mnx8Z2lybCUyMGdsYXNzZXN8fDB8fHx8MTYxOTcwMDYyOQ&ixlib=rb-1.2.1&q=80&w=1080",
            name: "Bristotle",
            number: "+2335412376834",
          ),
          Text("Contacts"),
           NewWidget(
              image: "https://images.unsplash.com/photo-1639931723005-483ded9ab43b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
          name: "Rex",
          number: "+233577156704",
           ),
           Divider(indent: 25,thickness: 1.2,),
            NewWidget(
              image: "https://images.unsplash.com/photo-1607001470214-11b5dc2a6f69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
           name: "AJ",
           number: "+233277167704",
            ),
            Divider(indent: 25,thickness: 1.2,),
             NewWidget(
                         image: "https://images.unsplash.com/photo-1509783236416-c9ad59bae472?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mnx8Z2lybCUyMGdsYXNzZXN8fDB8fHx8MTYxOTcwMDYyOQ&ixlib=rb-1.2.1&q=80&w=1080",
            name: "Bristotle",
            number: "+2335412376834",
             ),
             Divider(indent: 25,thickness: 1.2,),
             NewWidget(
                         image: "https://images.unsplash.com/photo-1639926783705-34fedf78685d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=522&q=80",
            name: "Jesse",
            number: "+2335054367856",
             ),
       ]),
     ),
     floatingActionButton: FloatingActionButton(onPressed:(){ Navigator.push(context,
      MaterialPageRoute(builder: (context) =>const profilepage() ,));
      },
      child: Icon(Icons.add),),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.number
  }) : super(key: key);
  final String image;
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: CircleAvatar(backgroundImage: NetworkImage(image),),
      title: Text(name),
      subtitle: Text(number),
      trailing: Icon(Icons.more_horiz),);
  }
}


