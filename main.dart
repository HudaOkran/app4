import 'package:flutter/material.dart';
import 'package:flutter_a8/dede.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'huda'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showsnackbar(){
    final snackBar=SnackBar(content:Text('hello'), 
      
      duration:Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
          actions:[
            IconButton(
              icon: Icon(Icons.info_outline), // أيقونة لإظهار SnackBar
              onPressed: _showsnackbar,
              tooltip: 'Show SnackBar', // نص تلميحي يظهر عند الضغط
              iconSize: 50, )]
      ),
      body: 
               ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network('https://images.news18.com/ibnlive/uploads/2022/01/fresh-fruits-16432553664x3.jpg', height: 200, width: 900,),
                  Image.network('https://images.news18.com/ibnlive/uploads/2022/01/fresh-fruits-16432553664x3.jpg', height: 200, width: 900,),
                  Image.network('https://images.news18.com/ibnlive/uploads/2022/01/fresh-fruits-16432553664x3.jpg', height: 200, width: 900,),
                  Image.network('https://images.news18.com/ibnlive/uploads/2022/01/fresh-fruits-16432553664x3.jpg', height: 200, width: 900,),
                  Image.network('https://images.news18.com/ibnlive/uploads/2022/01/fresh-fruits-16432553664x3.jpg', height: 200, width: 900,),
               
              
            
            ElevatedButton(onPressed:(){
Navigator.of(context).push(

  MaterialPageRoute(builder: (context)=>dede())
);
 
            }, child: Text('next'),
            ),]
               )
        
      );
    
  }
}

class dede extends StatelessWidget {
  const dede({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello User"),
        actions: [
    PopupMenuButton(
      itemBuilder: (BuildContext context){
        return[
PopupMenuItem(child: Text('opt1'),
value: 'opt1',
),
PopupMenuItem(child: Text('opt2'),
value: 'opt2',

),
PopupMenuItem(child: Text('opt3'),
value: 'opt3',

),
        ];
      },
      onSelected: (value){
        if(value=="opt2"){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>beso()));
        }
      },
      
      )
        ],
        
      ),
      body: ListView(
        children: [ 
          Center(
            child: Text(
              'Fruit',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Color.fromARGB(255, 56, 56, 161),
            child: Center(
              child: Image.network(
                'https://images.news18.com/ibnlive/uploads/2022/01/fresh-fruits-16432553664x3.jpg',
              ),
            ),
          ),
        SizedBox(height: 20), // إضافة مساحة بين الصورة والزر
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // العودة إلى الصفحة السابقة
                  },
                  child: Text('Back'),
                ),
                SizedBox(width: 20), // إضافة مساحة بين الأزرار
                ElevatedButton(
                  onPressed: () {
                    
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => beso()),
                      (route) => false,
                    );
                  },
                  child: Text('Go to Home'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}