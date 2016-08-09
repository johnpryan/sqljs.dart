import 'dart:html';
import 'dart:convert';
import 'dart:typed_data';
import 'package:sqllite/sqllite.dart';

InputElement uploadInput;
Database db;
main() {
  uploadInput = querySelector('#fileupload');
  uploadInput.onChange.listen(importDb);
}

importDb(evt) {
  final files = uploadInput.files;
  if (files.length == 1) {
    final file = files[0];
    final reader = new FileReader();
    reader.onLoadEnd.listen((e) {
      var upload = reader.result.toString().split(',').elementAt(1);
      var dbBytes = BASE64.decode(upload);
      fillDB(dbBytes);
    });
    reader.readAsDataUrl(file);
  }
}

fillDB(List<int> data) {
  db = new Database(new Uint8List.fromList(data));
  var output = db.exec('SELECT * from LIST_ITEM');
  for (var row in output[0].values) {
    print(row);
  }
}
