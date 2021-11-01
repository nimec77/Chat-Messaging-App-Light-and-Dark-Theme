enum ChatMessageType { text, audio, image, video }
enum MessageStatus { notSent, notView, viewed }

class ChatMessage {
  ChatMessage({
    this.text,
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });

  final String? text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

}

final demoChatMessages = [
  ChatMessage(
    text: 'Hi Sajol,',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: 'Hello, How are you?',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: '',
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: '',
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: 'Error happen',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.notSent,
    isSender: true,
  ),
  ChatMessage(
    text: 'This looks great man!!',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: 'Glad you like it',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.notView,
    isSender: true,
  ),
];
