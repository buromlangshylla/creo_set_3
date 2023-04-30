import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[  Text('Home'),  Text('Explore'),  Text('Notifications'),  Text('Profile'),];

  void _onItemTapped(int index) {
    //TODO :: add item tapping handler
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,
      leading:Icon(Icons.menu,color: Colors.black,),
      // title: Text(" Google News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
      title:Image.network('https://e7.pngegg.com/pngimages/28/143/png-clipart-google-news-online-newspaper-google-transit-news-aggregator-text-logo.png'),
      actions: [Icon(Icons.search,color: Colors.black,),SizedBox(width: 35,),Icon(Icons.apps,color: Colors.black,),SizedBox(width: 35,),
        Container(alignment: Alignment.center,
          height: 2,width: 75,child: Text("Sign In",style: TextStyle(color: Colors.white) ,),decoration: BoxDecoration(
              color: Colors.blue,borderRadius: BorderRadius.circular(5)),)],

    ),
      body: SingleChildScrollView(padding: EdgeInsets.all(20),
        child: Column(
          children: [Container(
            height: 155,
            width: double.infinity,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(55)),
            child: Image.network("https://st1.latestly.com/wp-content/uploads/2023/04/RCB-1.jpg",fit: BoxFit.fill,),
          ),
            SizedBox(height: 25,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("mint",style: GoogleFonts.adamina(fontWeight: FontWeight.w900,fontSize: 35,color: Colors.amber),),
              ],
            ),
            Text("IPL 2023: Fifties From Du Plessis and Maxwell, 3-fer from Harshal Help RCB Seal Big Win Over Table Toppers RR",style: GoogleFonts.adamina(fontWeight: FontWeight.w300,fontSize: 20,color: Colors.black),),
            SizedBox(height: 25,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("4 hours ago",style: TextStyle(fontSize: 13,color:  Color.fromARGB(255, 128, 125, 125),),),
                Icon(Icons.list,size: 25,color: Color.fromARGB(255, 128, 125, 125),)
              ],
            ),
            Container(height: 150,child: ListView(
              scrollDirection: Axis.horizontal,children: [
              Padding(padding: EdgeInsets.all(8),child: InkWell(onTap: (){},
                child:Container(width: 400, decoration: BoxDecoration(
                    color:   Color.fromARGB(255, 128, 125, 125),
                    borderRadius: BorderRadius.circular(7)),child: Column(
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CircleAvatar(radius: 11,
                      child: Image.network("https://tse3.mm.bing.net/th?id=OIP.Y7qCWgUggeVJWm0Y2_jgWQHaEK&pid=Api&P=0",fit: BoxFit.fill,color: Colors.transparent,),
                    ),
                      SizedBox(width: 15,),
                      Text("Zee Buisness",style: TextStyle(color: Colors.black,fontSize: 17),)
                    ],
                    ),
                    SizedBox(height: 10,),
                    Text("IPL 2023: Fifties From Du Plessis and Maxwell, 3-fer from Harshal Help RCB Seal Big Win Over Table Toppers RR",style: GoogleFonts.adamina(fontWeight: FontWeight.w100,fontSize: 15,color: Colors.black),),
                    SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("       9 hours ago",style: TextStyle(fontSize: 13,color:  Colors.black),),
                        Icon(Icons.list),
                      ],
                    ),
                  ],
                )
                )
                ,)
                ,),
              Padding(padding: EdgeInsets.all(8),child: InkWell(onTap: (){},
                child:Container(width: 400, decoration: BoxDecoration(
                    color:   Color.fromARGB(255, 128, 125, 125),
                    borderRadius: BorderRadius.circular(7)),child: Column(
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CircleAvatar(radius: 11,
                      child: Image.network("https://tse3.mm.bing.net/th?id=OIP.Y7qCWgUggeVJWm0Y2_jgWQHaEK&pid=Api&P=0",fit: BoxFit.fill,color: Colors.transparent,),
                    ),
                      SizedBox(width: 15,),
                      Text("Zee Buisness",style: TextStyle(color: Colors.black,fontSize: 17),)
                    ],
                    ),
                    SizedBox(height: 10,),
                    Text("IPL 2023: Fifties From Du Plessis and Maxwell, 3-fer from Harshal Help RCB Seal Big Win Over Table Toppers RR",style: GoogleFonts.adamina(fontWeight: FontWeight.w100,fontSize: 15,color: Colors.black),),
                    SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("       9 hours ago",style: TextStyle(fontSize: 13,color:  Colors.black),),
                        Icon(Icons.list),
                      ],
                    ),
                  ],
                )
                )
                ,)
                ,),
              Padding(padding: EdgeInsets.all(8),child: InkWell(onTap: (){},
                child:Container(width: 400, decoration: BoxDecoration(
                    color:   Color.fromARGB(255, 128, 125, 125),
                    borderRadius: BorderRadius.circular(7)),child: Column(
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CircleAvatar(radius: 11,
                      child: Image.network("https://tse3.mm.bing.net/th?id=OIP.Y7qCWgUggeVJWm0Y2_jgWQHaEK&pid=Api&P=0",fit: BoxFit.fill,color: Colors.transparent,),
                    ),
                      SizedBox(width: 15,),
                      Text("Zee Buisness",style: TextStyle(color: Colors.black,fontSize: 17),)
                    ],
                    ),
                    SizedBox(height: 10,),
                    Text("IPL 2023: Fifties From Du Plessis and Maxwell, 3-fer from Harshal Help RCB Seal Big Win Over Table Toppers RR",style: GoogleFonts.adamina(fontWeight: FontWeight.w100,fontSize: 15,color: Colors.black),),
                    SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("       9 hours ago",style: TextStyle(fontSize: 13,color:  Colors.black),),
                        Icon(Icons.list),
                      ],
                    ),
                  ],
                )
                )
                ,)
                ,),
              Padding(padding: EdgeInsets.all(8),child: InkWell(onTap: (){},
                child:Container(width: 400, decoration: BoxDecoration(
                    color:   Color.fromARGB(255, 128, 125, 125),
                    borderRadius: BorderRadius.circular(7)),child: Column(
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CircleAvatar(radius: 11,
                      child: Image.network("https://tse3.mm.bing.net/th?id=OIP.Y7qCWgUggeVJWm0Y2_jgWQHaEK&pid=Api&P=0",fit: BoxFit.fill,color: Colors.transparent,),
                    ),
                      SizedBox(width: 15,),
                      Text("Zee Buisness",style: TextStyle(color: Colors.black,fontSize: 17),)
                    ],
                    ),
                    SizedBox(height: 10,),
                    Text("IPL 2023: Fifties From Du Plessis and Maxwell, 3-fer from Harshal Help RCB Seal Big Win Over Table Toppers RR",style: GoogleFonts.adamina(fontWeight: FontWeight.w100,fontSize: 15,color: Colors.black),),
                    SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("       9 hours ago",style: TextStyle(fontSize: 13,color:  Colors.black),),
                        Icon(Icons.list),
                      ],
                    ),
                  ],
                )
                )
                ,)
                ,),

            ],
            ),),
            SizedBox(height: 15,),

            Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.edit_square,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Text(
                    "Full coverage of this story",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Divider(height: 1,color: Color.fromARGB(255, 128, 125, 125),),
            SizedBox(height: 15,),
            Container(
              height: 155,
              width: double.infinity,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(55)),
              child: Image.network("http://im.rediff.com/cricket/2016/may/14kohli-century3.jpg",fit: BoxFit.fill,),
            ),
            SizedBox(height: 15,),
            Text("IPL 2023: Fifties From Du Plessis and Maxwell, 3-fer from Harshal Help RCB Seal Big Win Over Table Toppers RR",style: GoogleFonts.adamina(fontWeight: FontWeight.w100,fontSize: 15,color: Colors.black),),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'For you',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Top Stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Local',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'Following',
          ),
        ],
      ),
    );
  }
}
