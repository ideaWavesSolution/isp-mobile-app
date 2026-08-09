import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/use_cases/media/get_media_items_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/media_items/cubit/media_items_cubit.dart';

class MockGetMediaItemsUseCase extends Mock implements GetMediaItemsUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  late MockGetMediaItemsUseCase useCase;
  late MockLogger logger;

  const items = [
    MediaItemEntity(
      id: 'tv',
      categoryId: 'live_tv',
      name: 'TV',
      description: 'Live TV channel',
    ),
  ];

  setUp(() {
    useCase = MockGetMediaItemsUseCase();
    logger = MockLogger();
  });

  test('loadItems emits loading then success', () async {
    when(() => useCase.execute(any())).thenAnswer((_) async => items);
    final cubit = MediaItemsCubit(useCase, logger);
    final states = <MediaItemsState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadItems('live_tv');
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    verify(() => useCase.execute('live_tv')).called(1);
    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isSuccess, isTrue);
    expect(states[1].items, items);
  });

  test('loadItems emits failure when the use case throws', () async {
    when(() => useCase.execute(any())).thenThrow(const ResponseError.unknown());
    final cubit = MediaItemsCubit(useCase, logger);
    final states = <MediaItemsState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadItems('news');
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isFailure, isTrue);
  });
}
