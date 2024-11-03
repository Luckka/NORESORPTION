import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

class TratamentoStep3 extends StatelessWidget {
  const TratamentoStep3({super.key});

  @override
  Widget build(BuildContext context) {

     void openDoc() async {
      const url = 'https://www.researchgate.net/profile/Guilherme-Thiesen/publication/290441144_A_movimentacao_dentaria_ortodontica_Parte_II_-_magnitudes_de_forca_otima_e_taxa_de_movimento_dentario/links/5698db0a08aec79ee32ca849/A-movimentacao-dentaria-ortodontica-Parte-II-magnitudes-de-forca-otima-e-taxa-de-movimento-dentario.pdf';

      await launchUrl(Uri.parse(url));
    }
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Tabela com valores sugeridos na literatura para movimentação dos incisivos e caninos (valores em gramas relativos a cada unidade dentária).',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/table.png'),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Clique no ícone para ter acesso a fonte',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                openDoc();
              },
              child: Image.asset(
                'assets/docs.png', // Caminho da imagem circular
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
