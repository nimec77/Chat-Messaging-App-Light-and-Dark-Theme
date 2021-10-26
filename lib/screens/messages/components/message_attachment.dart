import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class MessageAttachment extends StatelessWidget {
  const MessageAttachment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MessageAttachmentCard(
            iconData: Icons.insert_drive_file,
            title: 'Document',
            press: () {},
          ),
          MessageAttachmentCard(
            iconData: Icons.image,
            title: 'Gallary',
            press: () {},
          ),
          MessageAttachmentCard(
            iconData: Icons.headset,
            title: 'Audio',
            press: () {},
          ),
          MessageAttachmentCard(
            iconData: Icons.videocam,
            title: 'Video',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class MessageAttachmentCard extends StatelessWidget {
  const MessageAttachmentCard({Key? key, required this.press, required this.iconData, required this.title})
      : super(key: key);

  final VoidCallback press;
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding * 0.75),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconData,
                size: 20,
              ),
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.8),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
