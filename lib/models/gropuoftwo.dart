// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:worldcupforcast/models/country_model.dart';

class GroupOfTwo extends Equatable {
  final Country countryA;
  final Country countryB;
  const GroupOfTwo({
    required this.countryA,
    required this.countryB,
  });

  @override
  List<Object?> get props => [countryA, countryB];
}
