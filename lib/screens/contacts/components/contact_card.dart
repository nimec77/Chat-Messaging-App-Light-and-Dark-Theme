import 'package:chat/components/circle_avatar_with_active_indicator.dart';
import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.name,
    required this.number,
    required this.image,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final String name, number, image;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      onTap: () {},
      leading: CircleAvatarWithActiveIndicator(
        image: image,
        isActive: isActive,
        radius: 28,
      ),
      title: Text(name),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding / 2),
        child: Text(
          number,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
          ),
        ),
      ),
    );
  }
}
