import 'package:dartz/dartz.dart';

import 'package:provider_template/core/errors/failure.dart';
import 'package:provider_template/core/params/params.dart';
import 'package:provider_template/features/template/business/entities/template_entity.dart';

abstract class TemplateRepository {
  Future<Either<Failure, TemplateEntity>> getTemplate(
      {required TemplateParams templateParams});
}
