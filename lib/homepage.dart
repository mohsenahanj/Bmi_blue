import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color firstColor = Colors.white;
  Color secondColor = Colors.white;
  double sliderValue = 172;
  int weight = 62;
  int age = 27;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('BMI محاسبه گر', style: TextStyle(fontFamily: 'Lale'),),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            elevation: 1.5,
          ),
          body: Column(
            children: <Widget>[
              // سطر اول

              Container(
                height: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ستون اول

                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.9),
                                    offset: Offset(2, 2),
                                    blurRadius: 8)
                              ]),
                          margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
                          padding: EdgeInsets.all(20),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                firstColor = Colors.blueAccent;
                                secondColor = Colors.white;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/mars.svg",
                                  width: 50,
                                  // ignore: deprecated_member_use
                                  color: firstColor,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "مذکر",
                                  style: TextStyle(
                                      color: firstColor, fontFamily: 'Lale'),
                                )
                              ],
                            ),
                          ),
                        )),

                    // ستون دوم

                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.9),
                                    offset: Offset(2, 2),
                                    blurRadius: 8)
                              ]),
                          margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
                          padding: EdgeInsets.all(20),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                firstColor = Colors.white;
                                secondColor = Colors.blueAccent;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/venus.svg",
                                  width: 50,
                                  // ignore: deprecated_member_use
                                  color: secondColor,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "مؤنث",
                                  style: TextStyle(
                                      color: secondColor, fontFamily: 'Lale'),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),

              // سطر دوم

              Container(
                height: 180,

                decoration: BoxDecoration(
                    color: Color.fromRGBO(35, 32, 32, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromRGBO(88, 88, 88, 0.9),
                          offset: Offset(2, 2),
                          blurRadius: 8)
                    ]),
                margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                padding: EdgeInsets.all(30),
                //  color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "قد",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 24,
                              fontFamily: 'Lale'),
                        ),
                        Row(
                          children: [
                            Text(
                              sliderValue.toString().substring(0, 3),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Lale'),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Lale'),
                            )
                          ],
                        ),
                        CupertinoSlider(
                            value: sliderValue,
                            activeColor: Colors.blueAccent[400],
                            min: 120,
                            max: 240,
                            divisions: 120,
                            onChanged: (c) {
                              setState(() {
                                sliderValue = c;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),

              // سطر سوم

              Container(
                height: 190,
                // color: Colors.yellow,
                child: Row(
                  children: [
                    // ستون اول

                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.9),
                                    offset: Offset(2, 2),
                                    blurRadius: 8)
                              ]),
                          margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                "وزن",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18, fontFamily: 'Lale'),
                              ),
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24,fontFamily: 'Lale'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // افزایش
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black45,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    elevation: 10,
                                  ),
                                  // کاهش
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black45,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                    elevation: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        )),

                    // ستون دوم

                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(35, 32, 32, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(88, 88, 88, 0.9),
                                    offset: Offset(2, 2),
                                    blurRadius: 8)
                              ]),
                          margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                "سن",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18,fontFamily: 'Lale'),
                              ),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24,fontFamily: 'Lale'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // افزایش
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black45,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    elevation: 10,
                                  ),
                                  // کاهش
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    mini: true,
                                    backgroundColor: Colors.black45,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                    elevation: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),

              // سطر چهارم

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    // bmi calculate

                    String status;
                    double bmi = weight / math.pow((sliderValue / 100), 2);
                    print(bmi.toStringAsFixed(2));


                    if (bmi < 18.5)
                      status = "زیر وزن \n BMI = ${bmi.toStringAsFixed(2)}";
                    else if (bmi > 18.5 && bmi < 24.9)
                      status = "وزن متناسب \n BMI = ${bmi.toStringAsFixed(2)}";
                    else if (bmi > 24.9 && bmi < 29.9)
                      status = "اضافه وزن \n BMI = ${bmi.toStringAsFixed(2)}";
                    else if (bmi > 30)
                      status = "چاق \n BMI = ${bmi.toStringAsFixed(2)} ";
                    else
                      status = " خطا! bmi شما است ${bmi.toStringAsFixed(2)}";

                    showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text("وضعیت شما ..."),
                          content: Text(status),
                          actions: [
                            TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(),
                                child: Text("اوکی"))
                          ],
                        ));
                  },
                  color: Colors.blueAccent[400],
                  minWidth: double.infinity,
                  child: Text(
                    "محاسبه",
                    style: TextStyle(color: Colors.white, fontSize: 25,fontFamily: 'Lale'),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8))),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
