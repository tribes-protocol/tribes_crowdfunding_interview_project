import 'package:flutter_riverpod/flutter_riverpod.dart';

extension FutureExt<T> on Future<T> {
  Future<AsyncValue<T>> toAsyncValue() => then((value) => AsyncValue.data(value))
      .onError((error, stackTrace) => AsyncError(error!, stackTrace));
}
