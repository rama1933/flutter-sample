import 'package:flutter/material.dart';
import 'package:submission/model/product.dart';
import 'package:submission/pages/detail/detail.dart';
import 'package:submission/theme.dart';

class IphoneCard extends StatefulWidget {
  final int gridCount;

  // ignore: use_key_in_widget_constructors
  const IphoneCard({required this.gridCount});

  @override
  State<IphoneCard> createState() => _IphoneCardState();
}

class _IphoneCardState extends State<IphoneCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Iphone items = iphoneList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(iphone: items),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset(
                          items.imageAsset,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Expanded(
                      child: Text(
                        items.name,
                        style: blackTextStyle.copyWith(fontSize: 20),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: iphoneList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget.gridCount,
          childAspectRatio: 2 / 3,
        ),
      ),
    );
  }
}
