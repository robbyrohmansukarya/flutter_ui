import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DalamKota extends StatefulWidget {
  @override
  _JadwalPageState createState() => _JadwalPageState();
}

class _JadwalPageState extends State<DalamKota>
    with SingleTickerProviderStateMixin {
  TabController controller;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//       body:  Container(
//         key: _formKey,
//         child: ListView(
//           shrinkWrap: true,
//           padding: EdgeInsets.only(left: 8.0, right: 8.0),
//           children: <Widget>[
//             Container(

// 	padding: EdgeInsets.only(left: 10,right: 10,top: 10),
// 	child: TextField(
// 	autocorrect: true,
// 	decoration: InputDecoration(
// 	  hintText: 'Sender',
// 	  prefixIcon: Icon(Icons.my_location),
// 	  hintStyle: TextStyle(color: Colors.grey),
// 	  filled: true,
// 	  fillColor: Colors.white70,
// 	  enabledBorder: OutlineInputBorder(
// 		borderRadius: BorderRadius.all(Radius.circular(12.0)),
// 		borderSide: BorderSide(color: Colors.green, width: 2),
// 	   ),
// 	  focusedBorder: OutlineInputBorder(
// 		borderRadius: BorderRadius.all(Radius.circular(10.0)),
// 		borderSide: BorderSide(color: Colors.green, width: 2),
// 	  ),
// 	),)
//   ),
//   Container(

// 	padding: EdgeInsets.only(left: 10,right: 10),
// 	child: TextField(
// 	autocorrect: true,
// 	decoration: InputDecoration(
// 	  hintText: 'Receiver',
// 	  prefixIcon: Icon(Icons.place),
// 	  hintStyle: TextStyle(color: Colors.grey),
// 	  filled: true,
// 	  fillColor: Colors.white70,
// 	  enabledBorder: OutlineInputBorder(
// 		borderRadius: BorderRadius.all(Radius.circular(12.0)),
// 		borderSide: BorderSide(color: Colors.green, width: 2),
// 	   ),
// 	  focusedBorder: OutlineInputBorder(
// 		borderRadius: BorderRadius.all(Radius.circular(10.0)),
// 		borderSide: BorderSide(color: Colors.green, width: 2),
// 	  ),
// 	),)
//   ),
//    SlidingUpPanel(
//       panel: Center(
//         child: Text("This is the sliding Widget"),
//       ),

//       collapsed: Container(
//         decoration: BoxDecoration(
//           color: Colors.blueGrey,

//         ),
//         child: Center(
//           child: Text(
//             "This is the collapsed Widget",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),

//       body: Center(
//         child: Text("This is the Widget behind the sliding panel"),
//       ),

//     ),
//           ]
//         )
//       ),

      body: SlidingUpPanel(
        maxHeight: 190,
        renderPanelSheet: false,
        panel: _floatingPanel(),
        collapsed: _floatingCollapsed(),
        body: Container(
            key: _formKey,
            child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Sender',
                          prefixIcon: Icon(Icons.my_location),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Receiver',
                          prefixIcon: Icon(Icons.place),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                        ),
                      )),
                ])),
      ),
    );
  }

  Widget _floatingCollapsed() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      margin: const EdgeInsets.only(top: 24.0,bottom: 0.0),
      child: Center(
        
          child: ListTile(
            trailing: Icon(Icons.keyboard_arrow_up),
            leading: Icon(Icons.local_shipping),
            title: Text("Truk Kontainer"),
            subtitle: Text("Bandung Ke Jakarta"),
          ),
        
      ),
    );
  }

  Widget _floatingPanel() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ]),
      margin: const EdgeInsets.only(top:24.0),
      
        child: Card(
          color: Colors.blue[50],
          child: ListTile(
            trailing: Icon(Icons.keyboard_arrow_down),
            leading: Icon(Icons.local_shipping),
            title: Text("Bandung ke Jakarta"),
            subtitle: Text("Rp.100.000,-"),
          ),
        ),
       
    );
  }
}
