// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/datasources/album/album_data_source.dart' as _i12;
import '../data/datasources/auth/auth_data_source.dart' as _i15;
import '../data/datasources/photo/firebase_photo_data_source.dart' as _i18;
import '../data/datasources/review/review_data_source.dart' as _i6;
import '../data/datasources/user/user_data_source.dart' as _i9;
import '../data/repositories/album_repository_impl.dart' as _i14;
import '../data/repositories/auth_repository_impl.dart' as _i17;
import '../data/repositories/review_repository_impl.dart' as _i22;
import '../data/repositories/snackbar_manager_impl.dart' as _i8;
import '../data/repositories/user_repository_impl.dart' as _i11;
import '../domain/repositories/album_repository.dart' as _i13;
import '../domain/repositories/auth_repository.dart' as _i16;
import '../domain/repositories/review_repository.dart' as _i21;
import '../domain/repositories/snackbar_manager.dart' as _i7;
import '../domain/repositories/user_repository.dart' as _i10;
import '../presentation/pages/main_page/bloc/main_bloc.dart' as _i19;
import '../presentation/pages/profile_page/bloc/profile_bloc.dart' as _i20;
import '../presentation/pages/rate_album_page/bloc/rate_album_bloc.dart'
    as _i25;
import '../presentation/pages/sign_in_page/bloc/sign_in_bloc.dart' as _i23;
import '../presentation/pages/sign_up_page/bloc/sign_up_bloc.dart' as _i24;
import 'app_module.dart' as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.FirebaseAuth>(appModule.firebaseAuth());
  gh.singleton<_i4.FirebaseFirestore>(appModule.fireStore());
  gh.singleton<_i5.FirebaseStorage>(appModule.firebaseStorage());
  gh.singleton<_i6.ReviewDataSource>(
      _i6.ReviewDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i7.SnackBarManager>(_i8.SnackBarManagerImpl());
  gh.singleton<_i9.UserDataSource>(_i9.UserDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i3.FirebaseAuth>(),
  ));
  gh.singleton<_i10.UserRepository>(
      _i11.UserRepositoryImpl(get<_i9.UserDataSource>()));
  gh.singleton<_i12.AlbumDataSource>(
      _i12.AlbumDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i13.AlbumRepository>(_i14.AlbumRepositoryImpl(
    get<_i12.AlbumDataSource>(),
    get<_i9.UserDataSource>(),
  ));
  gh.singleton<_i15.AuthDataSource>(_i15.AuthDataSource(
    get<_i3.FirebaseAuth>(),
    get<_i4.FirebaseFirestore>(),
  ));
  gh.singleton<_i16.AuthRepository>(
      _i17.AuthRepositoryImpl(get<_i15.AuthDataSource>()));
  gh.singleton<_i18.FirebasePhotoDataSource>(
      _i18.FirebasePhotoDataSource(get<_i5.FirebaseStorage>()));
  gh.factory<_i19.MainBloc>(() => _i19.MainBloc(
        get<_i10.UserRepository>(),
        get<_i13.AlbumRepository>(),
      ));
  gh.factory<_i20.ProfileBloc>(() => _i20.ProfileBloc(
        get<_i10.UserRepository>(),
        get<_i16.AuthRepository>(),
        get<_i13.AlbumRepository>(),
      ));
  gh.singleton<_i21.ReviewRepository>(_i22.ReviewRepositoryImpl(
    get<_i6.ReviewDataSource>(),
    get<_i9.UserDataSource>(),
  ));
  gh.factory<_i23.SignInBloc>(
      () => _i23.SignInBloc(get<_i16.AuthRepository>()));
  gh.factory<_i24.SignUpBloc>(
      () => _i24.SignUpBloc(get<_i16.AuthRepository>()));
  gh.factory<_i25.RateAlbumBloc>(() => _i25.RateAlbumBloc(
        get<_i21.ReviewRepository>(),
        get<_i10.UserRepository>(),
      ));
  return get;
}

class _$AppModule extends _i26.AppModule {}
