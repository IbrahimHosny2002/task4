import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Task5(),
    );
  }
}

class Task5 extends StatefulWidget {
  const Task5({Key? key}) : super(key: key);

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {

  String? grade;
  bool java=false;
  bool dart=false;
  bool python=false;
  bool C=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Task'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is your grade?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Radio(
                    activeColor: Colors.teal,
                    groupValue: grade,
                    value: 'First Year',
                    onChanged: (val) {
                      setState(() {
                        grade = val;
                        final snackBar=SnackBar(
                          content: Text("You Choose $val"),
                          duration: Duration(
                              seconds: 3
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }),
                Text(
                  'First Year',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 60,
                ),
                Radio(
                    activeColor: Colors.teal,
                    groupValue: grade,
                    value: 'Second Year',
                    onChanged: (val) {
                      setState(() {
                        grade = val;
                        final snackBar=SnackBar(
                          content: Text("You Choose $val"),
                          duration: Duration(
                              seconds: 3
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }),
                Text(
                  'Second Year',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                    activeColor: Colors.teal,
                    groupValue: grade,
                    value: 'Third Year',
                    onChanged: (val) {
                      setState(() {
                        grade = val;
                        final snackBar=SnackBar(
                          content: Text("You Choose $val"),
                          duration: Duration(
                              seconds: 3
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }),
                Text(
                  'Third Year',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 60,
                ),
                Radio(
                    activeColor: Colors.teal,
                    groupValue: grade,
                    value: 'Fourth Year',
                    onChanged: (val) {
                      setState(() {
                        grade = val;
                        final snackBar=SnackBar(
                          content: Text("You Choose $val"),
                          duration: Duration(
                              seconds: 3
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }),
                Text(
                  'Fourth Year',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Divider(
              color: Colors.teal,
              thickness: 5,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Which programming language do you use?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
               Checkbox(
                 activeColor: Colors.teal,
                   value: C,
                   onChanged: (val){
                     setState(() {
                       C=val!;
                     });
                   }
               ),
                Text(
                  'C++',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 140,
                ),
                Checkbox(
                  activeColor: Colors.teal,
                    value: python,
                    onChanged: (val){
                      setState(() {
                        python=val!;
                      });
                    }
                ),
                Text(
                  'Python',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.teal,
                    value: dart,
                    onChanged: (val){
                      setState(() {
                        dart=val!;
                      });
                    }
                ),
                Text(
                  'Dart',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 140,
                ),
                Checkbox(
                    activeColor: Colors.teal,
                    value: java,
                    onChanged: (val){
                      setState(() {
                        java=val!;
                      });
                    }
                ),
                Text(
                  'java',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 5),
              color: Colors.teal,
              width: double.infinity,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This shows what you choose : ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if(python)
                    Text(
                      'Python',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 20
                       ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  if(java)
                    Text(
                      'Java',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  if(dart)
                    Text(
                      'Dart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  if(C)
                    Text(
                      'C++',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}



