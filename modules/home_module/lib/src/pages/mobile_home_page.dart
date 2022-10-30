import 'package:api_module/api_module.dart';
import 'package:flutter/material.dart';

import 'package:core_module/core_module.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // Get screen size
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      // BackGround color
      backgroundColor: Colors.deepPurple,

      // App Bar
      appBar: AppBar(
        title: const Text(
          "Cotação",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
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
                color: Colors.white,
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
              color: Colors.white,

              child: ListView(
                children: [
                  // AMERICA (CONTINENT)
                  const RegionLabel(
                    label: "América",
                  ),
                  PriceBoxBuilder(
                    size: size,
                    continent: Continent.america,
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
                    continent: Continent.europe,
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
                    continent: Continent.oceania,
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
                    continent: Continent.asia,
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
                    continent: Continent.africa,
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
