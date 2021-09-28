import 'package:flutter/material.dart';

class Clipper extends StatelessWidget {
  final double height;

  const Clipper({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 82, 97, 201),
              Colors.blue.shade100
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = 200;

    Path path = Path();
    path.lineTo(0, h - 100);
    path.quadraticBezierTo(w * 0.25, h - 200, w / 2, h - 100);
    path.quadraticBezierTo(w * 0.75, h, w, h - 100);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}