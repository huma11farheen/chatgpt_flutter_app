
import 'package:cgp/repository/chat_repository.dart';
import 'package:cgp/ui/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  injector.registerLazySingleton<ChatRepository>(() => ChatRepository());
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: ChatPage(),
    );
  }
}

