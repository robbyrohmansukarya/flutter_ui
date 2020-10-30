import 'package:flutter/material.dart';
import 'package:grabflutter/dalamkota.dart';


class Activity extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<Activity>with SingleTickerProviderStateMixin {
  TabController controller;
   @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  
  @override 
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Colors.white,
      body: TabBarView(
          controller: controller,
          children: <Widget>[
            DalamKota(),
            Text('Nationwide')
          ]
        ),
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('My Activity',style: TextStyle(color: Colors.black, fontSize: 32),),
        
      bottom :TabBar(    
        controller: controller,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.green,
        tabs: <Tab>[
        Tab(      //text: 'Box',
         text: 'Activities'),
         
        Tab(
                //text: 'Container',
         text: 'Delivery'),
              
        ]
      ),
    ),
    );
  } 
}