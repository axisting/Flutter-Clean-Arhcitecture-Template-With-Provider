import 'package:internet_connection_checker/internet_connection_checker.dart';

// * Burada internet bağlantısının olup olmadığını kontrol eden bir method var var.
// * Yine İnternet hakkındaki diğer methodları da burada yazabiliriz.
// * Çok uzarsa sanal ve implemente edilmiş sınıflar ayrı dosyalarda değerlendirilebilir.
abstract class NetworkInfo {
  Future<bool>? get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool>? get isConnected => connectionChecker.hasConnection;
}
