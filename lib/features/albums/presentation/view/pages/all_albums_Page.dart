import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection_container.dart' as di;
import '../../logic/cubit/albums_cubit.dart';
import 'albums_page.dart';

class AllAlbumsPage extends StatelessWidget {
  const AllAlbumsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.sl<AlbumsCubit>()..call(),
      child: AlbumsPage(),
    );
  }
}
