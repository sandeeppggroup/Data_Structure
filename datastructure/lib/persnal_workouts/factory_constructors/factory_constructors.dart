// class DatabaseConnection {
//   final String _host;
//   final int _port;

//   DatabaseConnection._(this._host, this._port);

//   factory DatabaseConnection.local() {
//     return DatabaseConnection._('localhost', 5432);
//   }

//   factory DatabaseConnection.remote(String host) {
//     return DatabaseConnection._(host, 5432);
//   }
// }

// void main() {
//   var localConnection = DatabaseConnection.local();
//   var remoteConnection = DatabaseConnection.remote('example.com');

//   print('Local Connection: ${localConnection._host}:${localConnection._port}');
//   print(
//       'Remote Connection: ${remoteConnection._host}:${remoteConnection._port}');
// }

class Currency {
  final String code;
  final String symbol;

  Currency(this.code, this.symbol);

  factory Currency.usDollar() {
    return Currency('USD', '\$');
  }

  factory Currency.euro() {
    return Currency('EUR', '€');
  }
}

void main() {
  var usDollar = Currency.usDollar();
  var euro = Currency.euro();

  print('US Dollar: ${usDollar.symbol}');
  print('Euro: ${euro.symbol}');
}
