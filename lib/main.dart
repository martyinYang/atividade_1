import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

//criada variavel pra instaciar o page / FAZ A NAVEGACAO ENTRE AS PÁGINAS
PageController pageController = PageController();
//add int variaveis pra paginacao
int paginaAtual = 0;
int contador = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( //aqui tudo o que aparece na tela
      appBar: AppBar(
      title: Text(
        'MyApp',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20, // Ajuste o tamanho da fonte conforme necessário
          fontWeight: FontWeight.bold, // Ajuste o estilo da fonte conforme necessário
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.red,
      elevation: 70,
    ),
     
      body: PageView(
        controller: pageController ,
        //ter ou obter modificacao        
        children: [
          Container(
            child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundColor: Colors.red, radius: 50),
                  SizedBox(width: 50), // Espaço entre os botões
                  CircleAvatar(backgroundColor: Colors.red, radius: 50,),
                ],
              ),
              SizedBox(height: 50), // Espaço entre as linhas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundColor: Colors.red, radius: 50),
                  SizedBox(width: 50), // Espaço entre os botões
                  CircleAvatar(backgroundColor: Colors.red, radius: 50,),
                ],
              ),
            SizedBox(height: 100),
            Container(
              width: 400,
              height: 200, 
              color: Colors.red, 
          ),
            ],
          )
          ),
          Container(
            child: Column(children: [
              SizedBox(height: 50),
               Container(
                  width: 400,
                  height: 80, 
                  color: Colors.red, 
                ),
                 SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 80, 
                  color: Colors.red, 
                ),
                 SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 80, 
                  color: Colors.red, 
                ),
                 SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 80, 
                  color: Colors.red, 
                ),

            ]),
            
            ),
        ],
      ),
     bottomNavigationBar: BottomNavigationBar(currentIndex: paginaAtual, selectedItemColor: Colors.white, backgroundColor: Colors.red,
onTap: (page){
 //pageController.jumpToPage(page);
 pageController.animateToPage(page, duration: Duration(milliseconds:200), curve: Curves.linear);
 
 setState(() {
   //tudo o que estiver aqui tera a tela atualizada
    paginaAtual= page;
 }); 
},
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ]),
        floatingActionButton : Row(
          mainAxisAlignment: MainAxisAlignment.center,
            
    )); 
    }
}
