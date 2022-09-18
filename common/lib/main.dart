library common;

// theme
export 'shared/theme/theme.dart';

// repositories
export 'module/domain/repositories/i_home_repository.dart';
export 'module/infra/repositories/home_repository.dart';

// datasources
export 'module/external/datasources/home_datasource.dart';
export 'module/infra/datasources/i_home_datasource.dart';

// usecases
export 'module/domain/usecases/find_comments/i_find_comments.dart';
export 'module/domain/usecases/find_comments/find_comments.dart';

// entities
export 'module/domain/entities/home_comments_entity.dart';
export 'module/domain/entities/home_result_entity.dart';

// components
export 'shared/components/home_background_widget.dart';
export 'shared/components/home_body_list_view_widget.dart';
export 'shared/components/home_body_widget.dart';
export 'shared/components/no_scroll_behavior_widget.dart';

// Utils
export 'module/domain/errors/errors.dart';
export 'shared/routes/routes.dart';

// Packages
export 'package:json_annotation/json_annotation.dart';
export 'package:dio/dio.dart';
export 'package:url_launcher/url_launcher.dart';
export 'package:flutter_svg/svg.dart';
export 'package:equatable/equatable.dart';
export 'package:flutter_modular/flutter_modular.dart';
