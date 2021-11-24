
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'contact_view.dart/contact_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 9, 15, 0),
            child: CircleAvatar(
              backgroundImage: AssetImage('Assets/SIM SWAP EASTERN REGION 20200716_165753.jpg'),
              radius: 25,
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search by name or number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            )),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Recents',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(BuildContext context){
                        return const ContactView();
                      })
                      );

                  },
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('Assets/SIM SWAP EASTERN REGION 20200716_165753.jpg'),
                  ),
                  title:const Text( 
                    'Bright Software',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  subtitle:const Text('+233 577 187 804'),
                  trailing:const Icon(
                    Icons.more_horiz,
                    size: 28,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "contacts",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "A",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                        return const ContactView();
                      }));
                    },
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('Assets/SIM SWAP EASTERN REGION 20200716_165753.jpg'),
                    ),
                    title:const Text(
                      'Bright Software',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    subtitle:const Text('+233 577 187 804'),
                    trailing:const Icon(
                      Icons.more_horiz,
                      size: 28,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: 2
                ),
                 const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "B",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/SIM SWAP EASTERN REGION 20200716_165753.jpg"),
                    ),
                    title: Text(
                      'Bright Software',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text('+233 577 187 804'),
                    trailing: Icon(
                      Icons.more_horiz,
                      size: 28,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: 2)
          ],
        ),
        ),
         floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,size: 30,),
        onPressed: () {},
        backgroundColor: Colors.black,
      )
      );
      
        
    
  }
}
