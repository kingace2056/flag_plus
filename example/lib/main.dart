import 'package:flutter/material.dart';
import 'package:world_flags/world_flags.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Flags Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('World Flags Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Basic Flags:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                WorldFlag(country: 'np', width: 100, height: 60),
                WorldFlag(country: 'us', width: 100, height: 60),
                WorldFlag(country: 'gb', width: 100, height: 60),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Different Shapes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                WorldFlag(
                  country: 'jp',
                  width: 100,
                  height: 100,
                  shape: WorldFlagShape.circular,
                ),
                WorldFlag(
                  country: 'fr',
                  width: 100,
                  height: 60,
                  shape: WorldFlagShape.rounded,
                  borderRadius: 12,
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Different Fits:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                WorldFlag(
                  country: 'de',
                  width: 100,
                  height: 100,
                  fit: WorldFlagFit.contain,
                  backgroundColor: Colors.grey,
                ),
                WorldFlag(
                  country: 'it',
                  width: 100,
                  height: 100,
                  fit: WorldFlagFit.cover,
                ),
                WorldFlag(
                  country: 'es',
                  width: 100,
                  height: 100,
                  fit: WorldFlagFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
