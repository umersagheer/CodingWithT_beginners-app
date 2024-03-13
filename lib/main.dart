import 'package:beginner_app/screens/form.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        themeMode: ThemeMode.system,
        home: FormScreen());
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
                side: const BorderSide(color: Colors.blue, width: 1.0)),
            title: const Text("Addidas"),
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
          ),
        )
      ],
    );
  }
}
