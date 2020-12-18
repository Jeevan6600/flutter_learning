import 'package:flutter/material.dart';
import 'package:flutter_jeevan/main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
      appBar: AppBar(
        title: Text('Second_screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',backgroundColor: Colors.green,
        child: Icon(Icons.add_a_photo),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );*/
    // return Container(
    //   color: Colors.white,
    //   child: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text(
    //           'You have pushed the button this many times:',
    //         ),
    //
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page'),
        leading: Text('My Application'),
        actions: [
          GestureDetector(
            onTap: () {
              debugPrint('open the Contacts');
            },
            child: Icon(Icons.account_circle_rounded),
          ),
          InkWell(
            onTap: () {
              debugPrint("on click of Ok false");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Center(child: Text('ok')),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Center(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Center(
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 24, color: Colors.greenAccent),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Container(child: Image.asset("asset/owl-2.jpg"))
            ],
          ),
        ],
      ),
    );
  }
}
