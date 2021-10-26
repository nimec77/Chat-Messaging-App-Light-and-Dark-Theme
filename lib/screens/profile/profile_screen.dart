import 'package:chat/components/primary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/profile/components/info.dart';
import 'package:chat/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            const ProfilePic(image: 'assets/images/user_2.png'),
            Text(
              'Annette Black',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Divider(height: kDefaultPadding * 2),
            const Info(
              infoKey: 'User ID',
              info: '@annette.me',
            ),
            const Info(
              infoKey: 'Location',
              info: 'New York, NYC',
            ),
            const Info(
              infoKey: 'Phone',
              info: '(239) 555-0108',
            ),
            const Info(
              infoKey: 'Email Address',
              info: 'demo@mail.com',
            ),
            const SizedBox(height: kDefaultPadding),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 120,
                child: PrimaryButton(
                  padding: const EdgeInsets.all(5),
                  text: 'Edit Profile',
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
