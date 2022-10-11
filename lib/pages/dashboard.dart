import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/contents/contents.dart';
import 'package:wallet_ui/utils/utils.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          SafeArea(
            child: Column(
              children: [
                //Cards header
                headCardTitle(
                  context,
                  prefixText: 'My',
                  suffixText: ' Cards',
                ),
                const SizedBox(height: 25),
                //Card
                SizedBox(
                  height: 200,
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      card(
                        context,
                        color: Colors.deepPurple[400],
                        balance: 567.989,
                        last4Digites: 6656,
                        expiryMounth: 03,
                        expiryYear: 24,
                        isVisa: true,
                      ),
                      card(
                        context,
                        color: Colors.greenAccent[400],
                        balance: 387.708,
                        last4Digites: 5566,
                        expiryMounth: 11,
                        expiryYear: 23,
                        isVisa: false,
                      ),
                      card(
                        context,
                        color: Colors.blueAccent[400],
                        balance: 487.431,
                        last4Digites: 4566,
                        expiryMounth: 6,
                        expiryYear: 24,
                        isVisa: true,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25.0),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect:
                      ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
                ),
                const SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Send button
                      customButton(assetName: 'send.png', buttonText: 'Send'),

                      //Pay button
                      customButton(
                          assetName: 'credit-card.png', buttonText: 'Pay'),

                      //Bills button
                      customButton(assetName: 'bills.png', buttonText: 'Bills'),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                //Custom Lits Tile
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      customListTile(
                        title: 'Statistic',
                        subTitle: 'Payments and income',
                        assetName: 'analysis.png',
                      ),
                      customListTile(
                        title: 'Transactions',
                        subTitle: 'Transaction History',
                        assetName: 'transaction.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomNavBarButton(
                  icon: Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
                bottomNavBarButton(
                  icon: Icons.settings,
                  size: 32,
                  color: Colors.grey[400],
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
