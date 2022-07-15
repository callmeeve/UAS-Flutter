import 'package:flutter/material.dart';
import 'package:hastaraya/theme.dart';
import 'hot_deals.dart';
import 'title_with_view_all_btn.dart';
import 'top_dealers.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return Container(
      child: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWithSearchBox(size: size),
              TitleWithViewAllBtn(title: "Hot Deals", press: () {}),
              const HotDeals(),
              TitleWithViewAllBtn(title: "Top Dealers", press: () {}),
              const TopDealers(),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
