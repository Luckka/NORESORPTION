import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/grau_menu/grau_menu_router.dart';

class Grau0 extends StatelessWidget {
  const Grau0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4CDCD),
      appBar: AppBar(
         backgroundColor: Color(0xffD4CDCD),
        leading: IconButton(onPressed: (){
          Modular.to.pop();
        }, icon: const Icon(Icons.close)),
        title: const Text('Grau 0:',style: TextStyle(color: Color(0XFF3C2EDE,),fontWeight: FontWeight.bold),),
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
                Center(child: Image.asset('assets/grau01.png')),
                Center(child: Image.asset('assets/grau0-2.png'))
              ],
            ),
          ),
          const SizedBox(height: 80),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width:335 ,
            height: 168,

            child: Center(child: Text('Ausencia de Reabsorção Radicular',textAlign: TextAlign.center, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),

            
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              GrauMenuRouter.gotoWarning0();
            },
            child: Image.asset('assets/warning.png'))
        ],
      ),
    );
  }
}