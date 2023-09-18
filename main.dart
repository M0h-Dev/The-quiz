import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(  
      debugShowCheckedModeBanner: false,
      home:Screen2()));}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final _textController = TextEditingController();
  dynamic userinput;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                  child: Text("$userinput",
                  style: TextStyle(color: Colors.black) ,),
              )
            ),
            TextField(
              
              controller: _textController,
              decoration:  InputDecoration(
                hintText: "type a number",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed:(){
                    setState(() {
                      
                    _textController.clear();
                    });
                  } , 
                  icon: const Icon(Icons.clear))
                
              ),

            ),
            
            MaterialButton(
              onPressed: (){
                setState(() {
                  userinput = _textController.text.length;
                });
              },
              color: Colors.blue,
              child: const Text("Count",style:
              TextStyle(color: Colors.white)),),
                  
          ],
        ),
      ),
    );
  }
}
