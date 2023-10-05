import 'package:chat_app/Screens/loginscreen.dart';
import 'package:chat_app/model/datauser.dart';
import 'package:chat_app/widget/usercard.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
             // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_rounded),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>LoginScreen(),
                    ));

                  },
                  color: Colors.blueAccent,
                ),
                Text(
                  "Conversations",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.centerRight,

                  child: Container(
                    margin: EdgeInsets.only(left: 155),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink[50],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
            ),
            Container(
                //margin: EdgeInsets.all(10),

                child: Expanded(
              child: SizedBox(
                height: 380,
                child: ListView.builder(
                    itemCount: ChatData.length,
                    itemBuilder: (context, index) {
                      return UserCard(
                          ChatData[index].image,
                          ChatData[index].name,
                          ChatData[index].status,
                          ChatData[index].time);
                    }),
              ),
            ))
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
