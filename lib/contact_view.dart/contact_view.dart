import 'dart:html';

import 'package:flutter/material.dart';



class ContactView extends StatelessWidget {
  const ContactView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Contacts',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 25,)
          ),
          actions: const[
            Icon(Icons.more_vert
            )
          ],
        ),
        body: ListView(
          children: [
          const  CircleAvatar(
              backgroundImage: AssetImage("Assets/SIM SWAP EASTERN REGION 20200716_165753.jpg"),
              radius: 75,
            ),
          const  SizedBox(height: 20,),
            
          const  Center(
              child: Text("Fosu Kelvin",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 18),),
            ),
            const Center(
              child: Text("Accra Ghana",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 18),),
            ),
           const SizedBox(height: 25,),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children:  [
                  ListTile(
                    title: Text('Mobile',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                    subtitle: Text('+233 57 023 5547'),
                    trailing:  Row(
                      mainAxisSize: MainAxisSize.min,
                    children: [
                        TextButton(onPressed: (){},  
                          child:const Icon(Icons.chat, color: Colors.black,),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder()
                          ),
                          ),
                          
                    const    SizedBox(width: 10,),
                       TextButton(onPressed: (){},  
                          child:const Icon(Icons.phone, color: Colors.black,),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder()
                          ),
                          ), 
                      ],
                    ),
                  ),
                  ListTile(
                    title:const Text('Email',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                    subtitle:const Text('+233 57 023 5547'),
                    trailing:  Row(
                      mainAxisSize: MainAxisSize.min,
                    children: [
                        TextButton(onPressed: (){},  
                          child:const Icon(Icons.chat, color: Colors.black,),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder()
                          ),
                          ),
                          
                    const    SizedBox(width: 10,),
                       TextButton(onPressed: (){},  
                          child:const Icon(Icons.phone, color: Colors.black,),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder()
                          ),
                          ), 
                      ],
                    ),
                  ),
                  
               const   ListTile(
                    title:Text('Group',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                    subtitle: Text('+233 57 023 5547'),
               )],
              )
          
                ),
                 const Padding(
                  padding:  EdgeInsets.all(16.0),
                  child: Text('Account Linked',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17),
                  ),
                ),
                Container(
                  color: const Color(0xff9AADBE),
                  child: Column(
                    children:  [
                      ListTile(
                        title: Text('Telegram',
                     style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17   ),
                      ),
                      trailing: Image.asset('assets/telegram-logo.png'),
                       ),
                       ListTile(
                        title: Text('WhatsApp',
                     style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17   ),
                      ),
                      trailing: Image.asset('assets/WhatsApp-Logo.png'),
                       )  ],
                       
                          
                  ),
                ),
                  const Padding(
                  padding:  EdgeInsets.all(16.0),
                  child: Text('More Options',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17),
                  ),
             ) ,
              Container(color: const Color(0xff9AADBE),
              child: Column(children: const[
                 ListTile(title: Text('Share Contact',
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                 ),
                 ),
                  ListTile(title: Text('QR Code',
                 style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                 ),
                 ),
              ],),)
             ],
             
            ),
          
            
     ); 
        
      
      
    
  }
}