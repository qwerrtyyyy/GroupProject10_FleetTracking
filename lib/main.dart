import 'package:firebase_core/firebase_core.dart';
import 'package:fleet/viewlist.dart';
import 'package:flutter/material.dart';
import 'signup.dart';



Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  
  );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fleet",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget (title: "test"),
    /*/  home: Scaffold(
        appBar: AppBar(
          title:  const Text(_title),
          backgroundColor: Colors.white,
          ),
        body: const MyStatefulWidget(),
     */
     );
    
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required title}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? position;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Fleet",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Row(),
          RadioListTile(
            title: const Text("Manager",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
            value: "manager",
            groupValue: position,
            onChanged: (value) {
              setState(() {
                position = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Staff",
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
            value: "staff",
            groupValue: position,
            onChanged: (value) {
              setState(() {
                position = value.toString();
              });
            },
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 110),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black))),
              child: OutlinedButton(
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const ViewList()),
                
                );
                }
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 110),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black))),
              child: OutlinedButton(
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()
                ),
                );
                }
              ),
            ),
          ),
        ]
        ),
    );
  }
}