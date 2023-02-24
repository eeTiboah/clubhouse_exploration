import 'package:clubhouse_exploration/components/happening.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final filters = [
    filter(const Color(0xffDDD3FB), const Icon(Icons.design_services)),
    filter(const Color(0xffF6C9D5), const Icon(Icons.gamepad)),
    filter(const Color(0xffCC571C), const Icon(Icons.sports_basketball)),
    filter(const Color(0xffF6C9D5), const Icon(Icons.design_services)),
    filter(const Color(0xffDDD3FB), const Icon(Icons.games)),
    filter(const Color(0xffCC571C), const Icon(Icons.feed)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        'Good Morning,\nBernice',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Image.asset("assets/small.png")
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 50.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: filters.length,
                    itemBuilder: (context, index) => filters[index],
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  'Upcoming',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        color: Color(0xff5D5FEF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const VerticalDivider(
                                  indent: 10.0,
                                  endIndent: 10.0,
                                  thickness: 3.0,
                                  color: Color(0xffF7936F),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '10:00 - 20:00',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'Design talks and chill',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 12.0,
                      right: 120.0,
                      child: Text(
                        '✌🏽',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  'Happening now',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Happening(
                  title: 'STARTUP CLUB',
                  subtitle:
                      'Pitch your startup idea to VCs & top Entrepreneurs',
                  imgPaths: [
                    'assets/first.png',
                    'assets/second.png',
                    'assets/third.png'
                  ],
                  numOfPersons: '354',
                  numOfPersonsSpeaking: '7',
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Happening(
                  title: 'DATING GAME + SHOOT SHOT',
                  subtitle:
                      'Pitch your startup idea to VCs & top Entrepreneurs',
                  imgPaths: [
                    'assets/fourth.png',
                    'assets/fifth.png',
                    'assets/third.png'
                  ],
                  numOfPersons: '754',
                  numOfPersonsSpeaking: '9',
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bottomNavigationIcon(Icons.calendar_month),
                      bottomNavigationButton(Icons.add, () {}),
                      bottomNavigationIcon(Icons.person)
                    ]),
              ),
            )),
      ),
    );
  }
}

Widget filter(Color color, Icon icon) {
  return Chip(
      avatar: icon, backgroundColor: color, label: const Text('Design'));
}

Widget bottomNavigationButton(IconData icon, Function() onPressed) {
  return MaterialButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    onPressed: onPressed,
    color: const Color(0xff5D5FEF),
    child: Row(children: [
      Stack(
        children: [
          Container(
            height: 20.0,
            width: 20.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
          ),
          Positioned(
            top: 1.5,
            right: 2.5,
            child: Icon(
              icon,
              weight: 200.0,
              size: 15.0,
              color: const Color(0xff5D5FEF),
            ),
          )
        ],
      ),
      const SizedBox(
        width: 15.0,
      ),
      const Text(
        'Start Room',
        style: TextStyle(color: Colors.white),
      )
    ]),
  );
}

Widget bottomNavigationIcon(IconData icon) {
  return Stack(
    children: [
      Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: const Color(0xffF7F7FC),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      Positioned(
        top: 2.0,
        left: 2.5,
        child: Icon(icon),
      ),
    ],
  );
}
