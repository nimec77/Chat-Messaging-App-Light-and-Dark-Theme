import 'package:chat/constants.dart';
import 'package:chat/models/chat_message.dart';
import 'package:chat/screens/messages/components/audio_message.dart';
import 'package:chat/screens/messages/components/text_message.dart';
import 'package:chat/screens/messages/components/video_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContains(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return const VideoMessage();
        case ChatMessageType.image:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            const SizedBox(width: kDefaultPadding / 2),
          ],
          messageContains(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({Key? key, this.status}) : super(key: key);

  final MessageStatus? status;

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.notSent:
          return kErrorColor;
        case MessageStatus.notView:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return kPrimaryColor;
      }
      // return Colors.transparent;
    }

    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.notSent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
