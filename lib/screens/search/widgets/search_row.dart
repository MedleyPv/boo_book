import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:boo_book/styles/index.dart';
import '../search_bloc.dart';
import 'search_text_field.dart';

class SearchRow extends StatefulWidget {
  const SearchRow({super.key});

  @override
  State<SearchRow> createState() => SearchRowState();
}

class SearchRowState extends State<SearchRow> {
  final _focus = FocusNode();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _focus.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();

    return Row(
      children: [
        Expanded(
          child: SearchTextField(
            focusNode: _focus,
            controller: _controller,
            onSubmitted: (value) {
              if (value != null && value.isNotEmpty) {
                bloc.searchAsync(value);
              }
            },
            suffix: ListenableBuilder(
              listenable: _focus,
              builder: (_, __) {
                return Container(
                  height: 20,
                  width: 20,
                  alignment: Alignment.center,
                  child: DefaultSvgTheme(
                    theme: const SvgTheme(),
                    child: AnimatedCrossFade(
                      crossFadeState: _focus.hasFocus
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      duration: const Duration(milliseconds: 300),
                      firstChild: Assets.icons.search.svg(),
                      secondChild: IconButton(
                        icon: Assets.icons.xmark.svg(),
                        onPressed: () {
                          _controller.clear();
                          bloc.search('');
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
