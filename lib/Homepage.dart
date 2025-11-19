import 'package:flutter/material.dart';
import 'package:flutter_appform/Twopage.dart';

class Homepage extends StatefulWidget{
   const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  void _login(){
   setState(() {
     _controller2.text = _controller1.text;
   });
  }
  void _Navigator(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Twopage(name: _controller1.text)
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Home page'),
    ),
    body: Column(
      children: [
        SizedBox(height: 20,),
        TextField(
         decoration: InputDecoration(
         labelText: 'Enter your name',
         //hintText: 'Noora',
         border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
         )
         ),
         controller: _controller1,
                 ),
                 SizedBox(height: 20,),
        TextField(
         decoration: InputDecoration(
         labelText: '',
         border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
         )
         ),
         controller: _controller2,
         readOnly: true,
                 ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed:(){
            _login();
          }, child: Text('submit')),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            _Navigator();
          } , child: Text('Navigator'))

      ],
    ),
    
    );
  }
}