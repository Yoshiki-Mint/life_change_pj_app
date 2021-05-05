import 'package:flutter/material.dart';

class nextPage extends StatelessWidget{
  nextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面'),
      ),

      body: Container(
        height: double.infinity,
        color: Colors.red,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
               // 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
                'https://www.wp-benricho.com/www/wp-content/uploads/2016/05/2016-05-27_11h05_18-728x362.png'
            ),
            Text(name),
            Center(
              child:RaisedButton(
                child: Text('戻る'),
                onPressed: (){
                  Navigator.pop(context,'次へ');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
