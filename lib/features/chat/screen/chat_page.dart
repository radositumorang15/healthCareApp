import 'package:flutter/material.dart';
import '../../navigation/layout_navbar.dart';
import '../../models/chatmodel.dart';
import 'package:faker/faker.dart' hide Image, Color;

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final List<ChatModel> chatList = List.generate(
    20,
    (index) => ChatModel(
      name: faker.person.name(),
      chatMessage: faker.lorem.sentence(),
      imageURL: 'https://picsum.photos/id/$index/200',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF1EB),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color(0xFFECF1EB),
          centerTitle: true,
          title: Text('Chat List', style: TextStyle(fontSize: 20)),
          leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: Material(
              color: Colors.transparent,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF9FCF8),
                radius: 28,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF9FCF8),
                radius: 24,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  icon: Icon(Icons.more_horiz, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 2),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Search by doctors name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          suffixIcon: Icon(Icons.search, color: Colors.grey),
                        ),
                        onSubmitted: (value) {},
                      ),
                    ),
                    SizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor: const Color(0xFFF9FCF8),
                        radius: 28,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_list,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 2),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.25),
                      borderRadius: BorderRadius.circular(0),
                      border: Border(
                        top: BorderSide(
                          color: Colors.white.withValues(alpha: 0.6),
                          width: 1.5,
                        ),
                        bottom: BorderSide(
                          color: Colors.white.withValues(alpha: 0.1),
                          width: 0.5,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.03),
                          blurRadius: 8,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            chatList[index].imageURL,
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chatList[index].name
                                    .trim()
                                    .split(' ')
                                    .take(2)
                                    .join(' '),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                chatList[index].chatMessage
                                    .trim()
                                    .split(' ')
                                    .take(2)
                                    .join(' '),
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '12:00 PM',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: LayoutNavbar(
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/chat');
              break;
            case 2:
              // Navigator.pushReplacementNamed(context, '/add');
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/schedule');
              break;
            case 4:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
