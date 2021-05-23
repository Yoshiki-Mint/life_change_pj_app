import 'package:flutter/material.dart';
import 'package:life_change_pj_app/next_page.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _dateText = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'チェックシート ４月１４日 (水)'),
      //home: MyHomePage(title: _dateText),
      home: TableBasicsExample(),
    );
  }
}

class TableBasicsExample extends StatefulWidget {
  @override
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  /// _flag1～10変数を宣言  /////////////////////////////////////////////////////
  bool _flag1 = false;
  bool _flag2 = false;
  bool _flag3 = false;
  bool _flag4 = false;
  bool _flag5 = false;
  bool _flag6 = false;
  bool _flag7 = false;
  bool _flag8 = false;
  bool _flag9 = false;
  bool _flag10 = false;
  bool _flag11 = false;
  bool _flag12 = false;
  bool _flag13 = false;
  bool _flag14 = false;
  bool _flag15 = false;

  /// _handleCheckbox1～10関数を定義  ///////////////////////////////////////////
  void _handleCheckbox1(bool e) {
    setState(() {
      _flag1 = e;
    });
  }

  void _handleCheckbox2(bool e) {
    setState(() {
      _flag2 = e;
    });
  }

  void _handleCheckbox3(bool e) {
    setState(() {
      _flag3 = e;
    });
  }

  void _handleCheckbox4(bool e) {
    setState(() {
      _flag4 = e;
    });
  }

  void _handleCheckbox5(bool e) {
    setState(() {
      _flag5 = e;
    });
  }

  void _handleCheckbox6(bool e) {
    setState(() {
      _flag6 = e;
    });
  }

  void _handleCheckbox7(bool e) {
    setState(() {
      _flag7 = e;
    });
  }

  void _handleCheckbox8(bool e) {
    setState(() {
      _flag8 = e;
    });
  }

  void _handleCheckbox9(bool e) {
    setState(() {
      _flag9 = e;
    });
  }

  void _handleCheckbox10(bool e) {
    setState(() {
      _flag10 = e;
    });
  }

  void _handleCheckbox11(bool e) {
    setState(() {
      _flag11 = e;
    });
  }

  void _handleCheckbox12(bool e) {
    setState(() {
      _flag12 = e;
    });
  }

  void _handleCheckbox13(bool e) {
    setState(() {
      _flag13 = e;
    });
  }

  void _handleCheckbox14(bool e) {
    setState(() {
      _flag14 = e;
    });
  }

  void _handleCheckbox15(bool e) {
    setState(() {
      _flag15 = e;
    });
  }

  /// _myForcusNode1～10関数を定義  ///////////////////////////////////////////
  final _myFocusNode1 = FocusNode;
  final _myFocusNode2 = FocusNode;
  final _myFocusNode3 = FocusNode;
  final _myFocusNode4 = FocusNode;
  final _myFocusNode5 = FocusNode;
  final _myFocusNode6 = FocusNode;
  final _myFocusNode7 = FocusNode;
  final _myFocusNode8 = FocusNode;
  final _myFocusNode9 = FocusNode;
  final _myFocusNode10 = FocusNode;
  final _myFocusNode11 = FocusNode;
  final _myFocusNode12 = FocusNode;
  final _myFocusNode13 = FocusNode;
  final _myFocusNode14 = FocusNode;
  final _myFocusNode15 = FocusNode;

  /// _checkList1～10関数を定義  ///////////////////////////////////////////
  String _checkList1;
  String _checkList2;
  String _checkList3;
  String _checkList4;
  String _checkList5;
  String _checkList6;
  String _checkList7;
  String _checkList8;
  String _checkList9;
  String _checkList10;
  String _checkList11;
  String _checkList12;
  String _checkList13;
  String _checkList14;
  String _checkList15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チェックシート '),
      ),
      body: Container(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// カレンダーを表示  ///////////////////////////////////////////////
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 10, 16),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),

            /// チェック項目を表示   ////////////////////////////////////////////
            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  hintText: '1.チェック項目'
                ),
                onChanged: (text) {
                  _checkList1 = text;
                  },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag1,
              onChanged: _handleCheckbox1,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '2.チェック項目'
                ),
                onChanged: (text) {
                  _checkList2 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag2,
              onChanged: _handleCheckbox2,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '3.チェック項目'
                ),
                onChanged: (text) {
                  _checkList3 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag3,
              onChanged: _handleCheckbox3,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '4.チェック項目'
                ),
                onChanged: (text) {
                  _checkList4 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag4,
              onChanged: _handleCheckbox4,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '5.チェック項目'
                ),
                onChanged: (text) {
                  _checkList5 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag5,
              onChanged: _handleCheckbox5,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '6.チェック項目'
                ),
                onChanged: (text) {
                  _checkList6 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag6,
              onChanged: _handleCheckbox6,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '7.チェック項目'
                ),
                onChanged: (text) {
                  _checkList7 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag7,
              onChanged: _handleCheckbox2,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '8.チェック項目'
                ),
                onChanged: (text) {
                  _checkList8 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag8,
              onChanged: _handleCheckbox8,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '9.チェック項目'
                ),
                onChanged: (text) {
                  _checkList9 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag9,
              onChanged: _handleCheckbox9,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '10.チェック項目'
                ),
                onChanged: (text) {
                  _checkList10 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag10,
              onChanged: _handleCheckbox10,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '11.チェック項目'
                ),
                onChanged: (text) {
                  _checkList11 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag11,
              onChanged: _handleCheckbox11,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '12.チェック項目'
                ),
                onChanged: (text) {
                  _checkList12 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag12,
              onChanged: _handleCheckbox12,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '13.チェック項目'
                ),
                onChanged: (text) {
                  _checkList13 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag13,
              onChanged: _handleCheckbox13,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '14.チェック項目'
                ),
                onChanged: (text) {
                  _checkList14 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag14,
              onChanged: _handleCheckbox14,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: TextField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                    hintText: '15.チェック項目'
                ),
                onChanged: (text) {
                  _checkList15 = text;
                },
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag15,
              onChanged: _handleCheckbox15,
            ),

            Container(
              //width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                // Image.network(
                //   'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
                // ),
                  RaisedButton(
                    child: Text('次へ'),
                    onPressed:  () async{
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => nextPage(' ')
                        ),
                      );
                      //text = result;
                      //print (result);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
