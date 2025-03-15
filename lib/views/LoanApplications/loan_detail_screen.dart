// ignore_for_file: must_be_immutable
//flutter
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:flutter/material.dart';
import 'package:credit_app/utils/global.dart' as global;
//models
import 'package:credit_app/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class LoanDetailScreen extends BaseRoute {
  LoanDetailScreen({a, o}) : super(a: a, o: o, r: 'LoanDetailScreen');
  late TabController _tabController;

  late File photo;
  void setPhoto(File file) {
    photo = (file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: MyCustomAppBar(
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 0,
          ),
          onPressed: () {
            // Handle the back button press
          },
        ),
        height: 80,
        title: Text('Loan Detail'),
        centerTitle: true,
        key: null,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              onTap: (int index) async {},
              controller: _tabController,
              isScrollable: true,
              indicatorColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Theme.of(context).primaryColor,
              labelStyle: Theme.of(context).textTheme.headline5,
              tabs: [
                Tab(
                  child: Text(
                    'Basic Details',
                  ),
                ),
                Tab(
                  child: Text(
                    'Uploaded Documents',
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Full Name",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("Faith lyxie Pepey",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Date of Birth",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("10/01/1985",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Gender",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("Female",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Identity Number",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("TZBARAA62",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Identity Number",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("1985210014001584",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Monthly Income",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("${global.currencySymbol}25000",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Other Income",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("${global.currencySymbol}5000",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Loan Type",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("Home Loan",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Loan Amount",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("${global.currencySymbol}500000",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Employment Type",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("Self Employee",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: ListTile(
                              title: Text("Address",
                                  style: Theme.of(context).textTheme.headline5),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 0, top: 5),
                                child: Text("kigamboni,Dar es Salaam,Tanzania",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline6),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  CommonPadding(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Photo',
                            style: Theme.of(context).primaryTextTheme.headline1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: CommonPadding(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: DottedBorder(
                                      strokeWidth: 1,
                                      color: Theme.of(context).primaryColor,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: Get.width,
                                          height: 250,
                                          child: Image.asset('assets/fey.jpg'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'PAN Card',
                            style: Theme.of(context).primaryTextTheme.headline1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: CommonPadding(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: DottedBorder(
                                      strokeWidth: 1,
                                      color: Theme.of(context).primaryColor,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: Get.width,
                                          height: 250,
                                          child: Image.asset('assets/nmb.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'National  Card',
                            style: Theme.of(context).primaryTextTheme.headline1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: CommonPadding(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: DottedBorder(
                                      strokeWidth: 1,
                                      color: Theme.of(context).primaryColor,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: Get.width,
                                          height: 250,
                                          child: Image.asset('assets/Nida.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
