import 'package:belajar3/model/daftar_film.dart';
import 'package:belajar3/model/model_akun.dart';
import 'package:flutter/material.dart';

class mainMenu extends StatelessWidget{
  final UserFake user;

  const mainMenu({Key?key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(23),
                          bottomRight: Radius.circular(23)),
                          color: Color.fromARGB(255, 4, 22, 37)),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                          Column(children: [
                            SizedBox(height: 23,),
                            Container(
                              alignment: Alignment.center,
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(user.imageAsset)
                                ),
                                borderRadius: BorderRadius.circular(40)
                              ),
                            ),
                            Padding(padding: const EdgeInsets.only(top: 10),
                                child: Text(user.name,
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white
                                ),),
                            )
                          ],)
                          )
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  alignment: Alignment.center,
                  child: Text('Daftar Film Terlaris',
                    style: const TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 4, 22, 37)
                    ),),
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index){
              final daftarFilm film = daftarFilmlist[index];
              return Container(
                margin: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 4, 22, 37)),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                    Expanded(flex: 1,
                    child: Image.network(film.Image),),
                    Text(
                      film.namefilm,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),),
                    Text(
                      film.tahun,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white70
                      ),
                    )
                  ],
                ),
                //color: const Color.fromARGB(255, 10, 58, 65),
              );
              },
              itemCount: daftarFilmlist.length,
            )
          ],
        ),
      )
    );
  }
  }