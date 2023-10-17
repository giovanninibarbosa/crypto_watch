import 'package:crypto_watch/app/home/controller/CryptoHomeController.dart';
import 'package:crypto_watch/app/home/repository/CoinGeckoRepository.dart';
import 'package:get/get.dart';

class CryptoHomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<CoinGeckoRepositoryImpl>(CoinGeckoRepository());
    Get.put(CryptoHomeController(Get.find()));
  }
}
