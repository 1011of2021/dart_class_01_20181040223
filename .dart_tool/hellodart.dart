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

// 一个简单的 DART 程序
void printInteger(int aNumber) {
  print(' This number is $aNumber. ');
}

int _readThermometer() {
  return 42;
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
}

void main(List<String> arguments) {
  var number = 42;
  printInteger(number);

  variable();
}