import 'package:mysql1/mysql1.dart';

Future main() async {
  // Open a connection
  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    db: 'flutter_demo',
  ));

  var results = await conn.query('SELECT * FROM flutter_demo.user');
  print(results);

  // Finally, close the connection
  await conn.close();
}
