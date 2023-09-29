import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(36),
      child: SingleChildScrollView(
        child: StatefulBuilder(builder: (context, setState) {
          return Column(
            children: [
              Row(children: [
                Image.asset(
                  'assets/logo.png',
                  height: 40,
                  width: 40,
                ),
                Text('Mody', style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(
                  flex: 3,
                ),
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
              ]),
              const SizedBox(
                height: 24,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello, ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                        text: 'Sara Rose',
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'How are you feeling today ?',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  CustomEmoji(
                    data: 'Love',
                    image: 'assets/love.png',
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomEmoji(
                    data: 'Cool',
                    image: 'assets/thug.png',
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomEmoji(
                    data: 'Happy',
                    image: 'assets/happy.png',
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomEmoji(
                    data: 'Sad',
                    image: 'assets/sad.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text('Feature',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const Spacer(
                    flex: 4,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'See more',
                            style: TextStyle(
                              color: Color(0xFF027947),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.10,
                            ),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      )),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 530,
                height: 150,
                padding: const EdgeInsets.all(24),
                decoration: ShapeDecoration(
                  color: const Color(0xFFEBFDF2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Positive vibes',
                          style: TextStyle(
                            color: Color(0xFF344053),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'Boost your mood with positive vibes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/play.png'),
                            ),
                            const Text(
                              '10 mins',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/dog.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text('Exercise',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const Spacer(
                    flex: 4,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'See more',
                            style: TextStyle(
                              color: Color(0xFF027947),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.arrow_right),
                        ],
                      )),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      CustomIconText(
                        data: 'Relaxation',
                        image: 'assets/head.png',
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      CustomIconText(
                        data: 'Meditation',
                        image: 'assets/yoge.png',
                      ),
                      const Spacer(),
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      CustomIconText(
                        data: 'Breathing',
                        image: 'assets/breath.png',
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      CustomIconText(
                        data: 'Yoga',
                        image: 'assets/blueMan.png',
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              )
            ],
          );
        }),
      ),
    ));
  }
}

class CustomEmoji extends StatelessWidget {
  String image;
  String data;

  CustomEmoji({required this.data, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFE4E6EB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10000),
            ),
          ),
          child: Container(
            width: 40,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x0F101828),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
        ),
        Text(
          data,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class CustomIconText extends StatelessWidget {
  String image;
  String data;

  CustomIconText({required this.data, required this.image, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xFFF9F5FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Positioned(
                  left: 1.94,
                  top: 0,
                  child: SizedBox(
                      width: 20.13, height: 24, child: Image.asset(image)),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              child: Text(
                data,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
