import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/home_menu/home_menu_router.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Modular.to.navigate('/');
        }, icon: const Icon(Icons.close,color: Colors.red,)),
        elevation: 0,
        backgroundColor: const Color(0xff0B0360),
      ),
      backgroundColor: const Color(0xff0B0360),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Clique e saiba mais: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                HomeMenuRouter.gotoRRE();
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFAFF01),
                ),
                width: 300,
                height: 90,
                child: Center(
                  child: Text(
                    'O que é RRE?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 37),
            SizedBox(
              width: 300,
              child: InkWell(
                onTap: () {
                  HomeMenuRouter.gotoTratamento();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFAFF01),
                  ),
                  child: Center(
                    child: Text(
                        'Como o tratamento ortodôntico pode interferir no processo de RRE ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 37),
            InkWell(
              onTap: () {
                Modular.to.pushNamed('/grau');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFAFF01),
                ),
                width: 300,
                height: 90,
                child: Center(
                  child: Text('Quais os graus de RRE?',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
