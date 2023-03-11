import 'package:flutter/material.dart';
import 'package:whatsupp_ui/communities_Tab.dart';
import 'package:whatsupp_ui/status_Tab.dart';
import 'package:whatsupp_ui/verification_text_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String datetime = TimeOfDay.now().toString();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(Icons.camera_alt),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              // color: Colors.grey.shade400,
              itemBuilder: ((context) => const [
                    PopupMenuItem(value: 1, child: Text('New Group')),
                    PopupMenuItem(value: 2, child: Text('New broadcast')),
                    PopupMenuItem(value: 3, child: Text('LogOut')),
                    PopupMenuItem(value: 4, child: Text('Verification'))
                  ]),
            )
          ],
          title: const Text('WhatsApp'),
          bottom: const TabBar(
              // labelColor: Colors.black,
              // unselectedLabelColor: Colors.amber,
              indicatorWeight: 8.0,
              indicatorColor: Colors.green,
              // indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Icon(Icons.people),
                ),
                Tab(
                  child: Text('CHATS'),
                ),
                Tab(
                  child: Text('STATUS'),
                ),
                Tab(
                  child: Text('CALLS'),
                )
              ]),
        ),
        body: TabBarView(children: [
          // People Tab
          const Communities(),
          // Chats Tab
          ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  ),
                  title: const Text('Fareed'),
                  subtitle: const Text('last message'),
                  trailing: Column(
                    children: const [
                      Text('11 :51 PM', style: TextStyle(fontSize: 12.0)),
                      CircleAvatar(
                        radius: 12.0,
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                );
              })),
          // Status Tab
          const StatusTab(),

          const Text('data')
        ]),
      ),
    );
  }
}
