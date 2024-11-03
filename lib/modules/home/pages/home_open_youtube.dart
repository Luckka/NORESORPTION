import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeOpenYoutube extends StatelessWidget {
  const HomeOpenYoutube({super.key});

  @override
  Widget build(BuildContext context) {
    void openYouTubeVideo(String videoId) async {
      final url = 'https://www.youtube.com/watch?v=$videoId';

      await launchUrl(Uri.parse(url));
    }

    return Scaffold(
        backgroundColor: const Color(0xff0B0360),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Este aplicativo se propõe a facilitar o diagnóstico e avaliação do estágio de Reabsorção Radicular Externa (RRE), durante a movimentação ortodôntica.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/youtube_image.png', // Replace with your image asset path
                  width: 300,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Saiba mais sobre o APP acessando a plataforma de vídeos abaixo:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Modular.to.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    color: Colors.red,
                    iconSize: 32,
                  ),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    padding: EdgeInsets.all(16),
                    child: IconButton(
                      onPressed: () {
                        openYouTubeVideo('DmwKXq6Ss6c');
                      },
                      iconSize: 30,
                      icon: Icon(Icons.play_arrow),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      Modular.to.navigate('/home-menu');
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                    ),
                    color: Colors.red,
                    iconSize: 32,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
