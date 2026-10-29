import 'package:flutter/material.dart';

import '../entities/home_constants.dart';

//add comment
abstract class HomeRepository {
  HomeConstants getHomeConstants({required BuildContext context});
}
