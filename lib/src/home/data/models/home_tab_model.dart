import 'package:flutter/material.dart';

import '../../domain/entities/home_tab.dart';

class HomeTabModel extends HomeTab {
  const HomeTabModel({
    required super.index,
    required super.title,
    required super.icon,
    required super.routePath,
  });

  factory HomeTabModel.fromJson(Map<String, dynamic> json) {
    return HomeTabModel(
      index: json['index'] as int,
      title: json['title'] as String,
      icon: json['icon'] as IconData,
      routePath: json['routePath'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'title': title,
      'icon': icon,
      'routePath': routePath,
    };
  }
}
