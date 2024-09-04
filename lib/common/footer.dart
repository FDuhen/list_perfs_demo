import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var imagePath = 'assets/banner.jpg';

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          imagePath = 'assets/footer.jpg';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'footer',
      child: Image.asset(
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        imagePath,
      ),
    );
  }
}
