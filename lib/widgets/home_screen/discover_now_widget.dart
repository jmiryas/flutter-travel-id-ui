import 'package:flutter/material.dart';

class DiscoverNowWidget extends StatelessWidget {
  const DiscoverNowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 50.0,
        margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Discover now",
              style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            ClipOval(
              child: Image(
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                  image: AssetImage("images/user/user.jpg")),
            )
          ],
        ),
      ),
    );
  }
}
