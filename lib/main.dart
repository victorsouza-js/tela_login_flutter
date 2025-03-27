import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            AppBar(
              actions: [
                Icon(FontAwesomeIcons.user, color: Colors.white),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Icon(FontAwesomeIcons.userCheck, color: Colors.white),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Icon(FontAwesomeIcons.userLock, color: Colors.white),
                Padding(padding: EdgeInsets.only(left: 30)),
              ],
              backgroundColor: const Color.fromARGB(255, 52, 2, 255),
              title: Text(
                'Login',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 200)),
            Center(
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/711/711769.png',
                width: 100,
              ),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      hintText: 'E-mail',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  height: 55,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      hintText: 'Senha',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                
                SizedBox(height: 30),
                Center(
                  child: Container(
                    width: 200,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    FaIcon(FontAwesomeIcons.google, color: Colors.red),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    FaIcon(FontAwesomeIcons.twitter, color: Colors.blue),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue),
                  ],
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,padding: EdgeInsets.symmetric(horizontal: 79,vertical: 20)),
                  child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 17),),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  child: Text('Esqueceu sua senha?'),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
