import 'package:flutter/material.dart';

class ClipContainer extends StatelessWidget {
  final String image;

  final double texttop;
  final double fontsize;
  final double textleft;
  final String text;
  final int rotate;
  ClipContainer(
      {required this.image,
      required this.texttop,
      required this.textleft,
      required this.text,
      required this.rotate,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          Positioned(
            top: texttop,
            left: textleft,
            child: RotatedBox(
                quarterTurns: rotate,
                child: Text(
                  text,
                  style: TextStyle(
                    foreground: Paint()
                      ..color = Colors.white
                      ..strokeWidth = 2.0
                      ..style = PaintingStyle.stroke,
                    fontSize: fontsize,
                    fontFamily: "Bold",
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    var controllpoint = Offset(0, size.height * 0.825);
    var endpoint = Offset(size.width * 0.25, size.height * 0.825);

    path.quadraticBezierTo(
      controllpoint.dx,
      controllpoint.dy,
      endpoint.dx,
      endpoint.dy,
    );
    path.lineTo(size.width * 0.77, size.height * 0.825);
    Offset curvepoint2 = Offset(size.width, size.height * 0.8);
    Offset endpoint2 = Offset(size.width, size.height * 0.650);
    path.quadraticBezierTo(
      curvepoint2.dx,
      curvepoint2.dy,
      endpoint2.dx,
      endpoint2.dy,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
