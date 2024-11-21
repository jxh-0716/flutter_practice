late String description;

void main() {
  description = 'Dart Practice';
  print(description);
  print('Hello, World!');
  String name = 'Voyager I';
  var year = 1977;
  String name1 = 'Voyager II';
  int? year1 = 1977;
  int LineCount;
  if (year1 != null) {
    LineCount = 1;
  } else {
    LineCount = 0;
  }
  print(LineCount);

  // final 可以在声明变量时初始化，也可以在构造函数中初始化
  // const 只能在声明变量时初始化
  const int year2 = 1977;
  final DateTime now = DateTime.now();
  assert(2 + 3 == 5);

  //写一段is的用法
  var a = 1;
  // var b = 2;
  if (a is int) {
    print('a is int');
  }
  // 写一段as（Typecast）的用法
  const number = 42;
  // const numberAsString = number as String;

  dynamic value = 'hello world';
  var valueAsString = value as String;
  print(valueAsString);

  var valueA = value;
  valueA = '1';
  // 写一个 ??= 的用法
  var a1;
  a1 ??= 3;
  print(a1);
  a1 ??= 5;
  print(a1);

// ～ 用来按位取反
  int num1 = 5; // 二进制: 0000 0101
  int num2 = ~num1; // 二进制: 1111 1010 (十进制为 -6)
  print(num2); // 输出: -6

// 写一个对象 ..（级连运算符） 的用法
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');
  var result = sb.toString();
  print(result);

  //@Deprecated('xx') 用来标记某个方法或者类已经被废弃
  //@ToDo() 用来标记某个方法或者类还未实现
  //@override 用来标记某个方法是重写父类的方法
  //@required 用来标记某个参数是必填的
  //@immutable 用来标记某个类是不可变的
  //@factory 用来标记某个构造函数是工厂构造函数
  //@isTest 用来标记某个方法是测试方法
  //@isTestGroup 用来标记某个类是测试组
  //@Pragma 用来标记某个方法或者类是实验性的
}
