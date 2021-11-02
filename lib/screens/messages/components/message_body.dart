import 'package:chat/constants.dart';
import 'package:chat/models/chat_message.dart';
import 'package:chat/screens/messages/components/chat_input_field.dart';
import 'package:flutter/material.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: ListView.builder(
              itemCount: demoChatMessages.length,
              itemBuilder: (context, index) => ChatMessageComponent(message: demoChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}

class ChatMessageComponent extends StatelessWidget {
  const ChatMessageComponent({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        TextMessage(message: message),
      ],
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding * 0.75,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text ?? '',
        style: TextStyle(
          color: message.isSender ? Colors.white : Theme.of(context).textTheme.bodyText1!.color),
      ),
    );
  }
}
