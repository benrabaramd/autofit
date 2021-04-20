import 'package:autofit/bloc/navigation/navigation_bloc.dart';
import 'package:flutter/material.dart';

class MyCardsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const MyCardsPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.blueGrey,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 68),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    child: Icon(Icons.menu, color: Colors.white),
                    onTap: onMenuTap,
                  ),
                  Text("My Cards",
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Icon(Icons.settings, color: Colors.white),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                alignment: Alignment.topCenter,
                color: Color(0xFFF0F0F0),
                height: MediaQuery
                    .of(context)
                    .size
                    .height - 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(Icons.calendar_today, color: Colors.grey),
                      SizedBox(
                        width: 15,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Oct",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF263064),
                              fontSize: 22,
                            ),
                            children: [
                              TextSpan(
                                  text: " 2021",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16))
                            ]),
                      )
                    ]),
                    Text("Today",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF3E3993),
                        ))
                  ],
                ),

              ),
              Positioned(top: 100,
                  child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height - 160,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(children: [
                        Container(
                            margin: EdgeInsets.only(top: 15, bottom: 30),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              buildDateColumn("Su", 7, false),
                              buildDateColumn("M", 8, true),
                              buildDateColumn("T", 9, false),
                              buildDateColumn("W", 10, false),
                              buildDateColumn("Th", 11, false),
                              buildDateColumn("F", 12, false),
                              buildDateColumn("Sa", 13, false),
                            ]))
                      ]))
              ),
              // child: PageView(
              //   controller: PageController(viewportFraction: 0.8),
              //   scrollDirection: Axis.horizontal,
              //   pageSnapping: true,
              //   children: <Widget>[
              //     Container(
              //       margin: const EdgeInsets.symmetric(horizontal: 8),
              //       color: Colors.redAccent,
              //       width: 100,
              //     ),
              //     Container(
              //       margin: const EdgeInsets.symmetric(horizontal: 8),
              //       color: Colors.blueAccent,
              //       width: 100,
              //     ),
              //     Container(
              //       margin: const EdgeInsets.symmetric(horizontal: 8),
              //       color: Colors.greenAccent,
              //       width: 100,
              //     ),
              //   ],
              // ),


              SizedBox(height: 20),
              Text(
                "Transactions",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Macbook"),
                    subtitle: Text("Apple"),
                    trailing: Text("-2900"),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 16);
                },
                itemCount: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Container buildDateColumn(
    String weekDay, int date, bool isActive
    ) {
  return Container(
    decoration: isActive ? BoxDecoration(
      color: Color(0xff402fcc),
      borderRadius: BorderRadius.circular(10)
    ) : BoxDecoration(
        color: (Colors.white),
        borderRadius: BorderRadius.circular(10)
    ),
      height: 55,
      width: 35,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(weekDay, style: TextStyle(color: Colors.grey, fontSize: 11)),
            Text(date.toString(), style: TextStyle(
                color: isActive? Colors.white:Colors.black, fontWeight: FontWeight.bold)),
            Icon(isActive? Icons.check_box:Icons.check_box_outline_blank, color: Colors.orangeAccent, size: 12),
          ])
  );
}