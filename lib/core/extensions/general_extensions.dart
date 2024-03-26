import 'dart:async';

import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

extension ExtraDataStream<T> on NumberFieldBloc {
  Stream<T> get extraDataStream {
    return stream
        .transform<T>(
          StreamTransformer.fromHandlers(
            handleData: (state, sink) => sink.add(state.extraData),
          ),
        )
        .distinct();
  }
}

extension type IntFormatter(int time) {
  String get numberTextEnding {
    final remainder = time.remainder(10);

    if (time ~/ 10 == 1) {
      return '';
    }

    return switch (remainder) {
      == 1 => 'а',
      > 1 && < 5 => 'и',
      _ => '',
    };
  }

  String get fullTimeFormat {
    final duration = Duration(seconds: time);

    final hours = IntFormatter(duration.inHours);
    final minutes = IntFormatter(duration.inMinutes.remainder(60));
    final seconds = IntFormatter(duration.inSeconds.remainder(60));

    var text = '';

    if (hours.time != 0) {
      text += '$hours годин${hours.numberTextEnding} ';
    }

    if (minutes.time != 0) {
      text += '$minutes хвилин${minutes.numberTextEnding} ';
    }

    if (seconds.time != 0) {
      text += '$seconds секунд${seconds.numberTextEnding}';
    }

    return text;
  }

  String _twoDigits(int value) {
    return '$value'.padLeft(2, '0');
  }

  String get toHMS {
    final duration = Duration(seconds: time);

    final hours = _twoDigits(duration.inHours);
    final minutes = _twoDigits(duration.inMinutes.remainder(60));
    final seconds = _twoDigits(duration.inSeconds.remainder(60));

    return '$hours:$minutes:$seconds';
  }
}
