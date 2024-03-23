// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:boo_book/blocs/auth/auth_bloc.dart' as _i5;
import 'package:boo_book/models/index.dart' as _i14;
import 'package:boo_book/repositories/auth_repository.dart' as _i3;
import 'package:boo_book/repositories/books_repository.dart' as _i7;
import 'package:boo_book/repositories/index.dart' as _i6;
import 'package:boo_book/repositories/reviews_repository.dart' as _i10;
import 'package:boo_book/repositories/search_repository.dart' as _i11;
import 'package:boo_book/repositories/user_repository.dart' as _i4;
import 'package:boo_book/screens/main/pages/home/home_bloc.dart' as _i8;
import 'package:boo_book/screens/main/pages/library/library_bloc.dart' as _i9;
import 'package:boo_book/screens/search/modals/search_book_details_modal/search_book_details_modal_bloc.dart'
    as _i13;
import 'package:boo_book/screens/search/search_bloc.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of auth-scope dependencies inside of GetIt
  _i1.GetIt initAuthScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'auth',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        gh.factory<_i3.AuthRepository>(() => _i3.AuthRepository());
        gh.factory<_i4.UserRepository>(() => _i4.UserRepository());
        gh.singleton<_i5.AuthBloc>(_i5.AuthBloc(
          authRepository: gh<_i6.AuthRepository>(),
          userRepository: gh<_i6.UserRepository>(),
        ));
      },
    );
  }

// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i7.BooksRepository>(() =>
        _i7.BooksRepository(userUid: gh<String>(instanceName: 'userUid')));
    gh.lazySingleton<_i8.HomeBloc>(
        () => _i8.HomeBloc(repository: gh<_i7.BooksRepository>()));
    gh.lazySingleton<_i9.LibraryBloc>(
        () => _i9.LibraryBloc(repository: gh<_i7.BooksRepository>()));
    gh.factory<_i10.ReviewsRepository>(() => _i10.ReviewsRepository());
    gh.factory<_i11.SearchRepository>(() => _i11.SearchRepository());
    gh.factory<_i12.SearchBloc>(() => _i12.SearchBloc(
          searchRepository: gh<_i6.SearchRepository>(),
          booksRepository: gh<_i6.BooksRepository>(),
        ));
    gh.factoryParam<_i13.SearchBookDetailsModalBloc, _i14.BookSearchModel,
        dynamic>((
      initial,
      _,
    ) =>
        _i13.SearchBookDetailsModalBloc(
          initial: initial,
          booksRepository: gh<_i6.BooksRepository>(),
          searchRepository: gh<_i6.SearchRepository>(),
          reviewsRepository: gh<_i6.ReviewsRepository>(),
        ));
    return this;
  }
}
