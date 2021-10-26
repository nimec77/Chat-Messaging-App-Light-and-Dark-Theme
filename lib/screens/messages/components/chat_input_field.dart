import 'package:chat/constants.dart';
import 'package:chat/screens/messages/components/message_attachment.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  ChatInputFieldState createState() => ChatInputFieldState();
}

class ChatInputFieldState extends State<ChatInputField> {
  bool _showAttachment = false;

  void _updateAttachmentState() {
    setState(() {
      _showAttachment = !_showAttachment;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -4),
                  blurRadius: 32,
                  color: const Color(0xFF087949).withOpacity(0.08),
                ),
              ],
            ),
            child: Row(
              children: [
                const Icon(Icons.mic, color: kPrimaryColor),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Row(
                    children: [
                      const SizedBox(width: kDefaultPadding / 4),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type message',
                            suffixIcon: SizedBox(
                              width: 65,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: _updateAttachmentState,
                                    child: Icon(
                                      Icons.attach_file,
                                      color: _showAttachment
                                          ? kPrimaryColor
                                          : Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (_showAttachment) const MessageAttachment(),
        ],
      ),
    );
  }
}
