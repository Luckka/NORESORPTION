import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('NORESORPTION',style: TextStyle(fontSize: 34,color:Color(0xff0B0360),fontWeight: FontWeight.bold ),),
        actions:[ 
          IconButton(onPressed: (){
            Modular.to.navigate('/home-youtube');
          }, icon: const Icon(Icons.arrow_forward,color: Color(0xff0B0360)) ),
        ] 
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png'),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Guia sobre reabsorção radicular',textAlign: TextAlign.center,  style: TextStyle(fontSize: 34,color:Color(0xff0B0360) ,fontWeight: FontWeight.bold),)),
          Image.asset('assets/background.png')
        ],
      ),
    );
  }
}