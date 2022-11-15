import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('assets/tophome.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    // color: Colors.yellow,
                    image: DecorationImage(
                      image: AssetImage('assets/tophome.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(40.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40.0)),
                    ),
                  ),
                )
                // Container(
                //   height: 200,

                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     // borderRadius: BorderRadius.circular(20.0),
                //   ),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //         bottomRight: Radius.circular(50.0),
                //       ),
                //       image: DecorationImage(
                //         image: AssetImage('assets/tophome.png'),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                //   // child: ClipPath(
                //   //     clipper: CustomClipPath(),
                //   //     child: Container(
                //   //       decoration: BoxDecoration(
                //   //         image: DecorationImage(
                //   //           image: AssetImage('assets/tophome.png'),
                //   //           fit: BoxFit.cover,
                //   //         ),
                //   //       ),
                //   //       height: 200,
                //   //     )),
                // ),
                // Positioned(
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //       top: 150,
                //     ),
                //     child: Container(
                //       height: 100,
                //       decoration: BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.only(
                //           topRight: Radius.circular(50.0),
                //           topLeft: Radius.circular(50.0),
                //           //bottomRight: Radius.circular(50.0)
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  // var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);

    var firsStartpoint =
        Offset(size.width / 4 - size.width / 8, size.height - 60);
    var firstEndpoint =
        Offset(size.width / 4 + size.width / 8, size.height - 70);
    path.quadraticBezierTo(firsStartpoint.dx, firsStartpoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);
    var secStartpoint = Offset(size.width, size.height - 70);
    var secEndpoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        secStartpoint.dx, secStartpoint.dy, secEndpoint.dx, secEndpoint.dy);
    var tStartpoint = Offset(3 * (size.width / 4) + 5, size.height - 50);
    var tEndpoint = Offset(size.width, size.height - 90);
    // path.quadraticBezierTo(
    //     tStartpoint.dx, tStartpoint.dy, tEndpoint.dx, tEndpoint.dy);

    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
