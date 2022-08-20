import 'package:flutter/material.dart';
import 'package:submission/theme.dart';
import 'package:submission/widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.email}) : super(key: key);
  final String? email;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('IPHONE STORE'),
        backgroundColor: blueColor,
      ),
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: edge,
            ),
            // TITLE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Welcome, ${widget.email}',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Product',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Expanded(
              child: IphoneCard(gridCount: screenWidth >= 768 ? 4 : 2),
            ),
          ],
        ),
      ),
    );
  }
}
