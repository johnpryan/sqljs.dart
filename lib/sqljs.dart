@JS()
library lib.sqljs;

import "package:js/js.dart";
import "dart:typed_data" show Uint8List;

/// Type definitions for sql.js
/// Project: https://github.com/kripken/sql.js
/// Definitions by: George Wu <https://github.com/Hozuki/>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="../node/node.d.ts" />

// Module SQL
@JS("SQL.Database")
class Database {
  // @Ignore
  Database.fakeConstructor$();
  /*external factory Database();*/
  /*external factory Database(Buffer data);*/
  /*external factory Database(Uint8List data);*/
  /*external factory Database(List<num> data);*/
  external factory Database([dynamic /*Buffer|Uint8List|List<num>*/ data]);
  /*external Database run(String sql);*/
  /*external Database run(String sql, JSMap of <String,num|String|Uint8List> params);*/
  /*external Database run(String sql, List<num|String|Uint8List> params);*/
  external Database run(String sql,
      [dynamic /*JSMap of <String,num|String|Uint8List>|List<num|String|Uint8List>*/ params]);
  external List<QueryResults> exec(String sql);
  /*external void each(String sql, void callback(JSMap of <String,num|String|Uint8List> obj), void done());*/
  /*external void each(String sql, JSMap of <String,num|String|Uint8List> params, void callback(JSMap of <String,num|String|Uint8List> obj), void done());*/
  /*external void each(String sql, List<num|String|Uint8List> params, void callback(JSMap of <String,num|String|Uint8List> obj), void done());*/
  external void each(
      String sql,
      dynamic /*VoidFunc1<JSMap of <String,num|String|Uint8List>>|JSMap of <String,num|String|Uint8List>|List<num|String|Uint8List>*/ callback_params,
      Function /*VoidFunc0|VoidFunc1<JSMap of <String,num|String|Uint8List>>*/ done_callback,
      [void done()]);
  /*external Statement prepare(String sql);*/
  /*external Statement prepare(String sql, JSMap of <String,num|String|Uint8List> params);*/
  /*external Statement prepare(String sql, List<num|String|Uint8List> params);*/
  external Statement prepare(String sql,
      [dynamic /*JSMap of <String,num|String|Uint8List>|List<num|String|Uint8List>*/ params]);
  external Uint8List JS$export();
  external void close();
  external num getRowsModified();
  external void create_function(String name, Function func);
}

@JS("SQL.Statement")
class Statement {
  // @Ignore
  Statement.fakeConstructor$();
  /*external bool bind();*/
  /*external bool bind(JSMap of <String,num|String|Uint8List> values);*/
  /*external bool bind(List<num|String|Uint8List> values);*/
  external bool bind(
      [dynamic /*JSMap of <String,num|String|Uint8List>|List<num|String|Uint8List>*/ values]);
  external bool step();
  /*external List<num|String|Uint8List> JS$get();*/
  /*external List<num|String|Uint8List> JS$get(JSMap of <String,num|String|Uint8List> params);*/
  /*external List<num|String|Uint8List> JS$get(List<num|String|Uint8List> params);*/
  external List<dynamic /*num|String|Uint8List*/ > JS$get(
      [dynamic /*JSMap of <String,num|String|Uint8List>|List<num|String|Uint8List>*/ params]);
  external List<String> getColumnNames();
  /*external JSMap of <String,num|String|Uint8List> getAsObject();*/
  /*external JSMap of <String,num|String|Uint8List> getAsObject(JSMap of <String,num|String|Uint8List> params);*/
  /*external JSMap of <String,num|String|Uint8List> getAsObject(List<num|String|Uint8List> params);*/
  external dynamic /*JSMap of <String,num|String|Uint8List>*/ getAsObject(
      [dynamic /*JSMap of <String,num|String|Uint8List>|List<num|String|Uint8List>*/ params]);
  /*external void run();*/
  /*external void run(JSMap of <String,num|String|Uint8List> values);*/
  /*external void run(List<num|String|Uint8List> values);*/
  external void run(
      [dynamic /*JSMap of <String,num|String|Uint8List>|List<num|String|Uint8List>*/ values]);
  external void reset();
  external void freemem();
  external bool free();
}

@anonymous
@JS()
abstract class QueryResults {
  external List<String> get columns;
  external set columns(List<String> v);
  external List<List<dynamic /*num|String|Uint8List*/ >> get values;
  external set values(List<List<dynamic /*num|String|Uint8List*/ >> v);
  external factory QueryResults(
      {List<String> columns,
      List<List<dynamic /*num|String|Uint8List*/ >> values});
}

// End module SQL

