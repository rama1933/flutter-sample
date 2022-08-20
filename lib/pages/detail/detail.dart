import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:submission/model/product.dart';
import 'package:submission/theme.dart';

class DetailPage extends StatelessWidget {
  final Iphone iphone;

  // ignore: use_key_in_widget_constructors
  const DetailPage({required this.iphone});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 992) {
          return DetailWebPage(iphone: iphone);
        } else {
          return DetailMobilePage(iphone: iphone);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Iphone iphone;

  // ignore: use_key_in_widget_constructors
  const DetailMobilePage({required this.iphone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.asset(
                iphone.imageAsset,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 400,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                    color: blueColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),

                      /// PRODUCT NAME
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  iphone.name,
                                  style: blackTextStyle.copyWith(
                                      fontSize: 24, color: whiteColor),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      /// RELEASED
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          'Released',
                          style: regulerTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          iphone.released,
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      /// LCD
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          'LCD',
                          style: regulerTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          iphone.lcd,
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      /// CHIPSET
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          'CHIPSET',
                          style: regulerTextStyle.copyWith(
                              fontSize: 16, color: whiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          iphone.chip,
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '\$${iphone.price}',
                              style: whiteTextStyle.copyWith(
                                fontSize: 30,
                              ),
                            ),
                            ElevatedButton(
                              // ignore: sort_child_properties_last
                              child: Text(
                                'Buy Now',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: greenColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("You Buying Iphone"),
                                ));
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: redColor,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  const FavoriteButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final Iphone iphone;
  // ignore: use_key_in_widget_constructors
  const DetailWebPage({required this.iphone});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: redColor,
                          child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: whiteColor,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              // ignore: sort_child_properties_last
                              child: Image.asset(
                                iphone.imageAsset,
                                height: 400,
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),

                                /// PRODUCT NAME
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            iphone.name,
                                            style: blackTextStyle.copyWith(
                                                fontSize: 24,
                                                color: blackColor),
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),

                                /// RELEASED
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    'Released',
                                    style: regulerTextStyle.copyWith(
                                        fontSize: 16, color: blackColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    iphone.released,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),

                                /// LCD
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    'LCD',
                                    style: regulerTextStyle.copyWith(
                                        fontSize: 16, color: blackColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    iphone.lcd,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),

                                /// CHIPSET
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    'CHIPSET',
                                    style: regulerTextStyle.copyWith(
                                        fontSize: 16, color: blackColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  child: Text(
                                    iphone.chip,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: edge,
                                  ),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width -
                                      (2 * edge),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '\$${iphone.price}',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 24,
                                        ),
                                      ),
                                      ElevatedButton(
                                        // ignore: sort_child_properties_last
                                        child: Text(
                                          'Buy Now',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 18,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: greenColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                        ),
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                            content: Text("You Buying Iphone"),
                                          ));
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            _isFavorite = !_isFavorite;
          });
        },
      ),
    );
  }
}
