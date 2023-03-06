import 'package:flutter/material.dart';

class StatusTab extends StatefulWidget {
  const StatusTab({super.key});

  @override
  State<StatusTab> createState() => _StatusTabState();
}

class _StatusTabState extends State<StatusTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // elevation: 10.0,
            onPressed: () {},
            child: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: ((context, index) {
            if (index == 0) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      ),
                    ),
                    title: const Text('My Status'),
                    subtitle: const Text('Yesterday 9:41 PM'),
                    trailing: const Icon(Icons.read_more),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 14.0, top: 5.0, bottom: 5.0),
                    child: Text(
                      'Recent updates',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              );
            } else {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2)),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/6652959/pexels-photo-6652959.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  ),
                ),
                title: const Text('Fareed'),
                subtitle: const Text('10:25 AM'),
                // trailing: const Icon(Icons.read_more),
              );
            }
          })),
          
    );
  }
}
