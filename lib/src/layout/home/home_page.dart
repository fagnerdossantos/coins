import 'package:coins/src/api/helpers/continents_helper.dart';
import 'package:coins/src/layout/components/labels/region_label.dart';
import 'package:coins/src/layout/components/price/price_box_builder.dart';
import 'package:coins/utils/consts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      // BackGround color
      backgroundColor: deepPurple,

      // App Bar
      appBar: AppBar(
        title: const Text(
          "Cotação",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: deepPurple,
      ),

      // App Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Home Label
          const Expanded(
            child: Text(
              "Principais moedas do mercado",
              style: TextStyle(
                fontSize: 18,
                color: white,
              ),
            ),
          ),

          // Home Content
          ClipRRect(
            // Shape
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),

            child: Container(
              // Size
              height: height * .8,
              width: width,
              padding: const EdgeInsets.only(left: 5),

              // Color
              color: white,

              child: ListView(
                children: [
                  // AMERICA (CONTINENT)
                  const RegionLabel(
                    label: "América",
                  ),
                  PriceBoxBuilder(
                    size: size,
                    continent: Continents.america,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // EUROPE
                  const RegionLabel(
                    label: "Europa",
                  ),
                  PriceBoxBuilder(
                    size: size,
                    continent: Continents.europe,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // OCEANIA
                  const RegionLabel(
                    label: "Oceania",
                  ),
                  PriceBoxBuilder(
                    size: size,
                    continent: Continents.oceania,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // ASIA
                  const RegionLabel(
                    label: "Ásia",
                  ),
                  PriceBoxBuilder(
                    size: size,
                    continent: Continents.asia,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // AFRICA
                  const RegionLabel(
                    label: "ÁFRICA",
                  ),
                  PriceBoxBuilder(
                    size: size,
                    continent: Continents.africa,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
