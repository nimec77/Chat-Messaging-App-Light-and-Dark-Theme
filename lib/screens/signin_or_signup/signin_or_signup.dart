import 'package:chat/components/primary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SignInOrSingUp extends StatelessWidget {
  const SignInOrSingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/logo_light.png'
                    : 'assets/images/logo_dark.png',
                height: 146,
              ),
              const Spacer(),
              PrimaryButton(
                press: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(builder: (_) => const ChatsScreen()),
                ),
                text: 'Sign In',
              ),
              const SizedBox(height: defaultPadding * 1.5),
              PrimaryButton(
                press: () {},
                color: Theme.of(context).colorScheme.secondary,
                text: 'Sign Up',
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
