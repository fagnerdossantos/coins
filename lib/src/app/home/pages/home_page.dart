import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/global/components/continent_box.dart';
import 'package:coins/src/app/global/components/refresh_button.dart';
import 'package:coins/src/app/home/components/price_banner_box.dart';
import 'package:coins/src/app/price/widgets/price_builder.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final CoinsBlocState state;
  const HomePage({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size
    final Size size = MediaQuery.of(context).size;

    final double height = size.height;

    return SafeArea(
      child: Scaffold(
        // Background Color
        backgroundColor: white.withOpacity(0.9),

        // BODY
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 10,
          ),

          //
          child: Column(
            children: [
              // Principal Price Banner
              PriceBannerBox(
                size: size,
                state: state,
              ),

              VerticalSpace(height: height * .01),

              // Continents
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  // Count
                  itemCount: 5,

                  // builder
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ContinentBox(
                        id: index,
                      ),
                    );
                  },
                ),
              ),

              VerticalSpace(height: height * .05),

              //
              Expanded(
                child: PriceBuilder(
                  size: size,
                  state: state,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: RefreshButton(
          state: state,
        ),
      ),
    );
  }
}
