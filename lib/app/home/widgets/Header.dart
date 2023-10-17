import 'package:crypto_watch/app/home/controller/CryptoHomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  final CryptoHomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black87,
          ),
        ),
        Positioned(
          top: 70,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Crypto Markets ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.findCripto();
                  },
                  child: const SizedBox(
                    width: 24,
                    height: 24,
                    child: Icon(
                      Icons.update_sharp,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
