import 'package:app/widget/baner_home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;
  final urlImgs = [
    'http://shopeeplus.com//upload/images/cach-tao-banner-xoay-vong.png',
    'https://wowslider.com/sliders/demo-10/data/images/autumn_leaves.jpg',
    'https://jssors8.azureedge.net/demos/img/gallery/980x380/043.jpg',
    'https://jssors8.azureedge.net/demos/img/gallery/980x380/043.jpg',
    'https://image.shutterstock.com/image-photo/business-success-alarm-clock-on-260nw-378445897.jpg',
    'https://lystravel.com.vn/wp-content/uploads/2016/02/slide-banner-chinh-tour-dna.jpg'
  ];
  final List _post1 = [
    'Phản ánh nông thôn',
    'Dịch vụ công trực truyến',
    'Dịch vụ thiệt yếu',
    'Dịch vụ nông nghiệp',
    'Di chuyển/Vận tải',
  ];
  final List _post2 = [
    'Đại sứ Việt Nam tại LHQ Đặng Hoàng Giang cho rằng ưu tiên hàng đầu hiện nay là chấm dứt xung đột và khôi phục hòa bình ở Ukraine.',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
  ];
  final List _post3 = [
    'Trò chơi',
    'Xổ số Vietlot',
    'Lazada',
    'Tiki',
    'Lazada',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, int index) {
          if (index == 0) return BannerWidger();
          return Column(
            children: [
              Visibility(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 29),
                      child: Text(
                        "Dịch vụ nông thôn",
                        style: TextStyle(
                          fontSize: 20.0,
                          // fontWeight: FontWeight.w100,
                          // fontFamily: "",
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _post1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 37, top: 15, bottom: 20),
                            child: Stack(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: 31,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/chat1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Container(
                                    width: 70,
                                    child: Text('${_post1[index]}'),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                  child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        // height: 200,
                        child: CarouselSlider.builder(
                          itemCount: urlImgs.length,
                          //     items: [
                          //   Container(
                          //     decoration: BoxDecoration(
                          //         image: DecorationImage(
                          //             image: AssetImage('assets/tophome.png'),
                          //             fit: BoxFit.cover),
                          //         borderRadius: BorderRadius.circular(20.0)),
                          //   )
                          // ],
                          options: CarouselOptions(
                            height: 150,
                            viewportFraction: 1,
                            aspectRatio: 2.0,
                            // initialPage: 0,
                            // autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) =>
                                setState(() => pageIndex = index),
                          ),
                          itemBuilder: (context, index, realIndex) {
                            final urlImg = urlImgs[index];
                            return builImage(urlImg, index);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 135, left: 140),
                        child: Container(
                          child: buildIndicator(),
                        ),
                      )
                    ],
                  )
                ],
              )),
              Visibility(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 29.0, right: 16.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tin tức nổi bật",
                            style: TextStyle(
                              fontSize: 20.0,
                              // fontWeight: FontWeight.w100,
                              // fontFamily: "",
                            ),
                          ),
                          Text(
                            "Xem tất cả >>",
                            style:
                                TextStyle(fontSize: 13.0, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 350,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 125,
                                            height: 113,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image:
                                                    AssetImage('assets/vd.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 200,
                                                child: Text('${_post2[index]}'),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.access_time),
                                                  Container(
                                                    width: 200,
                                                    child: Text('1 giờ trước'),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ));
                          },
                        ))
                  ],
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Visibility(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 29.0, right: 16.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Khám phá",
                            style: TextStyle(
                              fontSize: 20.0,
                              // fontWeight: FontWeight.w100,
                              // fontFamily: "",
                            ),
                          ),
                          Text(
                            "Xem tất cả >>",
                            style:
                                TextStyle(fontSize: 13.0, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      children: [
                        Container(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 22, right: 12),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 47,
                                          width: 47,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/game.png'),
                                                fit: BoxFit.cover,
                                              ),
                                              shape: BoxShape.circle),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 50, left: 10),
                                          child: Container(
                                            width: 50,
                                            child: Text('${_post3[index]}'),
                                          ),
                                        ),
                                      ],
                                    ));
                              },
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget builImage(String urlImg, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.yellow,
            image: DecorationImage(
              image: NetworkImage(urlImg),
              fit: BoxFit.cover,
            ),

            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: pageIndex,
        count: urlImgs.length,
        effect: SlideEffect(
            spacing: 8,
            radius: 1,
            dotWidth: 20,
            dotHeight: 5,
            activeDotColor: Colors.green,
            dotColor: Colors.white),
      );
}
