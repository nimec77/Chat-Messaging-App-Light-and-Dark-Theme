import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/models/chat.dart';
import 'package:chat/screens/chats/components/chat_card.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class ChatsBody extends StatelessWidget {
  const ChatsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, defaultPadding),
          color: primaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: 'Recent Message',
              ),
              const SizedBox(width: defaultPadding),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              press: () => Navigator.push<void>(
                context,
                MaterialPageRoute(builder: (_) => const MessagesScreen()),
              ),
              chat: chatsData[index],
            ),
          ),
        ),
      ],
    );
  }
}
