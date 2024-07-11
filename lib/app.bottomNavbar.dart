
import 'package:dialerapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomCenter, children: [
        ClipPath(
          clipper: SemicircleClipper(),
          child: Container(
            width: double.infinity,
            height: 80,
            color: ColorPallete.dialer,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 10,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(CupertinoIcons.home)),
                ),
                Positioned(
                    top: 35,
                    right: 60,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.phone))),
                Positioned(
                    top: 35,
                    left: 60,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.chat_bubble))),
              ],
            ),
          ),
        ),
        ClipPath(
          clipper: SemicircleClipper(),
          child: Container(
            width: 100,
            height: 20,
            color: Colors.black,
          ),
        )
      ]);
  }
}
class SemicircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, -size.height, size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
