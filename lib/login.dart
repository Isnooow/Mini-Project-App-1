import 'package:belajar3/menu.dart';
import 'package:belajar3/model/model_akun.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget{

  const loginPage({Key? key}) : super(key:key);

  @override
  _loginPage createState() => _loginPage();
}

class _loginPage extends State<loginPage> {
  String _username = '';
  String _password = '';
  int userKey = 0;

  void verifUser(){
    setState(() {
        if (_username == 'isno' && _password == 'isno123'){
            userKey = 123;
            
        }else if (_username == 'willson' && _password == 'willson321'){
            userKey = 321;
        }else{
            userKey = 0;
        }

        print(userKey);
      
    masukAkun();
    });
}

  void masukAkun(){
    switch(userKey){
      case 123:
        final UserFake user = fakeUserList[0];
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return mainMenu(user: user);
        }));
      showDialog(context: context, builder: (context){
        return AlertDialog(
          alignment: Alignment.center,
          content: Text('hello, Isno Wahno Putro'),
        );
      });
      case 321:
        final UserFake user = fakeUserList[1];
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return mainMenu(user: user);
        }));
        showDialog(context: context, builder: (context){
        return AlertDialog(
          alignment: Alignment.center,
          content: Text('hello, David Willson'),
        );
      });
      default: showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text('Akun Tidak Terdaftar, Mohon periksa kembali akun anda'),
        );
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 4, 22, 37),
        width: double.infinity,
        height: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 100),
                child: Column(children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/Film.jpg')),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      // color: Colors.grey,
                  ),
                  SizedBox(height: 30,),
                  Text('BIOSKOP 31',
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.white70
                  ),),
                  SizedBox(height: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Username.png')
                              ),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.white
                              ),
                              color: Colors.white
                            ),
                            //color: Colors.blue,
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              //color: Colors.lightBlue
                            ),
                            child: TextField(
                              style: const TextStyle(
                                color: Colors.white
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Masukan Username',
                                hoverColor: Colors.white,
                                hintStyle: const TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              onChanged: (String user){
                                setState(() {
                                  _username = user;
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/Password.png')),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.white
                              )
                                ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 45,
                            width: 300,
                            child: TextField(
                              style: const TextStyle(
                                color: Colors.white
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Masukan Password',
                                hintStyle: const TextStyle(
                                  color: Colors.white
                                )
                              ),
                              obscureText: true,
                              onChanged: (String pass) {
                                setState(() {
                                  _password = pass;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 25,
                        child: ElevatedButton(
                          onPressed: verifUser,
                          child: const Text('Login',style: const TextStyle(color: Colors.black),)
                      ),
                      ),
                    ],
                  )
                ],)
              )
            ]),
        )
      );
  }
}

