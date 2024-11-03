import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

class RrePage extends StatelessWidget {
  const RrePage({super.key});

  @override
  Widget build(BuildContext context) {

     void openYouTubeVideo(String videoId) async {
      final url = 'https://www.youtube.com/watch?v=$videoId';

      await launchUrl(Uri.parse(url));
    }
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(onPressed: (){
          Modular.to.pop();
        }, icon: const Icon(Icons.close,color: Colors.red,)),
        elevation: 0,
        backgroundColor: const Color(0xff0B0360),
      ),
       backgroundColor: const Color(0xff0B0360),
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageWithText(
                imagePath: 'assets/periap1.png', // Caminho da imagem superior
                text:
                    'Durante a movimentação dentária ortodôntica, ocorre um complexo processo de reposicionamento dos dentes pela remodelação óssea',
              ),
              const SizedBox(height: 40),
              CustomImageWithText(
                imagePath: 'assets/periap2.png', // Caminho da imagem inferior
                text:
                    'Quando torna-se patológico, observamos a ocorrência das reabsorções, que podem atingir níveis superiores a 3mm de remodelamento.',
              ),
              const SizedBox(height: 40),
              IconButton(
              
                icon: Icon(Icons.play_circle_fill, color: Colors.red, size: 67),
                onPressed: () {
                 openYouTubeVideo('pVClwXbj6jM&t=5s');
                },
              ),
            ],
          ),
        ),
      );
  }
}

class CustomImageWithText extends StatelessWidget {
  final String imagePath;
  final String text;

  CustomImageWithText({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}