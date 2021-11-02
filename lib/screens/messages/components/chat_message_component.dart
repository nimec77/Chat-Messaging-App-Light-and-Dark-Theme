import 'package:chat/constants.dart';
import 'package:chat/models/chat_message.dart';
import 'package:chat/screens/messages/components/audio_message.dart';
import 'package:chat/screens/messages/components/text_message.dart';
import 'package:chat/screens/messages/components/video_message.dart';
import 'package:flutter/material.dart';

class ChatMessageComponent extends StatelessWidget {
  const ChatMessageComponent({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            const SizedBox(width: defaultPadding / 2),
          ],
          messageContain(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus),
        ],
      ),
    );
  }

  Widget messageContain(ChatMessage message) {
    switch (message.messageType) {
      case ChatMessageType.text:
        return TextMessage(message: message);

      case ChatMessageType.audio:
        return AudioMessage(message: message);

      case ChatMessageType.image:
        return const SizedBox();

      case ChatMessageType.video:
        return VideoMessage(message: message);
    }
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({Key? key, required this.status}) : super(key: key);

  final MessageStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding / 2),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: dotColor(context, status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.notSent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }

  Color dotColor(BuildContext context, MessageStatus status) {
    switch (status) {
      case MessageStatus.notSent:
        return errorColor;

      case MessageStatus.notView:
        return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);

      case MessageStatus.viewed:
        return primaryColor;
    }
  }
}
