void main() {
  var record = ('first', a: 1, b: 2, 'last');
  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  print(swap((1, 2)));

  // 通过位置
  (int, String) Record1;
  Record1 = (1, 'hello');

  // 通过命名而不是位置
  ({int a, String b}) Record2;
  Record2 = (a: 1, b: 'hello');

  // 通过位置和命名
  (int a, String b) Record3;
  Record3 = (1, 'hello');

  // 通过位置和命名获取值
  var record2 = ('first', a: 2, b: true, 'last');
  print(record2.$1); // Prints 'first'
  print(record2.a); // Prints 2
  print(record2.b); // Prints true
  print(record2.$2); // Prints 'last'

  // set和list的区别在于set是不可重复的，list是可重复的
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var elements = <String>{};
  elements.add('fluorine'); // 添加一个元素，如果一个元素已经存在，这个操作不会有任何效果
  elements.addAll(halogens);
  print(elements);

  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constantMap[2] = 'Helium'; // 这行代码会导致编译错误 因为map被赋的值是const的

  Map<int, String> gifts = {
    1: 'partridge',
    2: 'turtledoves',
    3: 'golden rings'
  };
  print(gifts[1]);

  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list2);
  // 如果list是null，那么...list会被忽略
  var list3 = [0, ...?list];
  var list4 = [1, ...?list];
  print(list3);
  print(list3.length);
  print(list4);

  // 使用if和for创建集合
  print(['1', if (true) '2', '3']);
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings);

  var nameSet = Set<String>.from(['Seth', 'Kathy', 'Lars']);
  var names = <String>[];
  names.addAll(nameSet);
  print(names);
  print(nameSet);

  // 这里的key是一个占位符 在调用first函数时会被替换成实际的值
  T first<T>(List<T> ts) {
    T tmp = ts[0];
    return tmp;
  }

  first<int>([1, 2, 3]);

  IntList il = [1, 2, 3];
  print(il);

  ListMapper<String> m2 = {
    'a': ['a', 'b', 'c']
  };

  List<int> listOfInt = [];

// Inferred as if you wrote <double>[3.0].
  var listOfDouble = [3.0];

// Inferred as Iterable<int>.
  var ints = listOfDouble.map((x) => x.toInt());

  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
}

// 别名
typedef IntList = List<int>;
// 泛型加别名
typedef ListMapper<T> = Map<T, List<T>>;

//泛型
//定义一个不能被实例化的抽象类
//设置一个泛型T，在子类中指定T的具体类型
abstract class Cache<T> {
  T getByKey(String key);

  void setByKey(String key, T value);
}

//实现一个泛型类
// StringCache类继承自Cache类，指定T的具体类型为String
class StringCache extends Cache<String> {
  @override
  String getByKey(String key) {
    return 'value';
  }

  @override
  void setByKey(String key, String value) {
    print('key: $key, value: $value');
  }
}

// 泛型方法 设置类型范围 这里的T必须是Object的子类，不能是null，当Object是其他类时同理
class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}
