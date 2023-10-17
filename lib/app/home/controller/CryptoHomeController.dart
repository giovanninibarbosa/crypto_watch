import 'package:crypto_watch/app/home/repository/CoinGeckoRepository.dart';
import 'package:get/get.dart';

class CryptoHomeController extends GetxController with StateMixin {
  final CoinGeckoRepositoryImpl coinGeckoRepository;

  CryptoHomeController(
    this.coinGeckoRepository,
  );

  @override
  void onInit() {
    super.onInit();
    findCripto();
  }

  void findCripto() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await coinGeckoRepository.findCryptoInfoByCoinGeckoApi();
      change(dados, status: RxStatus.success());
    } catch (e) {
      // ignore: avoid_print
      print('O Erro é: $e');
      change([], status: RxStatus.error('Erro ao carregar os dados da API'));
    }
  }
}
