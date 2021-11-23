import 'package:flutter/material.dart';

 class HomePage extends StatelessWidget {
   const HomePage({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0,
         centerTitle: false,
         title: const Text(
           'My Contact',
           style: TextStyle(
             color: Colors.black,fontSize: 25.0, fontWeight: FontWeight.w600
           ),
         ),
         actions: const [
           Padding(
             padding: EdgeInsets.only(right: 15),
             child: CircleAvatar(
               backgroundImage: AssetImage('assets/SIM SWAP EASTERN REGION 20200716_165753.jpg'),
               radius: 25,
             ),
           )
         ],
         bottom: PreferredSize(
           preferredSize: const Size.fromHeight(99),
           child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'search by name or number',
                border: 
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              )
            ) 
           )
  )
  
),
body: SafeArea(
  child: ListView(
    children: const [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Text(
        'Recent',
        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/SIM SWAP EASTERN REGION 20200716_165753.jpg'),
        radius: 25,
      ),
    )
    ],
  )
  )
  );}}