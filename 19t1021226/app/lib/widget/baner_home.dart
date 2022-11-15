import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BannerWidger extends StatelessWidget {
  const BannerWidger({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 350,
              height: 225,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(30.0)),
                // color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/tophome.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // width: 400,
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage('assets/tophome.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(30.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(30.0)),
                ),
              ),
            ),
            Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 28,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //     image: AssetImage('assets/Vector.png')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // Text("Tài khoản"),
                            ],
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/Vector.png')),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 45,
                                ),
                                child: Text(
                                  "Tài khoản",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
