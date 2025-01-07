abstract interface class Result<T> {}

class Ok<T> implements Result<T> {
  final T value;

  Ok({required this.value});
}

class Error<T> implements Result<T> {
  final String message;

  Error({required this.message});
}
