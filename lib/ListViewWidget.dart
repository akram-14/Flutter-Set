import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
   const ListViewWidget({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('ListViewWidgetApp'),
       ),
       body: ListView(
         children: const [
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),
           ListTile(
             leading: Icon(Icons.map),
             title: Text('Map',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.red,
               ),),

           ),
           Divider(thickness: 2,),


         ],
       ),
     );
   }
 }

