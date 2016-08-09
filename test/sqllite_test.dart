// Copyright (c) 2016, John Ryan. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:sqllite/sqllite.dart';
import 'package:test/test.dart';

void main() {
  group('SQL statements', () {

    test('example', () async {
      var db = new Database();
      var statement = """
        CREATE TABLE hello (a int, b char);
        INSERT INTO hello VALUES (0, 'hello');
        INSERT INTO hello VALUES (1, 'world');
      """;
      db.run(statement);
      var res = db.exec("SELECT * FROM hello");
      for (var value in res.first.values) {
        print('row: ${value[0]} ${value[1]}');
      }
    });

    Database db;
    setUp(() {
      db = new Database();
    });
    tearDown(() {
      db.close();
    });
    test('can be executed', () async {
      expect(db, isNotNull);
      var statement = """
        CREATE TABLE hello (a int, b char);
        INSERT INTO hello VALUES (0, 'hello');
        INSERT INTO hello VALUES (1, 'world');
      """;
      db.run(statement);
      var res = db.exec("SELECT * FROM hello");
      expect(res, isNotNull);
      expect(res, new isInstanceOf<List<QueryResult>>());
      expect(res.length, equals(1));
      expect(res.first, new isInstanceOf<QueryResult>());
      expect(res.first.columns.length, equals(2));
      expect(res.first.values.length, equals(2));
      expect((res.first.values.first as List)[0], equals(0));
      expect((res.first.values.first as List)[1], equals('hello'));
    });
  });
}
