import 'package:flutter/material.dart';
import 'package:telegram/screens/chat.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> chatData = [
    {
      'name': 'Alice',
      'unreadMessages': 0,
      'lastSeen': '2:33 PM',
      'lastRead': 'Hey, are you coming to the party?',
    },
    {
      'name': 'Grace',
      'unreadMessages': 8,
      'lastSeen': '1:50 PM',
      'lastRead': 'Can you pick up the kids today?',
    },
    {
      'name': 'Leo',
      'unreadMessages': 0,
      'lastSeen': '1:01 PM',
      'lastRead': 'Are we still on for dinner?',
    },
    {
      'name': 'Karen',
      'unreadMessages': 10,
      'lastSeen': '9:48 PM',
      'lastRead': 'Happy Birthday! 🎉',
    },
    {
      'name': 'Rosy',
      'unreadMessages': 9,
      'lastSeen': '2:33 PM',
      'lastRead': 'Hey, are you coming to the party?',
    },
    {
      'name': 'Binoy',
      'unreadMessages': 8,
      'lastSeen': '5:50 PM',
      'lastRead': 'Can you pick up the kids today?',
    },
    {
      'name': 'Jobin',
      'unreadMessages': 0,
      'lastSeen': '1:01 PM',
      'lastRead': 'Are we still on for dinner?',
    },
    {
      'name': 'Richard',
      'unreadMessages': 10,
      'lastSeen': '9:48 PM',
      'lastRead': 'Happy Birthday! 🎉',
    },
    {
      'name': 'Alice',
      'unreadMessages': 0,
      'lastSeen': '2:33 PM',
      'lastRead': 'Hey, are you coming to the party?',
    },
    {
      'name': 'Grace',
      'unreadMessages': 8,
      'lastSeen': '1:50 PM',
      'lastRead': 'Can you pick up the kids today?',
    },
    {
      'name': 'Leo',
      'unreadMessages': 0,
      'lastSeen': '1:01 PM',
      'lastRead': 'Are we still on for dinner?',
    },
    {
      'name': 'Karen',
      'unreadMessages': 10,
      'lastSeen': '9:48 PM',
      'lastRead': 'Happy Birthday! 🎉',
    },
    {
      'name': 'Rosy',
      'unreadMessages': 9,
      'lastSeen': '2:33 PM',
      'lastRead': 'Hey, are you coming to the party?',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1d2733),
      appBar: AppBar(
        backgroundColor: const Color(0xff252d3a),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text('Telegram', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
// Handle search action
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff1c242f),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff233040),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/3.jpg'),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Michael',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '+1234567890',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Icon(Icons.keyboard_arrow_down, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('My Profile', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Icon(Icons.group, color: Colors.white),
              title: Text('New Group',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contacts, color: Colors.white),
              title: Text('Contacts',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.call, color: Colors.white),
              title: Text('Calls',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.white),
              title: Text('People Nearby',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.bookmark, color: Colors.white),
              title: Text('Saved Messages',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Icon(Icons.person_add, color: Colors.white),
              title: Text('Invite Friends',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white),
              title: Text('Telegram Features',
                style: TextStyle(
                  color: Colors.white,


                ),),
              onTap: () {},
            ),
// Add other ListTiles
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          final chat = chatData[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: _getAvatarColor(chat['name']),
              child: Text(
                chat['name'][0], // Display the first letter of the name
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              chat['name'],
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              chat['lastRead'],
              style: const TextStyle(color: Color(0xff85adc7)),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  chat['lastSeen'],
                  style: const TextStyle(color: Colors.white70),
                ),
                if (chat['unreadMessages'] > 0)
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: const BoxDecoration(
                      color: Color(0xff415065),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${chat['unreadMessages']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    name: chat['name'],
                  ),
                ),
              );
            },
          );
        },

      ),
    );
  }

  Color _getAvatarColor(String name) {
    final int charCode = name.codeUnitAt(0); // Get the ASCII code of the first letter
    return Color((0xFF000000 + charCode * 12345678) % 0xFFFFFFFF); // Generate color based on charCode
  }
}
