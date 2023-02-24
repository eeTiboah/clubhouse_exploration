import 'package:flutter/material.dart';
import 'screen_users.dart';

class Happening extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> imgPaths;
  final String numOfPersons;
  final String numOfPersonsSpeaking;
  const Happening(
      {required this.title,
      required this.subtitle,
      required this.imgPaths,
      required this.numOfPersons,
      required this.numOfPersonsSpeaking,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              subtitle,
              softWrap: true,
              style: const TextStyle(fontSize: 17.0),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                width: 150.0,
                child: Row(
                  children: imgPaths.map((path) {
                    return Row(
                      children: [
                        Image.asset(path),
                        const SizedBox(
                          width: 10.0,
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.person),
                      Text(numOfPersons),
                      const Icon(Icons.mic),
                      Text(numOfPersonsSpeaking),
                    ],
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

// [
//               Image.asset('assets/first.png'),
//               const SizedBox(
//                 width: 15.0,
//               ),
//               Image.asset('assets/first.p')
//             ]
