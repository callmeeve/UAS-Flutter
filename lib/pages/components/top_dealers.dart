import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hastaraya/theme.dart';

class TopDealers extends StatelessWidget {
  const TopDealers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          TopDealersCard(
            image: "assets/images/car2.png",
            title: "Mercedes Benz",
            press: () {},
          ),
          TopDealersCard(
            image: "assets/images/car1.png",
            title: "Porsche",
            press: () {},
          ),
          TopDealersCard(
            image: "assets/images/car2.png",
            title: "BMW 6 Series",
            press: () {},
          ),
          TopDealersCard(
            image: "assets/images/car1.png",
            title: "Honda",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class TopDealersCard extends StatelessWidget {
  const TopDealersCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: defaultPadding,
                  top: defaultPadding / 2,
                ),
                width: size.width * 0.8,
                height: 185,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Text(
                  "$title",
                  style: TextStyle(
                      color: textBlack,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
