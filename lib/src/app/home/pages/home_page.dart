import 'package:coins/src/app/bloc/coins_bloc.dart';
import 'package:coins/src/app/home/components/home_price.dart';
import 'package:coins/src/app/price/components/price_builder.dart';
import 'package:coins/src/effects/carousel_card_builder.dart';
import 'package:coins/src/effects/corousel_item_model.dart';
import 'package:coins/src/helpers/coins_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<CarouselItemModel> crsItens = [
  CarouselItemModel(
      title: "África",
      subtitle: "Continent",
      image: "assets/images/brazil.png"),
  CarouselItemModel(
      title: "América",
      subtitle: "Continent",
      image: "assets/images/brazil.png"),
  CarouselItemModel(
      title: "Ásia", subtitle: "Continent", image: "assets/images/brazil.png"),
  CarouselItemModel(
      title: "Europa",
      subtitle: "Continent",
      image: "assets/images/brazil.png"),
  CarouselItemModel(
      title: "Oceania",
      subtitle: "Continent",
      image: "assets/images/brazil.png"),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    final blocController = BlocProvider.of<CoinsBloc>(context);

    // Getting the screen size
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        // Background Color
        backgroundColor: Colors.white.withOpacity(0.9),

        // BODY
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 10,
          ),
          child: Column(
            children: [
              // Principal price area
              Expanded(
                flex: 3,
                child: Center(
                  child: HomepriceBox(
                    size: size,
                  ),
                ),
              ),

              // Price info and boxes
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    //
                    CarouselWidget(items: crsItens),

                    SizedBox(
                      // Size
                      height: 130,
                      width: size.width,

                      child: PriceBuilder(size: size),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: Row(
          children: [
            // Load State
            FloatingActionButton(
              onPressed: () => blocController.add(
                FetchCoinPriceEvent(),
              ),
              child: Text("Fetch"),
            ),

            // Filtered
            FloatingActionButton(
              onPressed: () => blocController.add(
                FilterCoinPriceEvent(Continents.america),
              ),
              child: Text("Filter"),
            ),
          ],
        ),
      ),
    );
  }
}

class CoinInfoArea extends StatelessWidget {
  final Size size;
  const CoinInfoArea({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    // Size
    // final double height = size.height;
    final double width = size.width;

    return SizedBox(
      height: 220,
      width: width,
      child: Column(
        children: const [
          // Title
          Text(
            "Country name",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),

          // current
          Text(
            "Current Price",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Max
          Text(
            "Price max",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Min
          Text(
            "Price min",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
