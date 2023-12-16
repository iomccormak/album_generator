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

import '../data/datasources/album/album_data_source.dart' as _i10;
import '../data/datasources/auth/auth_data_source.dart' as _i13;
import '../data/datasources/photo/firebase_photo_data_source.dart' as _i16;
import '../data/datasources/review/review_data_source.dart' as _i6;
import '../data/datasources/user/user_data_source.dart' as _i7;
import '../data/repositories/album/album_repository_impl.dart' as _i12;
import '../data/repositories/auth/auth_repository_impl.dart' as _i15;
import '../data/repositories/review/review_repository_impl.dart' as _i20;
import '../data/repositories/user/user_repository_impl.dart' as _i9;
import '../domain/repositories/album_repository.dart' as _i11;
import '../domain/repositories/auth_repository.dart' as _i14;
import '../domain/repositories/review_repository.dart' as _i19;
import '../domain/repositories/user_repository.dart' as _i8;
import '../presentation/pages/album_page/bloc/album_bloc.dart' as _i23;
import '../presentation/pages/main_page/bloc/main_bloc.dart' as _i17;
import '../presentation/pages/profile_page/bloc/profile_bloc.dart' as _i18;
import '../presentation/pages/rate_album_page/bloc/rate_album_bloc.dart'
    as _i24;
import '../presentation/pages/sign_in_page/bloc/sign_in_bloc.dart' as _i21;
import '../presentation/pages/sign_up_page/bloc/sign_up_bloc.dart' as _i22;
import 'app_module.dart' as _i25; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i7.UserDataSource>(_i7.UserDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i3.FirebaseAuth>(),
  ));
  gh.singleton<_i8.UserRepository>(
      _i9.UserRepositoryImpl(get<_i7.UserDataSource>()));
  gh.singleton<_i10.AlbumDataSource>(
      _i10.AlbumDataSource(get<_i4.FirebaseFirestore>()));
  gh.singleton<_i11.AlbumRepository>(_i12.AlbumRepositoryImpl(
    get<_i10.AlbumDataSource>(),
    get<_i7.UserDataSource>(),
  ));
  gh.singleton<_i13.AuthDataSource>(_i13.AuthDataSource(
    get<_i3.FirebaseAuth>(),
    get<_i4.FirebaseFirestore>(),
  ));
  gh.singleton<_i14.AuthRepository>(
      _i15.AuthRepositoryImpl(get<_i13.AuthDataSource>()));
  gh.singleton<_i16.FirebasePhotoDataSource>(
      _i16.FirebasePhotoDataSource(get<_i5.FirebaseStorage>()));
  gh.factory<_i17.MainBloc>(() => _i17.MainBloc(
        get<_i8.UserRepository>(),
        get<_i11.AlbumRepository>(),
      ));
  gh.factory<_i18.ProfileBloc>(() => _i18.ProfileBloc(
        get<_i8.UserRepository>(),
        get<_i14.AuthRepository>(),
        get<_i11.AlbumRepository>(),
      ));
  gh.singleton<_i19.ReviewRepository>(_i20.ReviewRepositoryImpl(
    get<_i6.ReviewDataSource>(),
    get<_i7.UserDataSource>(),
  ));
  gh.factory<_i21.SignInBloc>(
      () => _i21.SignInBloc(get<_i14.AuthRepository>()));
  gh.factory<_i22.SignUpBloc>(
      () => _i22.SignUpBloc(get<_i14.AuthRepository>()));
  gh.factory<_i23.AlbumBloc>(() => _i23.AlbumBloc(
        get<_i19.ReviewRepository>(),
        get<_i8.UserRepository>(),
      ));
  gh.factory<_i24.RateAlbumBloc>(() => _i24.RateAlbumBloc(
        get<_i19.ReviewRepository>(),
        get<_i8.UserRepository>(),
        get<_i11.AlbumRepository>(),
      ));
  return get;
}

class _$AppModule extends _i25.AppModule {}
