import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

// Widget raiz da aplicação.
// Aqui ficam configurações globais como tema e rotas.
class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Markly', // Nome escolhido para o app
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
        ),
      ),
      home: const HomePage(),
    );
  }
}

// Tela inicial do aplicativo.
// No futuro, esta tela exibirá a lista de afazeres.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Tarefas'),
      ),
      body: const Center(
        child: Text(
          'Nenhuma tarefa ainda',
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
