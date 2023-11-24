import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:practical_exam_one/Homepage.dart';

import 'package:practical_exam_one/ModalClass.dart';

class Movieprovider extends ChangeNotifier {
  List<Modalclass> list = [];

  Future<void> Foruri() async {
    final url =
        await get(Uri.parse('https://www.omdbapi.com/?t=$a&apikey=5e1c3c66'));
    print(url.body);
    if (url.statusCode == 200) {
      final Map<String,dynamic> data = json.decode(url.body);
      // list.addAll(data.values.map((json) => Modalclass.fromejson(json)));
      list.add(Modalclass.fromejson(data));
      // list =List<Modalclass>.from(data.map((json) => Modalclass.fromejson(json));
      notifyListeners();
      print("list <<<< $list");
    }
  }
    // var response = await get(url);
    // if (response.statusCode == 200) {
    //     // final  jsonResponse ="["+ response.body+"]";
    //   List data=jsonDecode("["+response.body+"]");
    //   final list=data.map((e) => Modalclass.fromejson(e)).toList();
    //   print(list);
    //   notifyListeners();
    // }

  // static Future<List<Modalclass>> getPosts() async {
  //   var url = Uri.parse("https://jsonplaceholder.typicode.com/albums/1/photos");
  //   final response = await get(url, headers: {"Content-Type": "application/json"});
  //   final Map<String,dynamic> body = json.decode(response.body);
  //   return body.map((e) => Modalclass.fromejson(e as Map<String, dynamic>) as MapEntry Function(String key, dynamic value)).toList();
  // }
}
