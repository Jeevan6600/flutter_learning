import 'package:flutter/material.dart';
import 'package:flutter_jeevan/second_screen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('asset/owl-2jpg'),
        title: InkWell(
          child: Text('GM Fashion'),
          onTap: onTapOff,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 20),
              child: GestureDetector(
                child: Icon(Icons.add_location),
                onTap: () {
                  onTap(context);
                },
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.green)),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Image.asset('asset/owl-2.jpg'),
                ),
                SizedBox(height: 5),
                Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    height: 375),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text('Mobile'),
                ),
                RaisedButton(
                  onPressed: () {
                    onTap(context);
                  },
                  child: Text(
                    'Mobile2',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    ),
                  ),
                  color: Colors.orange,
                ),Container(height: 200,
                  child: ListView(scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: <Widget>[
                          Text('Deliver features faster', textAlign: TextAlign.center),
                          Text('Craft beautiful UIs', textAlign: TextAlign.center),
                          FittedBox(
                            fit: BoxFit.contain, // otherwise the logo will be tiny
                            child: const FlutterLogo(size: 300,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Text('Deliver features faster', textAlign: TextAlign.center)),
                    Expanded(child:Text('Craft beautiful UIs', textAlign: TextAlign.center)),
                    FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: const FlutterLogo(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onTapOff() {}

  void onTap(context) {
    debugPrint('On Click');
    /*Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));*/
    for(int i=0;i<5;   i++){
      debugPrint('i value is --$i');
    }


  }
}
