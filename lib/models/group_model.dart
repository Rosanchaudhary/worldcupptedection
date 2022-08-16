// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:worldcupforcast/models/country_model.dart';

class Group extends Equatable {
  final String symbol;
  final String name;
  final Country countryA;
  final Country countryB;
  final Country countryC;
  final Country countryD;

  const Group({
    required this.symbol,
    required this.name,
    required this.countryA,
    required this.countryB,
    required this.countryC,
    required this.countryD,
  });

  @override
  List<Object?> get props => [symbol,name, countryA, countryB, countryC, countryD];
}
