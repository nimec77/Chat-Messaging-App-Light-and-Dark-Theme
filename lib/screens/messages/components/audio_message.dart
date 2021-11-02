import 'package:chat/constants.dart';
import 'package:chat/models/chat_message.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding * 0.75,
        vertical: defaultPadding / 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: primaryColor.withOpacity(message.isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : primaryColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender ? Colors.white : primaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: message.isSender ? Colors.white : primaryColor.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            '0.37',
            style: TextStyle(
              fontSize: 12,
              color: message.isSender ? Colors.white : null,
            ),
          ),
        ],
      ),
    );
  }
}
