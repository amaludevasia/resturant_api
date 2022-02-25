import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_api/snd.dart';


class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("food Menu"),
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                  textTheme: TextTheme().apply(bodyColor: Colors.black),
                  dividerColor: Colors.white,
                  iconTheme: IconThemeData(color: Colors.white)),
              child: PopupMenuButton<int>(
                color: Colors.black,
                itemBuilder: (context) => [
                  PopupMenuItem<int>(value: 0, child: Text("Setting")),
                  PopupMenuItem<int>(
                      value: 1, child: Text("Privacy Policy page")),
                  PopupMenuDivider(),
                  PopupMenuItem<int>(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text("Logout")
                        ],
                      )),
                ],
                onSelected: (item) => SelectedItem(context, item),
              ),
            ),
          ],
        ),

    backgroundColor: Colors.teal,
    body: SafeArea(
    child: GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 5,
    mainAxisSpacing: 5,
    children: [
    Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(13))),
    elevation: 5,
    child: ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(13)),
    child: Stack(
    children: [
    Image.network(
    "https://media.istockphoto.com/photos/fresh-juice-picture-id177050580?b=1&k=20&m=177050580&s=170667a&w=0&h=3Tkgj8XCNdOGKx0NHSY4R_pqic2Oui6euCjRClq0r2o="),
    Container(
    margin: EdgeInsets.only(top: 200, left: 5),
    child: Text(
    "Pear & Orange\n"
    "\n"
    "250.00 rs\n",
    style: TextStyle(fontWeight: FontWeight.w600),
    ),
    ),
    Row(
    children: [
    Container(
    padding: EdgeInsets.only(top: 255),
    child: Icon(Icons.access_time_filled_outlined,
    color: Colors.green, size: 18)),
    Container(
    padding: EdgeInsets.only(top: 255),
    child: Text(
    "20 min",
    style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.green),
    ),
    ),
    Container(
    padding: EdgeInsets.only(top: 255, left: 18),
    child: Icon(Icons.star, color: Colors.red)),
    Container(
    padding: EdgeInsets.only(top: 255, left: 20),
    child: Text(
    "4.8",
    style: TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.red),
    ),
    ),
    ],
    )
    ],
    ),
    ),
    ),
    Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(13))),
    elevation: 5,
    child: ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(13)),
    child: Stack(
    children: [
    Image.network(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcQMkkkk--gE6pBb3NWiMGTr2RSxfBWy1JlQ&usqp=CAU"),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children:[
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child: Icon(Icons.access_time_filled_outlined,),
    ),
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child: Text('35 min '),
    ),
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child:  Icon(Icons.star,color: Colors.red, ),
    ),
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child: Text('4.5'),
    ),
    ],
    ),
    // Expanded(
    //   child: ListTile(
    //     leading: Icon(Icons.access_time_filled_outlined),
    //     title: Text('15 min '),
    //     trailing: Icon(Icons.star,color: Colors.red, ),
    //   ),
    // ),
    Container(
    margin: EdgeInsets.only(top: 168, left: 5),
    child: Text(
    "Bread&Egg\n"
    "\n"
    "150.00 rs\n",
    style: TextStyle(fontWeight: FontWeight.w600),
    ),
    ),
    ],
    ),
    ),

    ),
    Container(
    child: Column(
    children: [
    Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(13))),
    elevation: 5,
    child: ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(13)),
    child:Stack(
    children:[
    Image.network(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1x0TSak37232gpZadO7f5f_7mbr9zEXFzow&usqp=CAU"),

    Container(
    margin: EdgeInsets.only(top: 208, left: 5),
    child: Text(
    "Steak&Mushroom\n"
    "\n"
    "450.00 rs\n",
    style: TextStyle(fontWeight: FontWeight.w600),
    ),
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children:[
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child: Icon(Icons.access_time_filled_outlined,),
    ),
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child: Text('35 min '),
    ),
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child:  Icon(Icons.star,color: Colors.red, ),
    ),
    Container(
    margin: EdgeInsets.only(top: 258, left: 5),
    child: Text('4.5'),
    ),
    ],
    ),

    ],),), ), ]
    )
    )
    ],
    )),


);
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => cart()));
        break;
      case 1:
        print("Privacy Clicked");
        break;
      case 2:
        print("User Logged out");
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => FormPage()),
                (route) => false);
        break;
    }
  }
}

cart() {
}