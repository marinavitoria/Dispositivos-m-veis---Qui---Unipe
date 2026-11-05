import 'package:flutter/material.dart';
import 'widgets/header_image.dart';
import 'widgets/action_buttons.dart';
import 'widgets/description_section.dart';
import 'widgets/people_header.dart';
import 'widgets/avatars_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Viagens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ViagemDetalhesScreen(),
    );
  }
}

class ViagemDetalhesScreen extends StatelessWidget {
  const ViagemDetalhesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Viagens'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderImageSection(),
            SizedBox(height: 16),
            ActionButtonsSection(),
            SizedBox(height: 16),
            DescriptionSection(),
            SizedBox(height: 24),
            PeopleHeaderSection(),
            SizedBox(height: 16),
            AvatarsListSection(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
