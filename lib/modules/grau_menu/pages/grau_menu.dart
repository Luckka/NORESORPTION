import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/grau_menu/grau_menu_router.dart';

class GrauMenu extends StatelessWidget {
  const GrauMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        elevation: 0,
        title: const Text('Graus de Reabsorção\n Radicular Externa:',textAlign: TextAlign.center,style: TextStyle(color: Color(0xff0F0395,),fontSize: 20),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Modular.to.pushNamed('/');
        }, icon: Icon(Icons.close)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Center(child: Text('Clique e avalie o grau de\n reabsorção do seu paciente:',textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 31),
            InkWell(
              onTap: (){
                GrauMenuRouter.gotoGrau0();
              },
              child: Container(
                width: 300,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(131, 255, 243, 16)
                ),
                child: const Center(child: Text('Grau 0',style: TextStyle(fontSize: 30),)),
              ),
            ),
            const SizedBox(height: 16),
             InkWell(
              onTap: () {
                GrauMenuRouter.gotoGrau1();
              },
               child: Container(
                width: 300,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(195, 255, 243, 16)
                ),
                child: Center(child: Text('Grau 1',style: TextStyle(fontSize: 30),)),
                           ),
             ),
             const SizedBox(height: 16),
             InkWell(
              onTap: () {
                GrauMenuRouter.gotoGrau2();
              },
               child: Container(
                width: 300,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(240, 255, 243, 16)
                ),
                child: Center(child: Text('Grau 2',style: TextStyle(fontSize: 30),)),
                           ),
             ),
             const SizedBox(height: 16),
             InkWell(
              onTap: () {
                GrauMenuRouter.gotoGrau3();
              },
               child: Container(
                width: 300,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffFF9F10)
                ),
                child: Center(child: Text('Grau 3',style: TextStyle(fontSize: 30),)),
                           ),
             ),
             const SizedBox(height: 16),
             InkWell(
              onTap: (){
                GrauMenuRouter.gotoGrau4();
              },
               child: Container(
                width: 300,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red
                ),
                child: Center(child: Text('Grau 4',style: TextStyle(fontSize: 30),)),
                           ),
             ),
          ],
        ),
      ),
    );
  }
}
