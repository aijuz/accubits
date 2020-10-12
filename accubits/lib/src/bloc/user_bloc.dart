import 'dart:async';

import 'package:accubits/src/models/notification/notification_list_response.dart';
import 'package:accubits/src/models/state.dart';
import 'package:accubits/src/utils/constants.dart';
import 'package:accubits/src/utils/object_factory.dart';

import 'base_bloc.dart';

/// api response of login is managed by AuthBloc
/// stream data is handled by StreamControllers

class UserBloc extends Object implements BaseBloc {
  StreamController<bool> _loading = new StreamController<bool>.broadcast();

  StreamController<SampleResponseModel> _sample =
      new StreamController<SampleResponseModel>.broadcast();

//stream controller is broadcasting the  details

  Stream<SampleResponseModel> get sampleResponse => _sample.stream;

  /// stream for progress bar
  Stream<bool> get loadingListener => _loading.stream;

  StreamSink<bool> get loadingSink => _loading.sink;

  sampleCall() async {
    loadingSink.add(true);

    State state = await ObjectFactory().repository.sampleCall();

    if (state is SuccessState) {
      loadingSink.add(false);
      _sample.sink.add(state.value);
    } else if (state is ErrorState) {
      loadingSink.add(false);
      _sample.sink.addError(Constants.SOME_ERROR_OCCURRED);
    }
  }

  ///disposing the stream if it is not using
  @override
  void dispose() {
    _loading?.close();
    _sample?.close();
  }
}

UserBloc userBlocSingle = UserBloc();
