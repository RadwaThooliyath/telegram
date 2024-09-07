import 'package:flutter/material.dart';
import 'package:telegram/screens/home.dart';

class ChatScreen extends StatefulWidget {
  final String name;

  const ChatScreen({super.key, required this.name});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252d3a),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/tel.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              AppBar(
                title: Row(
                  children: [
                    // You can remove the profile image if it's not passed
                    // CircleAvatar can be kept if needed to display some placeholder or initials
                    CircleAvatar(
                      child: Text(
                        widget.name[0], // First letter of the name
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.grey, // Placeholder color
                    ),
                    const SizedBox(width: 10),
                    Text(widget.name, style: const TextStyle(color: Colors.white)),
                  ],
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                  },
                ),
                backgroundColor: const Color(0xff252d3a),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {
                      // Handle search action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => _buildBottomSheet(context),
                      );
                    },
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    bool isSent = index % 2 == 0;
                    return Align(
                      alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: isSent ? const Color(0xff1a73e8) : const Color(0xff333a47),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          index % 2 == 0 ? 'Hello there!' : 'How are you?',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.attach_file, color: Colors.white),
                      onPressed: () {
                        // Handle file attachment
                      },
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          hintText: 'Type a message...',
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: const Color(0xff333a47),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.send, color: Colors.blue),
                      onPressed: () {
                        // Handle send action
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.info, color: Colors.black),
          title: const Text('View Contact'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.phone, color: Colors.black),
          title: const Text('Voice Call'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.video_call, color: Colors.black),
          title: const Text('Video Call'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.delete, color: Colors.red),
          title: const Text('Delete Chat'),
          onTap: () {},
        ),
      ],
    );
  }
}
