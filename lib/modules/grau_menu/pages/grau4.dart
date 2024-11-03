import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/grau_menu/grau_menu_router.dart';

class Grau4 extends StatelessWidget {
  const Grau4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4CDCD),
      appBar: AppBar(
         backgroundColor: Color(0xffD4CDCD),
        leading: IconButton(onPressed: (){
          Modular.to.pop();
        }, icon: const Icon(Icons.close)),
        title: const Text('Grau 4:',style: TextStyle(color: Color(0XFF3C2EDE)),),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset('assets/grau4.png')),
                Center(child: Image.asset('assets/raiz4.png'))
              ],
            ),
          ),
          const SizedBox(height: 80),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
               
              
                child: Center(child: Text('Reabsorção extrema, com perda de mais de 1/3 do seu comprimento. ',textAlign: TextAlign.center, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
              
                
              ),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              GrauMenuRouter.gotoWarning4();
            },
            child: Image.asset('assets/warning.png'))
        ],
      ),
    );
  }
}