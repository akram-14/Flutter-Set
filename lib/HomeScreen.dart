import 'package:flutter/material.dart';
import 'package:flutter_set/BMICalculator.dart';
import 'package:flutter_set/ListViewWidget.dart';
import 'package:flutter_set/NavigationBarExample.dart';
import 'package:flutter_set/ToastExample.dart';
import 'package:flutter_set/TodoListWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter Set App'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationBarExample()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(35),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 4
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [ BoxShadow(
                        color: Colors.green,
                        offset: Offset(6.0, 6.0),
                      ),
                      ],
                    ),
                    child: const Text('Basic widget App',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const BMICalculator()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(35),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 4
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [ BoxShadow(
                        color: Colors.green,
                        offset: Offset(6.0, 6.0),
                      ),
                      ],
                    ),
                    child: const Text('BMI Calculator',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                  ),
                ),
                GestureDetector(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const TodoListWidget()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(35),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 4
                      ),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [ BoxShadow(
                        color: Colors.green,
                        offset: Offset(6.0, 6.0),
                      ),
                      ],
                    ),
                    child: const Text('Todolist App',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(35),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 4
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [ BoxShadow(
                      color: Colors.green,
                      offset: Offset(6.0, 6.0),
                    ),
                    ],
                  ),
                  child: const Text('world Timer App',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                ),
                Container(
                  padding: const EdgeInsets.all(35),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 4
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [ BoxShadow(
                      color: Colors.green,
                      offset: Offset(6.0, 6.0),
                    ),
                    ],
                  ),
                  child: const Text('Chat App',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                ),
              ],
            ),

          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: const <Widget> [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Akram Abbas',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.yellow
                ),
              ),
              accountEmail: Text('allawndy9@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 18.0,
                backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQEZlV5ZvKnneQ/profile-displayphoto-shrink_200_200/0/1623340576531?e=1669248000&v=beta&t=x8hyqjv84Ew7hdwBe4mnw2FAxyKjCdK7GE7ZFk-NTOQ'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C4D03AQEZlV5ZvKnneQ/profile-displayphoto-shrink_200_200/0/1623340576531?e=1669248000&v=beta&t=x8hyqjv84Ew7hdwBe4mnw2FAxyKjCdK7GE7ZFk-NTOQ'),
                ),
              ],
            ),
            ListTile(
              title: Text('send'),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),
            Divider(thickness: 1,),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Update'),
              leading: Icon(Icons.update),
            ),
            ListTile(
              title: Text('Community'),
              leading: Icon(Icons.people),
            ),
            Divider(thickness: 1,),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
