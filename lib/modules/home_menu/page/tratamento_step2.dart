import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/home_menu/home_menu_router.dart';

class TratamentoStep2 extends StatelessWidget {
  const TratamentoStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xff0B0360),
        appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Modular.to.pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.red,
            )),
        elevation: 0,
        backgroundColor: const Color(0xff0B0360),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'A força ortodôntica ideal é aquela que produz o movimento dentário desejado nas condições existentes, com o mínimo de esforço celular e de efeitos secundários.',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'O acompanhamento radiográfico também trará maior segurança durante a escolha da mecânica utilizada.',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'Clique no ícone saiba mais sobre as forças ideais',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  HomeMenuRouter.gotoTratamento3();
                },
                child: CircleAvatar(
                  radius: 40,
                
                  child: ClipOval(
                    child: Image.asset(
                      'assets/circle.png', // Caminho da imagem circular
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ),
             
            ],
          ),
        ),
      );
  }
}