import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const version = '0.0.1'; // GLOBAL

// Metodo Principal
void main (List<String> arguments) {
  var CommandRunner = CommandRunner(
    onOutput: (String output) async {
      await write(output);
  },
  onError: (Object error) {
    if (error is Error) {
      throw error;
    },
    if (error is Exception) {
      print(error);
    }
  },
  )..addCommand(HelpCommand());
  commandRunner.run(arguments);
  
}


// ? - Pode ou não receber valores
void searchWikipedia(List<String>? args) async{
  final String? tituloArtigo;

  if (args == null || args.isEmpty){
    print('Por favor forneça um assunto');
    final inputStdin = stdin.readLineSync();
    if(inputStdin == null || inputStdin.isEmpty){
      print('Erro, pesquisa em branco');
      return;
    }
    tituloArtigo = inputStdin;
  } else {
    tituloArtigo = args.join(' ');
  }
  print('Procurando artigos sobre $tituloArtigo. Aguarde');
  var conteudoArtigo = await (getWikipediaArticle(tituloArtigo));
  print('Aqui Está');
  print('$conteudoArtigo');
}

Future<String> getWikipediaArticle(String tituloArtigo) async{
  final url = Uri.https(
    'en.wikipia.org',
    'api/api/rest_v1/page/summary/$tituloArtigo',
    );
    
  final response = await http.get(url); // Enquanto esse comando não terminar o código não continua.
  
  if(response.statusCode == 200){
    return response.body;
  }
  return 'Erro, falha ao acessar o $tituloArtigo'; // Não se usa um else nessa parte, por que se der erro ele nem continua lendo
}