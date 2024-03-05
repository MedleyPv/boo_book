// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:boo_book/blocs/auth/auth_bloc.dart' as _i4;
import 'package:boo_book/repositories/auth_repository.dart' as _i3;
import 'package:boo_book/repositories/index.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    return this;
  }

// initializes the registration of auth-scope dependencies inside of GetIt
  _i1.GetIt initAuthScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'auth',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.factory<_i3.AuthRepository>(
            () => _i3.AuthRepository(gh<InvalidType>()));
        gh.singleton<_i4.AuthBloc>(_i4.AuthBloc(
          authRepository: gh<_i5.AuthRepository>(),
          userRepository: gh<InvalidType>(),
        ));
      },
    );
  }
}
