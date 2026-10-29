import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class HomeTab extends Equatable {
  final int index;
  final String title;
  final IconData icon;
  final String routePath;

  const HomeTab({
    required this.index,
    required this.title,
    required this.icon,
    required this.routePath,
  });

  @override
  List<Object?> get props => [index, title, icon, routePath];
}
