import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                  color: Colors.amber,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amber
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
