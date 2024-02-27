import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider_template/core/connection/network_info.dart';
import 'package:provider_template/core/errors/failure.dart';
import 'package:provider_template/core/params/params.dart';
import 'package:provider_template/features/template/business/entities/template_entity.dart';
import 'package:provider_template/features/template/business/usecases/get_template.dart';
import 'package:provider_template/features/template/data/datasources/template_local_data_source.dart';
import 'package:provider_template/features/template/data/datasources/template_remote_data_source.dart';
import 'package:provider_template/features/template/data/repositories/template_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TemplateProvider extends ChangeNotifier {
  TemplateEntity? template;
  Failure? failure;

  TemplateProvider({required this.template, required this.failure});

  void eitherFailureOrTemplate() async {
    TemplateRepositoryImpl repository = TemplateRepositoryImpl(
      remoteDataSource: TemplateRemoteDataSourceImpl(dio: Dio()),
      localDataSource: TemplateLocalDataSourceImpl(
        sharedPreferences: await SharedPreferences.getInstance(),
      ),
      networkInfo: NetworkInfoImpl(
        InternetConnectionChecker(),
      ),
    );
    final failureOrTemplate = await GetTemplate(templateRepository: repository)
        .call(templateParams: TemplateParams());

    failureOrTemplate.fold(
      (Failure newFailure) {
        template = null;
        failure = newFailure;
        notifyListeners();
      },
      (TemplateEntity newTemplate) {
        template = newTemplate;
        failure = null;
        notifyListeners();
      },
    );
  }
}
