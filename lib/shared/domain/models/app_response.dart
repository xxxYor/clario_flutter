class AppResponse<T> {
  AppResponse({required this.data});

  final T data;

  AppResponse<T> copyWith({
    T? data,
  }) {
    return AppResponse<T>(
      data: data ?? this.data,
    );
  }

  @override
  bool operator ==(covariant AppResponse<T> other) {
    if (identical(this, other)) return true;

    return other.data == data;
  }

  @override
  int get hashCode => data.hashCode;

  @override
  String toString() => 'AppResponse(data: $data)';
}
