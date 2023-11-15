import 'package:chat_app/screen/main_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  await Supabase.initialize(
      url: 'https://jjkskgdnzynppxdvrhrb.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Impqa3NrZ2RuenlucHB4ZHZyaHJiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAwNDMwNTksImV4cCI6MjAxNTYxOTA1OX0.C9ntq__EAY3eTYMoblJJf_A3FycKHmY4SPVPnKzwAAw');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainPage(),
      ),
    );
  }
}
