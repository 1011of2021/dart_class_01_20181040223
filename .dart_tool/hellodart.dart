/*
# -*- coding: utf-8 -*-
@File    :   hellodart.dart
@Time    :   2021/10/11 21:45:44
@Author  :   LiShangli
@Version :   1.0
@Contact :   2840670989@qq.com
@License :   (C)Copyright 2021-2022
@Desc    :   None
*/
import 'dart:io';
import 'dart:math';
import 'dart:async';

// 一个简单的 DART 程序
void printInteger(int aNumber) {
  print(' This number is $aNumber. ');
}

int _readThermometer() {
  return 42;
}

class point {
  double? x;
  double? y;

  Point(double x, double y) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }
}

void variable() {
  // 变量
  var name1 = 'liufengyuantadie';
  Object name2 = 'iufengyuantadie';
  String name3 = 'iufengyuantadie';

  print(' We got a var name $name1, Object name $name2, String name $name3');

  // 空安全
  int? lineCount;
  assert(lineCount == null);
  print(' 空安全断言通过 ');

  // 延迟赋值
  late String desc;
  desc = '山本';
  print(' 延迟赋值 $desc ');

  // 懒初始化
  late int temperature = _readThermometer();
  print(' Lazily Initialized: $temperature ');

  // 常量
  final name4 = 'iufengyuantadie';
  print(' We got final name: $name4 ');

  // 编译时常量
  const bar1 = 10000;
  double atm = 3.14 * bar1;
  print(' We got 3.14 x const bar = $atm ');

  // 常量不可变
  var foo = [];

  foo = [1, 2, 3, 4];
  print(' Only var foo can change: $foo ');

  // 类型检查与强制类型转换
  const Object i = 2893;
  const list = [i as int];
  print(' 强制类型转换 i as int: $list ');

  // map 生成和类型检查
  const map = {if (i is int) i: 'int'};
  print(' 类型检查 map: $map ');

  // 集合生成与类型检查
  const set = {if (list is List<int>) ...list};
  print(' 类型检查 集合: $set ');
  const int j = 1;
  //If和Else
  if (j == 0) {
    print('112');
  } else {
    print(' 223');
  }
  var message = StringBuffer(' liufengyuanshiwoerzi');
  for (var i = 1; i < 5; i++) {
    message.write('!');
    print(message);
  }
  var callbacks = [];
  for (var i = 0; i < 2; ++i) {
    callbacks.add(() => print(i));
    //print(callbacks);
  }
  callbacks.forEach((c) => c());
  for (var candidate in callbacks) {
    print(candidate.toString());
  }
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print('executeClosed');
      break;
    case 'PENDING':
      print('executePending()');
      break;
    case 'APPROVED':
      print('executeApproved()');
      break;
    case 'DENIED':
      print('executeDenied()');
      break;
    case 'OPEN':
      print('executeOpen()');
      break;
    default:
      print('executeUnknown()');
  }
  var number = 0;
  assert(number < 100);
  //throw 'liu feng yuan is wo er!';
  try {
    var a = 0;
    a = a + 1;
  } finally {
    print('1111');
  }
  var p1 = Point(2, 2);
  print('the type of a is ${p1.runtimeType}');

  var point1 = point();
  point1.x = 4;
  assert(point1.x == 4);
  assert(point1.y == null);

  var names = <String>[];
  names.addAll(['liu', 'feng', 'yuan', 'shi', 'wo', 'er', 'zi']);
  print(names);
}

void main(List<String> arguments) {
  var number = 42;
  printInteger(number);

  variable();
}
