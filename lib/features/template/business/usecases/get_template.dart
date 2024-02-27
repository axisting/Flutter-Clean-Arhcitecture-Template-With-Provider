import 'package:dartz/dartz.dart';
import 'package:provider_template/core/errors/failure.dart';
import 'package:provider_template/core/params/params.dart';
import 'package:provider_template/features/template/business/entities/template_entity.dart';
import 'package:provider_template/features/template/business/repositories/template_repository.dart';

class GetTemplate {
  final TemplateRepository templateRepository;

  GetTemplate({required this.templateRepository});

  Future<Either<Failure, TemplateEntity>> call({
    required TemplateParams templateParams,
  }) async {
    return await templateRepository.getTemplate(templateParams: templateParams);
  }
}
