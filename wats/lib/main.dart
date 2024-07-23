import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 7,
          title: Text(
            'wootsapp',
            style: TextStyle(color: Colors.green),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.green,
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(
          children: [
            ChatList(),
            Positioned(
              bottom: 10,
              right: 19,
              child: Container(
                width: 40, // Adjust the width as needed
                height: 40, // Adjust the height as needed
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add, color: Colors.green),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 243, 242, 242),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.qr_code_scanner),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {},
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/me.jpg'),
                  radius: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Hazem',
      'message': 'What kind of strategy is better?',
      'time': '07:45',
      'avatar': 'images/Hazem.jpg',
      'isRead': true,
      'isOnline': true,
    },
    {
      'name': 'Abdel-Rahman Reda',
      'message': 'Voice message',
      'time': 'Monday',
      'avatar': 'images/reda.jpg',
      'isRead': false,
      'isOnline': false,
    },
    {
      'name': '7afad',
      'message': 'Bro, I have a good idea!',
      'time': 'Sunday',
      'avatar': 'images/hafad.jpg',
      'isRead': true,
      'isOnline': true,
    },
    {
      'name': 'Jooo',
      'message': 'Photo',
      'time': '10.06.20',
      'avatar': 'images/jooo.jpg',
      'isRead': false,
      'isOnline': false,
    },
    {
      'name': 'Adhoom',
      'message': 'Actually I wanted to check with you about your online business plan on our...',
      'time': '08.05.20',
      'avatar': 'images/Adham.jpg',
      'isRead': false,
      'isOnline': true,
    },
    {
      'name': 'Flutter',
      'message': 'You: Welcome, to make design process faster. Look at pixelsiz',
      'time': '12.05.20',
      'avatar': 'images/task.jpg',
      'isRead': true,
      'isOnline': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              contentPadding: EdgeInsets.all(8),
              fillColor: Colors.grey[200],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('EDIT'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('BROADCAST'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('STARS'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(chats[index]['avatar']!),
                        ),
                        if (chats[index]['isOnline'])
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    title: Text(chats[index]['name']!),
                    subtitle: Row(
                      children: [
                        if (chats[index]['isRead'])
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(Icons.check, color: Colors.blue, size: 16),
                              Positioned(
                                left: 4,
                                child: Icon(Icons.check, color: Colors.blue, size: 16),
                              ),
                            ],
                          ),
                        SizedBox(width: 5),
                        if (chats[index]['message'] == 'Voice message')
                          Icon(Icons.mic, size: 18),
                        if (chats[index]['message'] == 'Photo')
                          Icon(Icons.camera_alt, size: 18),
                        SizedBox(width: 5),
                        Expanded(child: Text(chats[index]['message']!)),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(chats[index]['time']!),
                        if (index == 4)
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
