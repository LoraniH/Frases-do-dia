import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frase do dia',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Frase do dia para o meu amor:'),
   //   home: Scaffold(body:Center()),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  final List _frases = [
    'Meu coração é seu, para todo o sempre!',
    'Te amo mais a cada dia que passa, obrigada por ser você',
    'Obrigada por ser a luz dos meus dias e por não desistir de mim',
    'Todos os dias com você são uma alegria, e se houver algum dia ruim, eu sei que logo passará. Obrigada por isso',
    'Obrigada por ser você! Eu amo cada pedacinho seu! ',
    'Sua presença alegra a minha vida, portanto, apenas continue sendo você! Eu te amo!',
    'Nossos momentos juntos são mágicos, e a culpa é sua!',
    'VOCÊ É O MEU AMOR!!!',
    'Você é o meu porto seguro, é o meu grande amor. Eu te amo infinitamente',
    'Você é a razão dos meus sorrisos mais lindos, eu te amo!',
    'Nada no mundo se compara à felicidade que é estar com você. ',
    'Saiba que sou muito feliz por amar você!!! Digo isso com todo o meu coração',
    'NADA NESTE MUNDO ME FAZ TÃO BEM QUANTO VOCÊ, EU TE AMO!',
    'Obrigada por me mostrar o que é o amor', // aqui tem 13 (53-40) + 1 = 14 frases
    'Seu amor é, maravilhosamente, a melhor coisa que já me aconteceu',
    'Com você, o mundo até parece um lugar melhor!',
    'Cada momento ao seu lado é um tesouro! Espero ficar contigo até o fim de nossas vidas',
    'Sua beleza é superior a tudo! Do seu jeitinho, é a coisa mais bela',
    'Obrigada por sempre me apoiar, eu não sei como eu teria conseguido sem você',
    'Você é a razão pela qual eu acredito no amor verdadeiro, obrigada por isso',
    'Seu sorriso ilumina o meu mundo, espero que você, meu amor, tenha um bom dia!',
    'Talvez eu já tenha dito, mas eu quero envelhecer ao seu lado, amando você cada dia mais',
    'Eu tenho a sensação de que nada é impossível quando temos um ao outro. Talvez seja isso mesmo',
    'Você não precisa ser uma pessoa perfeita, basta ser você. Te amo do seu jeitinho! Não se esqueça disso!',
    'Obrigada por tudo!!! É tanta coisa para te agradecer, que seria preciso fazer um livro!',
    'Amo tudo em você, desde seus defeitos até suas qualidades. Sério. Saiba que, para mim, você é a mais pura perfeição!',
    'Você é a linda música que toca em meu coração! Minha alma se alegra ao te ouvir',
    'Quero ser o seu amor todos os dias, para sempre!! Aceitas?',
    'Eu não paro de pensar em você, meu amor! E quando penso em você... Só alegria!',
    'Meu bem, quero que você seja o meu amor eterno. Espero que você não enjoe de mim!',
    'Olá, meu anjo! Passando para avisar que você é MUITO importante para mim! Talvez você já saiba, mas é bom relembrar!',
    'Amar você é a melhor escolha que faço todos os dias',
    'Serei o seu sol em dias nublados, ensolarados, chuvosos e em quais você precisar! Eu adoro te deixar bem',
    'Meu amor por você é mais profundo do que as palavras podem expressar, e mais infinito do que os números podem representar! Muito amor, ein?',
    'Com você, o mundo fica mais colorido e cheio de vida. Você trouxe cor aonde não tinha, e assim é bem melhor de enxergar',
    'Meu coração bate mais forte toda vez que penso em você. Esperando ansiosamente para te ver!!',
    'Nada no mundo se iguala ao brilho dos seus olhos. ELES SÃO MUITO LINDOS!!!',
    'Amar você é uma parte da minha vida que eu quero ter para sempre. EU TE AMO DEMAIS!!!',
    'Quero que saiba que você é muito especial para mim! Obrigada por isso. Em breve te darei muitos beijos!!',
    'Os momentos longe de você me fazem notar o quanto eu sinto saudades de ti',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];


  void _incrementCounter() {
    setState(() {
     _numeroAleatorio = Random().nextInt(35) ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.favorite_sharp),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
