// Copyright (c) 2016, John Ryan. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@JS('SQL')
library sql;

import 'package:js/js.dart';

@JS()
class Database {
  external Database([List<int> data]);
  external run(String sql);
  external List<QueryResult> exec(String sql);
  external void each(String sql);
  external prepare(String sql, {dynamic params});
  external List export();
  external void close();
}

@JS()
class Statement {
  external bool bind();
}

@JS()
class QueryResult {
  List<String> columns;
  List<List<dynamic>> values;
}
