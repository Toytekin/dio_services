import 'package:flutter/material.dart';
import 'package:flutteradvance/internetten_vericekme.dart/anasayfa.dart';
import 'package:flutteradvance/internetten_vericekme.dart/model.dart';
import 'package:flutteradvance/internetten_vericekme.dart/services.dart';

abstract class ViewModel extends State<AnasafaServices> {
  List<ServicesModel> responsList = [];
  DioServices dioServices = DioServices();

  @override
  void initState() {
    super.initState();
    // Servisden verileri çek
    fetch();
  }

  Future<void> fetch() async {
    responsList = await dioServices.fetchResponse() ?? [];
  }
}
