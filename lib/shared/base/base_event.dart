import 'package:clean_architecture/core/constants/url_constants.dart';
import 'package:equatable/equatable.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

abstract class BaseEvent extends Equatable {
  const BaseEvent();

  @override
  List<Object> get props => [];
}

class FetchNothing extends BaseEvent {}

class Fetch extends BaseEvent {}

class FetchList extends BaseEvent {
  final String? slug, id;
  final int? type, page, perPage;

  const FetchList({
    this.slug,
    this.type,
    this.id,
    required this.page,
    this.perPage = UrlConstants.pageSize,
  });
}

class FetchBySlug extends BaseEvent {
  final String slug;

  const FetchBySlug({required this.slug});
}

class FetchByID extends BaseEvent {
  final String id;

  const FetchByID({required this.id});
}

class FetchByInteger extends BaseEvent {
  final int id;

  const FetchByInteger({required this.id});
}
