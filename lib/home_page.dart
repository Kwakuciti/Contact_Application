import 'dart:js';

import 'package:grouped_list/grouped_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'contact_view.dart/contact_view.dart';

import 'contact_model.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  final List<Map<String,String>> data =[
    {
      'name':'Mattew Agyei',
      'phone':'+233 525 234 432',
      'email':'mattewagyei@gmail.com',
      'country':'Ghana',
      'region':'Koforidua',
    
    },
    {
      'name':'John Oti ',
      'phone':'+233 245 234 432',
      'email':'johnoti@gmail.com',
      'country':'Ghana',
      'region':'Koforidua',
    
    },
    {
      'name':'Ernest Obi ',
      'phone':'+233 275 300 432',
      'email':'ernestobi@gmail.com',
      'country':'Ghana',
      'region':'Koforidua',
    
    },{
      'name':'Mike Oben ',
      'phone':'+233 555 234 432',
      'email':'mikeoben@gmail.com',
      'country':'Ghana',
      'region':'Koforidua',
    
    },{
      'name':'Ruth Minta ',
      'phone':'+233 233 234 492',
      'email':'ruthmintah@gmail.com',
      'country':'Ghana',
      'region':'Koforidua',
    
    },{
      'name':'joyce Anim ',
      'phone':'+233 555 234 432',
      'email':'joyceanim@gmail.com',
      'country':'Ghana',
      'region':'Koforidua',
    
    },{
      'name':'Regan ',
      'phone':'+233 325 234 432',
      'email':'kwekuciti@gmail.com',
      'country':'Ghana',
      'region':'Koforidua',
    
    },
    ];

    
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
                        return  ContactView(contact: Contact(
                          name: "Bright Software",
                          phone: "+233 254 023 555",
                          email: "brightsoftware.@gmail.com",
                          country: "China",
                          region: "Nungua"
                        ),);
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
            GroupedListView <Map<String,String>,String>
            (
              shrinkWrap: true,
              elements: data, 
            groupBy: (element) => element ['name'].toString().substring(0,1),
            groupSeparatorBuilder: (String groupByValue)=> SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  groupByValue,
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize:18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            itemBuilder: (context, Map<String,String> element){
              Contact contact = Contact.fromJson(element);
              return Column(children: [
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return ContactView(contact: contact,);
                  }));},

                  leading: CircleAvatar(
                    backgroundImage: AssetImage('Assets/SIM SWAP EASTERN REGION 20200716_165753.jpg')),
                  title: Text('${element['name']}'),
                  subtitle: Text('${element['phone']}')
        ),
      

              ],);
            }
              

              ),
            
            
          ],
        )),
         floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,size: 30,),
        onPressed: () {},
        backgroundColor: Colors.black,
      )
      );
      
        

  }
}
