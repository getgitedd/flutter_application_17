import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myList = [
      {
        "name": "John",
        "dp":
            "https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "backgroundimage":
            "https://images.pexels.com/photos/3348129/pexels-photo-3348129.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "Alice",
        "dp":
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "backgroundimage":
            "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "Bob",
        "dp":
            "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "backgroundimage":
            "https://images.pexels.com/photos/210186/pexels-photo-210186.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "Charlie",
        "dp":
            "https://images.pexels.com/photos/220455/pexels-photo-220455.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "backgroundimage":
            "https://images.pexels.com/photos/19399332/pexels-photo-19399332/free-photo-of-a-street-warehouse.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      },
      {
        "name": "David",
        "dp":
            "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "backgroundimage":
            "https://images.pexels.com/photos/18028832/pexels-photo-18028832/free-photo-of-road-through-forest-in-summer.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: PageView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(myList[index]["backgroundimage"]))),
          child: Column(
            children: [
              Divider(
                color: Colors.white,
                thickness: 3,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(myList[index]["dp"]),
                ),
                title: Text(
                  myList[index]["name"],
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: Text(
                  "Username",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 1.5)),
                      child: Text(
                        "Send Message",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              )
            ],
          ),
        ),
      ))),
    );
  }
}
