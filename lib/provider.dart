import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nwes/models/modelsss.dart';
import 'package:nwes/services/servieces.dart';


class new_provider extends ChangeNotifier
{
  models? obj;
  Future<void> fechdata()async
  {
    obj=await news_ser.get();
    notifyListeners();
  }
}