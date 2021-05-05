
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
//import '../utils.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チェックシート'),
      ),
      body: Center(
        child: Column(
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
              title: Text('1.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag1,
              onChanged: _handleCheckbox1,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('2.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag2,
              onChanged: _handleCheckbox2,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('3.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag3,
              onChanged: _handleCheckbox3,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('4.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag4,
              onChanged: _handleCheckbox4,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('5.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag5,
              onChanged: _handleCheckbox5,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('6.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag6,
              onChanged: _handleCheckbox6,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('7.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag7,
              onChanged: _handleCheckbox7,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('8.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag8,
              onChanged: _handleCheckbox8,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('9.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag9,
              onChanged: _handleCheckbox9,
            ),

            new CheckboxListTile(
              activeColor: Colors.blue,
              title: Text('10.チェック項目'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _flag10,
              onChanged: _handleCheckbox10,
            ),
          ],
        ),
      ),
    );
  }
}
