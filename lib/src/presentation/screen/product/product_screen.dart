import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/fixed_button.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  List familiarShoes = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  int currentIndex = 0;
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              // width: MediaQuery.of(context).size.width - (2 * defaultMargin),
              child: AlertDialog(
                contentPadding:
                    EdgeInsets.only(bottom: 45, top: 10, right: 8, left: 8),
                backgroundColor: backgroundColor3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            // alignment: Alignment.centerLeft,
                            icon: Icon(Icons.close),
                            color: primaryTextColor,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/image_success.png',
                        width: 100,
                      ),
                      SizedBox(height: 12),
                      CostumText(
                        text: "Hurray :)",
                        textStyle: primaryTextStyle,
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      SizedBox(height: 12),
                      CostumText(
                        text: "Item added successfully",
                        textStyle: subtitleTextStyle,
                      ),
                      SizedBox(height: 20),
                      FixedButton(
                          text: "View my cart",
                          buttonColor: primaryColor,
                          textStyle: primaryTextStyle,
                          navigateTo: '/cart')
                    ],
                  ),
                ),
              ),
            );
          });
    }

    Widget indicator(int index) {
      return Container(
        height: 4,
        width: currentIndex == index ? 16 : 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : secondaryTextColor,
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
            borderRadius: BorderRadius.circular(6)),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Image.asset(
                  'assets/icon_cart.png',
                  width: 22,
                )
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map((image) => Image.asset(
                      image,
                      width: MediaQuery.of(context).size.width,
                      height: 310,
                      fit: BoxFit.cover,
                    ))
                .toList(),
            options: CarouselOptions(
              enableInfiniteScroll: false,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      int index = -1;
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            color: backgroundColor1),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: defaultMargin,
                  left: defaultMargin,
                  right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CostumText(
                        text: "TERREX URBAN LOW",
                        textStyle: primaryTextStyle,
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      CostumText(
                        text: "Hiking",
                        textStyle: subtitleTextStyle,
                        fontSize: 12,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isFav = !isFav;
                        },
                      );
                      if (isFav) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: secondaryColor,
                            content: CostumText(
                              text: "Has been added to the Favorite",
                              textStyle: primaryTextStyle,
                              align: TextAlign.center,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: alertColor,
                            content: CostumText(
                              text: "Has been removed from the Favorite",
                              textStyle: primaryTextStyle,
                              align: TextAlign.center,
                            ),
                          ),
                        );
                      }
                    },
                    child: Image.asset(
                      isFav
                          ? 'assets/button_favorite_enable.png'
                          : 'assets/button_favorite.png',
                      width: 46,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 50,
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumText(
                        text: "Price starts from", textStyle: primaryTextStyle),
                    CostumText(
                      text: "\$143,98",
                      textStyle: priceTextStyle,
                      fontSize: 16,
                      fontWeight: semiBold,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: defaultMargin),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CostumText(
                    text: "Description",
                    textStyle: primaryTextStyle,
                    fontWeight: medium,
                  ),
                  SizedBox(height: 12),
                  CostumText(
                    text:
                        "Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.",
                    textStyle: subtitleTextStyle,
                    fontWeight: light,
                    textOverflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),

            SizedBox(height: defaultMargin),

            // FAMILIAR SHOES
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: CostumText(
                      text: "Familiar shoes",
                      textStyle: primaryTextStyle,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: familiarShoes.map((image) {
                      index++;
                      return Container(
                        margin: EdgeInsets.only(left: index == 0 ? 16 : 0),
                        child: familiarShoesCard(image),
                      );
                    }).toList()),
                  )
                ],
              ),
            ),
            // BUTTON
            Container(
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail-chat');
                    },
                    child: Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/button_chat.png'))),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          showSuccessDialog();
                        },
                        child: CostumText(
                          text: "Add to cart",
                          textStyle: primaryTextStyle,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor6,
        body: ListView(
          children: [header(), content()],
        ));
  }
}
