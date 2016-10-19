# sqljs.dart

A dart wrapper for kipken/sql.js

## Usage

```dart
    import 'package:sqljs/sqljs.dart';

    main() {
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
    }
```

## Generating

This package uses `dart_js_facade_gen`.  To generate a library from the
typescript definition file run:

```
dart_js_facade_gen lib/sqljs.d.ts > lib/sqljs.dart
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/johnpryan/sqljs.dart/issues
