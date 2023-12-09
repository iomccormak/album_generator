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

import '../data/datasources/album/album_data_source.dart' as _i11;
import '../data/datasources/auth/auth_data_source.dart' as _i14;
import '../data/datasources/photo/firebase_photo_data_source.dart' as _i17;
import '../data/datasources/review/review_data_source.dart' as _i21;
import '../data/datasources/user/user_data_source.dart' as _i8;
import '../data/repositories/album_repository_impl.dart' as _i13;
import '../data/repositories/auth_repository_impl.dart' as _i16;
import '../data/repositories/snackbar_manager_impl.dart' as _i7;
import '../data/repositories/user_repository_impl.dart' as _i10;
import '../domain/repositories/album_repository.dart' as _i12;
import '../domain/repositories/auth_repository.dart' as _i15;
import '../domain/repositories/snackbar_manager.dart' as _i6;
import '../domain/repositories/user_repository.dart' as _i9;
import '../presentation/pages/main_page/bloc/main_bloc.dart' as _i18;
import '../presentation/pages/profile_page/bloc/profile_bloc.dart' as _i19;
import '../presentation/pages/rate_album_page/bloc/rate_album_bloc.dart'
    as _i20;
import '../presentation/pages/sign_in_page/bloc/sign_in_bloc.dart' as _i22;
import '../presentation/pages/sign_up_page/bloc/sign_up_bloc.dart' as _i23;
import 'app_module.dart' as _i24; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i6.SnackBarManager>(_i7.SnackBarManagerImpl());
  gh.singleton<_i8.UserDataSource>(_i8.UserDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i3.FirebaseAuth>(),
  ));
  gh.singleton<_i9.UserRepository>(
      _i10.UserRepositoryImpl(get<_i8.UserDataSource>()));
  gh.singleton<_i11.AlbumDataSource>(
      _i11.AlbumDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i12.AlbumRepository>(_i13.AlbumRepositoryImpl(
    get<_i11.AlbumDataSource>(),
    get<_i8.UserDataSource>(),
  ));
  gh.singleton<_i14.AuthDataSource>(_i14.AuthDataSource(
    get<_i3.FirebaseAuth>(),
    get<_i4.FirebaseFirestore>(),
  ));
  gh.singleton<_i15.AuthRepository>(
      _i16.AuthRepositoryImpl(get<_i14.AuthDataSource>()));
  gh.singleton<_i17.FirebasePhotoDataSource>(
      _i17.FirebasePhotoDataSource(get<_i5.FirebaseStorage>()));
  gh.factory<_i18.MainBloc>(() => _i18.MainBloc(
        get<_i9.UserRepository>(),
        get<_i12.AlbumRepository>(),
      ));
  gh.factory<_i19.ProfileBloc>(() => _i19.ProfileBloc(
        get<_i9.UserRepository>(),
        get<_i15.AuthRepository>(),
      ));
  gh.factory<_i20.RateAlbumBloc>(() => _i20.RateAlbumBloc(
        get<_i12.AlbumRepository>(),
        get<_i9.UserRepository>(),
      ));
  gh.singleton<_i21.ReviewDataSource>(_i21.ReviewDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i14.AuthDataSource>(),
  ));
  gh.factory<_i22.SignInBloc>(
      () => _i22.SignInBloc(get<_i15.AuthRepository>()));
  gh.factory<_i23.SignUpBloc>(
      () => _i23.SignUpBloc(get<_i15.AuthRepository>()));
  return get;
}

class _$AppModule extends _i24.AppModule {}
