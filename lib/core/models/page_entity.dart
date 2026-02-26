import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_entity.freezed.dart';

@freezed
abstract class PageInfo with _$PageInfo {
  const factory PageInfo({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _PageInfo;
}

@freezed
abstract class PageEntity<T> with _$PageEntity<T> {
  const factory PageEntity({
    required List<T> items,
    required PageInfo info,
  }) = _PageEntity<T>;
}
