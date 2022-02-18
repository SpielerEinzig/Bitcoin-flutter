import 'package:http/http.dart' as http;

createNewLiteCoinWallet() async {
  print("started litecoin service");
  // http.Response response = await http.post(
  //   Uri.parse("https://coinremitter.com/api/v3/LTC/get-fiat-to-crypto-rate"),
  //   headers: {
  //     "header": "content-type: multipart/form-data",
  //   },
  //   body: {
  //     "api_key":
  //         "\$2y\$10\$xZRavmDY8hQwr.XFxCcB/.S9IMrk.sGnbUHbDSDHoD0rHzJJRW27G",
  //     "password": "speedforce",
  //     "label": "inApp",
  //     "fiat_symbol": "USD",
  //     "fiat_amount": "6",
  //   },
  // );

  http.Response response = await http.post(
    Uri.parse("https://coinremitter.com/api/v3/LTC/validate-address"),
    headers: {
      "header": "content-type: multipart/form-data",
    },
    body: {
      "api_key":
          "\$2y\$10\$xZRavmDY8hQwr.XFxCcB/.S9IMrk.sGnbUHbDSDHoD0rHzJJRW27G",
      "password": "speedforce",
      "address": "MTokmyYZ3YkKx18BjrFwiuBqwQ2CMQg8kv",
    },
  );

  print(response.body);
  print(response.statusCode);
}
