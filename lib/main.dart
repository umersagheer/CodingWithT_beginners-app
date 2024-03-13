import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget tut'),
          centerTitle: true,
        ),
        body: const SFWidget(),
      ),
    );
  }
}

class SFWidget extends StatefulWidget {
  const SFWidget({super.key});

  @override
  State<SFWidget> createState() => _SFWidgetState();
}

class _SFWidgetState extends State<SFWidget> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Adidas"),
          trailing: IconButton(
            icon: liked
                ? (const Icon(Icons.favorite))
                : (const Icon(Icons.favorite_border)),
            onPressed: () {
              setState(() {
                liked = !liked;
              });
            },
          ),
        )
      ],
    );
  }
}
