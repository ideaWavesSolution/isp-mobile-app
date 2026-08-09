/// Contract for use cases that take no input.
mixin BaseUseCase<Output> {
  /// Execute the use case.
  Future<Output> execute();
}

/// Contract for use cases that require an input parameter.
mixin BaseUseCaseWithParams<Output, Params> {
  /// Execute the use case with the given [params].
  Future<Output> execute(Params params);
}

/// Contract for use cases that expose a continuous/realtime value stream
/// instead of a single Future result.
mixin BaseStreamUseCaseWithParams<Output, Params> {
  /// Start watching the use case output for the given [params].
  Stream<Output> execute(Params params);
}
