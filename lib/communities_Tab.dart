import 'package:flutter/material.dart';
import 'package:whatsupp_ui/verification_text_field.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Introducing Communities',
            style: TextStyle(fontSize: 25.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Easily organize your related groups and send \n announcements. Now, your communities, like\n neighborhoods or schools, can have their own space',
            style: TextStyle(fontSize: 15.0),
          ),
          const SizedBox(
            height: 40.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VerificationScreen()));
            },
            child: Container(
              height: 40.0,
              width: 300.0,
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(5.0)),
              alignment: Alignment.center,
              child: const Text('START YOUR COMMUNITY'),
            ),
          )
        ],
      )),
    );
  }
}
