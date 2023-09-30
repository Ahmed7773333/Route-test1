import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  Image.asset('assets/flower.png'),
                  Text(
                    'AliceCare',
                    style: GoogleFonts.milonga(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                prefixIcon: Icon(Icons.search),
                hintText: 'Articles, Video, Audio and More,...',
                hintStyle: TextStyle(
                  color: Color(0xFF667084),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ChipsChoice<String>.single(
              value: null,
              onChanged: (val) {
                print(val);
              },
              choiceItems: C2Choice.listFrom<String, String>(
                source: const <String>[
                  'Discover',
                  'News',
                  'Most Viewed',
                  'Saved'
                ],
                value: (i, v) => v,
                label: (i, v) => v,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text('Hot topics',
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
                            color: Color(0xFF5925DC),
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
            SizedBox(
              height: 165,
              width: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 326,
                    height: 160,
                    padding: const EdgeInsets.only(top: 57),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/frame1.png')),
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.black.withOpacity(0), Colors.black],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    width: 326,
                    height: 160,
                    padding: const EdgeInsets.only(top: 57),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/frame2.png')),
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.black.withOpacity(0), Colors.black],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 326,
              child: Text(
                'Get Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Doctor(),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text('Cycle Phases and Period',
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
                            color: Color(0xFF5925DC),
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
          ],
        ),
      ),
    );
  }
}

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: 220,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFFF2F3F6),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE4E6EB)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 110.69,
            height: 168.14,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/doctor.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 169,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 95,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Connect with doctors & get suggestions',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Connect now and get expert insights ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF7E56D8),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF7E56D8)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x0C101828),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'View detail',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
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
          ),
        ],
      ),
    );
  }
}
