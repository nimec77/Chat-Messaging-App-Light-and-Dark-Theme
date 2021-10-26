import 'package:chat/constants.dart';
import 'package:chat/screens/contacts/components/contact_card.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('People'),
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: ListView.builder(
        itemCount: kDemoContactsImage.length,
        itemBuilder: (context, index) => ContactCard(
          name: 'Jenny Wilson',
          number: '(239) 555-0108',
          image: kDemoContactsImage[index],
          isActive: index.isEven, // for demo
          press: () {},
        ),
      ),
    );
  }
}
