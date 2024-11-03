import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../grau_menu_router.dart';

class Grau1 extends StatelessWidget {
  const Grau1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4CDCD),
      appBar: AppBar(
         backgroundColor: Color(0xffD4CDCD),
        leading: IconButton(onPressed: (){
          Modular.to.pop();
        }, icon: const Icon(Icons.close)),
        title: const Text('Grau 1:',style: TextStyle(color: Color(0XFF3C2EDE)),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('assets/grau1.png')),
                  Center(child: Image.asset('assets/grau0-2.png'))
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width:335 ,
              height: 300,
        
              child: Center(child: Text('Reabsorção leve,observando-se apenas o contorno irregular, com a raiz apresentando contorno irregular e seu comprimento normal.',textAlign: TextAlign.center, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        
              
            ),
            const SizedBox(height: 10),
           InkWell(
            onTap: () {
              GrauMenuRouter.gotoWarning1();
            },
            child: Image.asset('assets/warning.png'))
          ],
        ),
      ),
    );
  }
}