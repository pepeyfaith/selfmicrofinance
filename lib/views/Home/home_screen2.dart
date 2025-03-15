// ignore_for_file: non_constant_identifier_names, must_be_immutable
//flutter
import 'package:carousel_slider/carousel_slider.dart';
import 'package:credit_app/controllers/business_loan_controller.dart';
import 'package:credit_app/controllers/home_controller.dart';
import 'package:credit_app/controllers/home_loan_controller.dart';
import 'package:credit_app/controllers/loan_against_property_controller.dart';
import 'package:credit_app/controllers/personal_loan_controller.dart';
import 'package:credit_app/views/CibilScore/cibili_score_check_screen.dart';
import 'package:credit_app/views/EMICalculator/emi_calculator_screen.dart';
import 'package:credit_app/views/Notifications/notification_screen.dart';
import 'package:credit_app/widget/drawer_widget.dart';
import 'package:credit_app/widget/elevated_button_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
//controllers
import 'package:credit_app/utils/global.dart' as global;
import 'package:credit_app/views/BusinessLoan/choose_screen_blscreen.dart';
import 'package:credit_app/views/HomeLoan/choose_screen_hlscreen.dart';
import 'package:credit_app/views/LoanAgainstProperty/choose_screen_lapscreen.dart';
import 'package:credit_app/views/OtherLoan/other_loan_screen.dart';
import 'package:credit_app/views/OtherServices/other_service.dart';
import 'package:credit_app/views/PersonalLoan/personal_loan_basic_detail_entry_plscreen3.dart';
import 'package:credit_app/widget/appBarWidget.dart';
//models
import 'package:credit_app/widget/baseRoute.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//packages
import 'package:get/get.dart';

class HomeScreen2 extends BaseRoute {
  final HomeController homeController = Get.put(HomeController());
  late CarouselController carouselController;
  late int selectedimg;

  void BasicDetailEntryPLScreen({a, o}) {
    Get.to(() => BasicDetailEntryPLScreen(
          a: a,
          o: o,
        ));
  }

  void ChooseScreenBLScreen({a, o}) {
    Get.to(() => ChooseScreenBLScreen(
          a: a,
          o: o,
        ));
  }

  void chooseScreenLAPScreen({a, o}) {
    Get.to(() => chooseScreenLAPScreen(
          a: a,
          o: o,
        ));
  }

  void OtherLoanScreen({a, o}) {
    Get.to(() => OtherLoanScreen(
          a: a,
          o: o,
        ));
  }

  void OtherServicesScreen({a, o}) {
    Get.to(() => OtherServicesScreen(
          a: a,
          o: o,
        ));
  }

  void chooseScreenHLScreen({a, o}) {
    Get.to(() => chooseScreenHLScreen(
          a: a,
          o: o,
        ));
  }

  List<Color> colors = [
    Color(0xFFFE2161),
    Color(0xFF58C0FC),
    Color(0xffc006fd), //0xFF2DD0C3
    Color(0xFF7853FF),
    Color(0xFFFFBC00),
    Color(0xFF98EA55),
    Color(0xFFFE2161),
    Color(0xFFFF3401),
    Color(0xFF2DD0C3),
  ];
  List<String> loanNames = [
    'Kilimo Loan',
    'Biashara Loan',
    'Imarika Loan',
    'Mkulima loan',
    'Kopa Ada loan',
    'Mshahara Loan',
    'Pamoja Loan',
    'Hati Malipo Loan',
    'Makazi Loan',
    'Other Services'
  ];
  List<String> iconList = [
    'assets/bank.svg',
    'assets/businessman-and-dollar-coin-svgrepo-com.svg',
    'assets/business-svgrepo-com.svg',
    'assets/card.svg',
    'assets/businessman-and-dollar-coin-svgrepo-com.svg',
    'assets/bank.svg',
    'assets/Group 650.svg',
    'assets/Group 650.svg',
    'assets/otherloan.svg',
    'assets/otherloanservice.svg'
  ];
  List<String> titleList = [
    'Makaz Loan',
    'Hati Malipo Loan',
    'Mtaji Loan',
    'Loan against property',
    'Other Loan',
    'Other Services'
  ];
  List<String> subTitle = [
    'Get up to ${global.currencySymbol}75 lac for 72 months EMI',
    'Get up to ${global.currencySymbol}20 lac for 72 months EMI',
    'Get up to ${global.currencySymbol}20 lac for 72 months EMI',
    'Get up to ${global.currencySymbol}20 lac for 72 months EMI',
    'Get up to ${global.currencySymbol}20 lac for 72 months EMI',
    'Get up to ${global.currencySymbol}20 lac for 72 months EMI',
  ];

  List<String> promotionam_banners = [
    'assets/banner.jpg',
    'assets/banner1.jpg',
    'assets/banner1.jpg',
  ];

  //a - analytics
  //o - observer
  HomeScreen2({a, o, phone_number}) : super(a: a, o: o, r: 'HomeScreen2') {
    carouselController = CarouselController();
    selectedimg = 0;
  }
  List<Widget> banners(context) {
    List<Widget> list = [];
    try {
      for (int i = 0; i < promotionam_banners.length; i++) {
        list.add(GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Container(
              color: Theme.of(context).primaryColor,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(
                      promotionam_banners[i],
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
      }

      return list;
    } catch (e) {
      print("Exception - home_screen.dart - banners(): " + e.toString());
      list.add(SizedBox());
      return list;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(
          a: a,
          o: o,
        ),
        backgroundColor: Colors.grey[100],
        appBar: MyCustomAppBar(
          IconButton(
            icon: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 20,
              ),
            ),
            onPressed: () {
              // Your IconButton onPressed logic here
            },
          ),
          title: Text('Hi Faith'),
          actions: [
            Stack(
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.bell),
                  onPressed: () {
                    Get.to(() => NotificationScreen(a: a, o: o));
                  },
                ),
                Positioned(
                  right: 11,
                  top: 11,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
          key: null,
        ),
        body: SingleChildScrollView(
          child: CommonPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                promotionam_banners != null
                    ? GetBuilder<HomeController>(builder: (controller) {
                        return Container(
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: EdgeInsets.all(0),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Column(
                                  children: [
                                    CarouselSlider(
                                        items: banners(context),
                                        carouselController: carouselController,
                                        options: CarouselOptions(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.20,
                                            aspectRatio: 1,
                                            viewportFraction: 1,
                                            initialPage:
                                                homeController.currentIndex,
                                            enableInfiniteScroll: false,
                                            reverse: false,
                                            autoPlay: true,
                                            autoPlayInterval:
                                                Duration(seconds: 3),
                                            autoPlayAnimationDuration:
                                                Duration(milliseconds: 800),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enlargeCenterPage: true,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, _) {
                                              homeController
                                                  .setCurrentIndex(index);
                                            })),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: DotsIndicator(
                                        dotsCount: promotionam_banners.length,
                                        position: homeController.currentIndex
                                            .toDouble(),
                                        decorator: DotsDecorator(
                                          activeSize: const Size(6, 6),
                                          size: const Size(6, 6),
                                          activeShape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0))),
                                          activeColor:
                                              Theme.of(context).primaryColor,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        );
                      })
                    : SizedBox(),
                Card(
                  margin: EdgeInsets.only(top: 00),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 5, top: 10),
                        child: Text(
                          'Apply For Loans',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                          crossAxisCount: 3,
                          children: List.generate(
                              9,
                              (index) => GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                      } else if (index == 1) {
                                        Get.delete<PersonalLoanController>();
                                        Get.to(() => BasicDetailEntryPLScreen(
                                              a: a,
                                              o: o,
                                            ));
                                      } else if (index == 2) {
                                        Get.delete<BusinessLoanController>();
                                        Get.to(() => ChooseScreenBLScreen(
                                              a: a,
                                              o: o,
                                            ));
                                      } else if (index == 3) {
                                      } else if (index == 4) {
                                        Get.delete<HomeLoanController>();
                                        Get.to(() => chooseScreenHLScreen(
                                              a: a,
                                              o: o,
                                            ));
                                      } else if (index == 5) {
                                        Get.delete<
                                            LoanAgainstPropertyController>();
                                        Get.to(() => chooseScreenLAPScreen(
                                              a: a,
                                              o: o,
                                            ));
                                      } else if (index == 6) {
                                        Get.to(() => OtherLoanScreen(
                                              a: a,
                                              o: o,
                                            ));
                                      } else if (index == 7) {
                                        Get.to(() => OtherServicesScreen(
                                              a: a,
                                              o: o,
                                            ));
                                      }
                                    },
                                    child: Container(
                                        margin:
                                            EdgeInsets.only(left: 1, right: 1),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey[500] ??
                                                  Colors.transparent,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10, top: 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 25,
                                                  // color: Colors.red,
                                                  child: SvgPicture.asset(
                                                    iconList[index],
                                                    height: 35,
                                                    color: colors[index],
                                                  )),
                                              Text(
                                                '${loanNames[index]}',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )
                                            ],
                                          ),
                                        )),
                                  )),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 5, top: 10),
                        child: Text(
                          'Calculate EMI for Customer',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[500] ?? Colors.transparent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: ListTile(
                              horizontalTitleGap: 5,
                              leading: Icon(
                                Icons.calculate_outlined,
                                color: Color(0xFF5634D2),
                                size: 35,
                              ),
                              title: Text(
                                'EMI Calculator',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              onTap: () {
                                Get.to(() => (EmiCalculatorScreen(
                                      a: a,
                                      o: o,
                                    )));
                              },
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 5, top: 10),
                        child: Text(
                          'CIB',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[500] ?? Colors.transparent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: ListTile(
                              horizontalTitleGap: 5,
                              leading: Icon(
                                FontAwesomeIcons.handPointRight,
                                color: Color(0xFFFE2161),
                                size: 35,
                              ),
                              title: Text(
                                'Check CIB',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              onTap: () {
                                Get.to(() => (CheckCIBILScoreScreen(
                                      a: a,
                                      o: o,
                                    )));
                              },
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget loanCardlist(context) {
    return ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: Get.width,
            height: 160,
            child: Card(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${titleList[index]}',
                              style:
                                  Theme.of(context).primaryTextTheme.headline1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                  width: Get.width - 80,
                                  child: Text(
                                    '${subTitle[index]}',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline2,
                                  )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: ElevatedButtonWIdget(
                            key: UniqueKey(),
                            voidCallback: () {
                              if (index == 0) {
                                Get.to(() => BasicDetailEntryPLScreen(
                                      a: a,
                                      o: o,
                                    ));
                              } else if (index == 1) {
                                Get.to(() => ChooseScreenBLScreen(
                                      a: a,
                                      o: o,
                                    ));
                              } else if (index == 2) {
                                Get.delete<HomeLoanController>();
                                Get.to(() => chooseScreenHLScreen(
                                      a: a,
                                      o: o,
                                    ));
                              } else if (index == 3) {
                                Get.delete<LoanAgainstPropertyController>();
                                Get.to(() => chooseScreenLAPScreen(
                                      a: a,
                                      o: o,
                                    ));
                              } else if (index == 4) {
                                Get.to(() => OtherLoanScreen(
                                      a: a,
                                      o: o,
                                    ));
                              } else if (index == 5) {
                                Get.to(() => OtherServicesScreen(
                                      a: a,
                                      o: o,
                                    ));
                              }
                            },
                            child: Text('Apply'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(16)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              image: DecorationImage(
                                  image: AssetImage('assets/homescreen.jpg'),
                                  fit: BoxFit.cover)),
                          width: 110,
                          height: 80,
                        ),
                      ))
                ],
              ),
            ),
          );
        });
  }

  Widget pdflecturelist(context) {
    return ListView.builder(
        itemCount: 3,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 7, top: 0),
                            child: Column(
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Theme.of(context).primaryColor,
                                            spreadRadius: 3),
                                      ],
                                    ),
                                    child: Container(
                                      child: Icon(
                                        Icons.menu_book,
                                        size: 25,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      )),
                                      height: 50,
                                      width: 50,
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 20),
                            //color: Colors.green,
                            width: MediaQuery.of(context).size.width / 2,
                            height: 80,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Test",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ebook for ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          );
        });
  }
}
