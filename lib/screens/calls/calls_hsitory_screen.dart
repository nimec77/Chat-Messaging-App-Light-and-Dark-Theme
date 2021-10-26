import 'package:chat/constants.dart';
import 'package:chat/screens/calls/components/call_history_card.dart';
import 'package:flutter/material.dart';

class CallsHistoryScreen extends StatelessWidget {
  const CallsHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // For demo
            ...List.generate(
              kDemoContactsImage.length,
              (index) => CallHistoryCard(
                name: 'Darlene Robert',
                image: kDemoContactsImage[index],
                time: '3m ago',
                isActive: index.isEven,
                isOutgoingCall: index.isOdd,
                isVideoCall: index.isEven,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
