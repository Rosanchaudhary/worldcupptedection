// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Country extends Equatable {
  
  final String name;
  final String flageImage;


  const Country({
    required this.name,
    required this.flageImage,
  });
  
  
  @override
  List<Object?> get props => [name,flageImage];
  
}
