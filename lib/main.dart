import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  await preCacheImages();
  runApp(AppWidget());
}

Future<void> preCacheImages() async {
  await precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/icons/login_new.svg'),
      null);
}
