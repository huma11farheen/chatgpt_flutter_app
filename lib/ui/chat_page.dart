// chat_page.dart

import 'package:cgp/repository/chat_repository.dart';
import 'package:cgp/ui/chat_page_view_model.dart';
import 'package:cgp/widgets/message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../widgets/message_input_box.dart';

import 'chat_page_state.dart';

GetIt injector = GetIt.instance;
final chatProvider =
    StateNotifierProvider.autoDispose<ChatPageViewModel, ChatPageState>(
        (ref) => ChatPageViewModel(
              chatRepository: injector.get<ChatRepository>(),
            ));

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chatProvider);
    final viewModel = ref.read(chatProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatGPT Flutter App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(),
            Expanded(
              child: ListView(
                children: [
                  ...state.messages.map(
                    (msg) => ChatBubble(
                      message: msg.text,
                      isSentByMe: msg.isUserText,
                    ),
                  ),
                ],
              ),
            ),
            MessageInputBox(
              onSend: (question) async {
                await viewModel.askQuestion(question: question);
              },
            ),
          ],
        ),
      ),
    );
  }
}
