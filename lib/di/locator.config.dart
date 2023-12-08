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
import '../data/datasources/photo/firebase_photo_data_source.dart' as _i15;
import '../data/datasources/review/review_data_source.dart' as _i17;
import '../data/datasources/user/user_data_source.dart' as _i8;
import '../data/repositories/album_repository_impl.dart' as _i13;
import '../data/repositories/snackbar_manager_impl.dart' as _i7;
import '../data/repositories/user_repository_impl.dart' as _i10;
import '../domain/repositories/album_repository.dart' as _i12;
import '../domain/repositories/snackbar_manager.dart' as _i6;
import '../domain/repositories/user_repository.dart' as _i9;
import '../presentation/pages/main_page/bloc/main_bloc.dart' as _i16;
import 'app_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i15.FirebasePhotoDataSource>(
      _i15.FirebasePhotoDataSource(get<_i5.FirebaseStorage>()));
  gh.factory<_i16.MainBloc>(() => _i16.MainBloc(
        get<_i9.UserRepository>(),
        get<_i12.AlbumRepository>(),
      ));
  gh.singleton<_i17.ReviewDataSource>(_i17.ReviewDataSource(
    get<_i4.FirebaseFirestore>(),
    get<_i14.AuthDataSource>(),
  ));
  return get;
}

class _$AppModule extends _i18.AppModule {}
