import 'package:flutter/material.dart';

import '../constants.dart';

class RecentSearchContacts extends StatelessWidget {
  const RecentSearchContacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent search",
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .color!
                      .withOpacity(0.32),
                ),
          ),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: Stack(
              children: [
                ...List.generate(
                  kDemoContactsImage.length + 1,
                  (index) => Positioned(
                    left: index * 48,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        shape: BoxShape.circle,
                      ),
                      child: index < kDemoContactsImage.length
                          ? CircleAvatar(
                              radius: 26,
                              backgroundImage:
                                  AssetImage(kDemoContactsImage[index]),
                            )
                          : RoundedCounter(total: 35),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoundedCounter extends StatelessWidget {
  final int total;

  const RoundedCounter({Key? key, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? Color(0xFF2E2F45)
            : Color(0xFFEBFAF3),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          "$total+",
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
