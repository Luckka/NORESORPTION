import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

class Warning1 extends StatelessWidget {
  const Warning1({super.key});

  @override
  Widget build(BuildContext context) {

     void openDoc() async {
      const url = 'https://drive.google.com/drive/folders/1dlRxZIB1EyZi3N1WWqDJNWiTGDRE_psW?usp=drive_link';

      await launchUrl(Uri.parse(url));
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        leading: IconButton(onPressed: (){
          Modular.to.pop();
        }, icon: Icon(Icons.close,color: Colors.red,)),
      ),
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.warning,
              color: Colors.red,
              size: 80,
            ),
            SizedBox(height: 20),
            Text(
              'ATENÇÃO!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Realizar radiografia periapical (técnica do cone longo) a cada 6 meses para acompanhamento do grau de RRE.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 40),
            IconButton(
              onPressed: () {
                openDoc();
              },
              icon: Icon(Icons.assignment),
              color: Colors.black,
              iconSize: 40,
            ),
          ],
        ),
      ),
    );
    
  }
}