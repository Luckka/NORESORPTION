import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:noresorption/modules/home_menu/home_menu_router.dart';
import 'package:url_launcher/url_launcher.dart';

class TratamentoRre extends StatelessWidget {
  const TratamentoRre({super.key});

  @override
  Widget build(BuildContext context) {
    void openYouTubeVideo(String videoId) async {
      final url = 'https://www.youtube.com/watch?v=$videoId';

      await launchUrl(Uri.parse(url));
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                HomeMenuRouter.gotoTratamento2();
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.red,
              ))
        ],
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
      backgroundColor: const Color(0xff0B0360),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'O tratamento ortodôntico visa o correto posicionamento dentário, seja por fatores estéticos ou funcionais.',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/rre_dente.png', // Caminho da imagem central
              height: 164,
              width: 221,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'É importante o acompanhamento adequado de todas as etapas do tratamento para reduzir consequências ou danos advindos da movimentação dentária.',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          IconButton(
            icon: Icon(Icons.play_circle_fill, color: Colors.red, size: 60),
            onPressed: () {
              openYouTubeVideo('pKgnp_nLCvs');
            },
          ),
        ],
      ),
    );
  }
}
