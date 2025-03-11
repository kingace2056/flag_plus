import 'package:flutter/material.dart';
import 'package:flag_plus/flag_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flag Plus Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flag Plus Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Using Country Codes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                FlagPlus(country: 'np', width: 100, height: 60),
                FlagPlus(country: 'us', width: 100, height: 60),
                FlagPlus(country: 'gb', width: 100, height: 60),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Using Country Names:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                FlagPlus(country: 'Nepal', width: 100, height: 60),
                FlagPlus(country: 'United States', width: 100, height: 60),
                FlagPlus(country: 'United Kingdom', width: 100, height: 60),
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
                FlagPlus(
                  country: 'Japan',
                  width: 100,
                  height: 100,
                  shape: FlagShape.circular,
                ),
                FlagPlus(
                  country: 'France',
                  width: 100,
                  height: 60,
                  shape: FlagShape.rounded,
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
                FlagPlus(
                  country: 'Germany',
                  width: 100,
                  height: 100,
                  fit: FlagFit.contain,
                  backgroundColor: Colors.grey,
                ),
                FlagPlus(
                  country: 'Italy',
                  width: 100,
                  height: 100,
                  fit: FlagFit.cover,
                ),
                FlagPlus(
                  country: 'Spain',
                  width: 100,
                  height: 100,
                  fit: FlagFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
