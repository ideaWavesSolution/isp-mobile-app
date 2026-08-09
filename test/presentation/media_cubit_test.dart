import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:isp_mobile_app/core/error/response_error.dart';
import 'package:isp_mobile_app/domain/entity/base/base_entity.dart';
import 'package:isp_mobile_app/domain/enum/media_category_type.dart';
import 'package:isp_mobile_app/domain/use_cases/media/get_media_categories_use_case.dart';
import 'package:isp_mobile_app/presentation/screen/media/cubit/media_cubit.dart';

class MockGetMediaCategoriesUseCase extends Mock
    implements GetMediaCategoriesUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  late MockGetMediaCategoriesUseCase useCase;
  late MockLogger logger;

  const categories = [
    MediaCategoryEntity(
      id: 'live_tv',
      type: MediaCategoryType.liveTv,
      name: 'Live TV',
      itemCount: 1,
    ),
  ];

  setUp(() {
    useCase = MockGetMediaCategoriesUseCase();
    logger = MockLogger();
  });

  test('loadCategories emits loading then success', () async {
    when(() => useCase.execute()).thenAnswer((_) async => categories);
    final cubit = MediaCubit(useCase, logger);
    final states = <MediaState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadCategories();
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isSuccess, isTrue);
    expect(states[1].categories, categories);
  });

  test('loadCategories emits failure when the use case throws', () async {
    when(() => useCase.execute()).thenThrow(const ResponseError.unknown());
    final cubit = MediaCubit(useCase, logger);
    final states = <MediaState>[];
    final sub = cubit.stream.listen(states.add);

    await cubit.loadCategories();
    await Future<void>.delayed(Duration.zero);
    await sub.cancel();
    await cubit.close();

    expect(states, hasLength(2));
    expect(states[0].status.isLoading, isTrue);
    expect(states[1].status.isFailure, isTrue);
  });
}
