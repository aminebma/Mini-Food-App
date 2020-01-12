import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
     var selectedFood='MEAT';

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      /*appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),*/
      body: ListView(
        children: <Widget>[
          Stack(
children: <Widget>[
  ShaderMask(
    shaderCallback: (rect){
      return LinearGradient(
        begin:Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black, Colors.transparent
        ]
         ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
    },
  blendMode: BlendMode.dstIn,
  child: Image.network("https://images.lacarmina.com/131209-japan-lights-bokeh-christmas-decorations-tokyo-winter-18.jpg",
                         height: 350,
                         width: MediaQuery.of(context).size.width,
                         fit: BoxFit.cover,
                         ),
    ),
  Positioned(
    child:RotatedBox(quarterTurns: -5,
    child:Text(
    'JAPAN'.toUpperCase(),
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontSize: 95,
      fontWeight: FontWeight.w700,
    ),
    ),
    ),
  left: -15,
  top: -1,
    ),
    Positioned(
      top: MediaQuery.of(context).size.height*0.3,
      left: 30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Text(
        'WELCOME TO'.toUpperCase(),
         style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w400
          ),
        ),
        Row(
          children: <Widget>[
            Text(
            'tokyo'.toUpperCase(),
            style: TextStyle(
          color: Color(0xfffd3664),
          fontSize: 40,
          fontWeight: FontWeight.w700
          ),
           ),
            Text(
            ', japan'.toUpperCase(),
            style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w700,
          ),
           ),
          ],
        )
      ],
      ),
    ),
    Positioned(
      top:20,
      right:20,
      child :Container(
        height:40,
        width: 40,
        decoration : BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(Icons.menu),
        ),
      ),
    Positioned(
      top:20,
      right:20,
      child :Container(
        height:6,
        width: 6,
        decoration : BoxDecoration(
          color: Color(0xfffd3664),
          borderRadius: BorderRadius.circular(3),
        ),
      
        ),
      ),
  /*Positioned(
    child: Text(
      'WELCOME TO',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w400,
        ),
      ),
      left: 30,
      top: 145,
  ),
  Positioned(
    child: Text(
      'TOKYO',
      style: TextStyle(
        color: Color(0xfffd3664),
        fontSize: 45,
        fontWeight: FontWeight.w900,
        ),
      ),
      left: 30,
      top: 168,
  ),
  Positioned(
    child: Text(
      ', JAPAN',
      style: TextStyle(
        color: Colors.white,
        fontSize: 45,
        fontWeight: FontWeight.w900,
        ),
      ),
      left: 175,
      top: 168,
  ),*/
],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:20,vertical :0 ),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(5),
                ),
                child : TextField(
                     decoration: InputDecoration(
                     border : InputBorder.none,
                     prefixIcon :Icon(
                       Icons.search,
                       color : Colors.white.withOpacity(0.5),
                       ),
                       hintText: 'Tap to search...',
                       hintStyle: TextStyle(color: Colors.white),
                     ),
                     style: TextStyle(color: Colors.white),
                  ),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buttonBuilder('Garantita'.toUpperCase(), Icons.sentiment_satisfied),
                    _buttonBuilder('TEA'.toUpperCase(), Icons.local_cafe),
                    _buttonBuilder('cola'.toUpperCase(), Icons.local_drink),
                  ],
                ),
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buttonBuilder('Garantita'.toUpperCase(), Icons.sentiment_satisfied),
                    _buttonBuilder('TEA'.toUpperCase(), Icons.local_cafe),
                    _buttonBuilder('cola'.toUpperCase(), Icons.local_drink),
                  ],
                ),
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buttonBuilder('Garantita'.toUpperCase(), Icons.sentiment_satisfied),
                    _buttonBuilder('TEA'.toUpperCase(), Icons.local_cafe),
                    _buttonBuilder('cola'.toUpperCase(), Icons.local_drink),
                  ],
                )
              
          
        ]
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        /*child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),*/
      ), // This trailing comma makes auto-formatting nicer for build methods.*/
    );
  }

  Widget _buttonBuilder(foodName, foodIcon){
    return InkWell(
      splashColor: Colors.transparent,
      onTap: (){
        setState(() {
         selectedFood=foodName; 
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 300),
        height: (selectedFood==foodName) ?  MediaQuery.of(context).size.height*0.5/3 : MediaQuery.of(context).size.height*0.5/3*0.75,
        width: (selectedFood==foodName) ? MediaQuery.of(context).size.width/3 : MediaQuery.of(context).size.width/3*0.75,
        color: (selectedFood==foodName) ? Color(0xfffd3664) : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(foodIcon, color:Colors.white,),
            SizedBox(height: 10,),
            Text(foodName, style: TextStyle(color: Colors.white),)
          ],
          ),
      ),
    );
  }

}
