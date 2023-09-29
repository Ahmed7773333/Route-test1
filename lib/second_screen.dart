import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    int index = 0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(36),
        child: SingleChildScrollView(
          child: StatefulBuilder(builder: (context, setState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 56.42,
                      height: 56.42,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/girl.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Hello, Jade',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Ready to workout?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(flex: 3),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index++;
                        });
                      },
                      child: Badge(
                        label: Text('$index'),
                        child: const Icon(
                          Icons.notifications_outlined,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 27,
                ),
                Container(
                  width: 326,
                  height: 82,
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF8F8FB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      CustomTxtIcon(
                        data1: 'Heart Rate',
                        data2: '81BPM',
                        icon: Icons.favorite_outline,
                      ),
                      const Spacer(),
                      CustomTxtIcon(
                        data1: 'To-do',
                        data2: '32,5%',
                        icon: Icons.more_vert,
                      ),
                      const Spacer(),
                      CustomTxtIcon(
                        data1: 'Calo',
                        data2: 'Cal',
                        icon: Icons.fireplace,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 47,
                ),
                const Text(
                  'Workout Programs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  children: [
                    TabBar(
                      tabs: [
                        Text(
                          'All Type',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Full Body',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Upper',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Lower',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ],
                ),
                customcontainer(
                  image: 'assets/stretch1.png',
                ),
                customcontainer(
                  image: 'assets/stretch2.png',
                ),
              ],
            );
          }),
        ),
      )),
    );
  }
}

class CustomTxtIcon extends StatelessWidget {
  IconData icon;
  String data1;
  String data2;
  CustomTxtIcon(
      {super.key,
      required this.data1,
      required this.icon,
      required this.data2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 16,
            ),
            Text(
              data1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Text(
          data2,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class customcontainer extends StatelessWidget {
  String image;
  customcontainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFFF8F8FB),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFEAEBF5)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: ShapeDecoration(
              color: Color(0xFFFBFCFC),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFE4E6EB)),
                borderRadius: BorderRadius.circular(999),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '7 days',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: 146.96,
            height: 118.49,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 78,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 52,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Morning Yoga',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0.07,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Improve mental focus.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 16,
                          height: 16,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Image.asset(image)),
                      const SizedBox(width: 6),
                      SizedBox(
                        width: 198,
                        child: Text(
                          '30 mins',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
