import 'package:apidemo/util/constant.dart';
import 'package:bloc/bloc.dart';

import 'available_job_event.dart';
import 'available_job_state.dart';

class AvailableJobBloc extends Bloc<AvailableJobEvent, AvailableJobState> {
  @override
  AvailableJobState get initialState => AvailableJobInitialState();

  @override
  Stream<AvailableJobState> mapEventToState(AvailableJobEvent event) async* {
    if (event is FetchAvailableJobEvent) {
      yield AvailableJobLoadingState();
      try {
        yield AvailableJobLoadedState(
            await Constant.client.getAvailableJob(event.request));
      } catch (e) {
        yield AvailableJobErrorState(e.toString());
      }
    } else if (event is FetchAvailableLoadMoreJobEvent) {
      try {
        yield AvailableJobLoadedState(
            await Constant.client.getAvailableJob(event.request));
      } catch (e) {
        yield AvailableJobErrorState(e.toString());
      }
    } else if (event is SetAvailableJobModelEvent) {
      yield SetAvailableJobModelState(
          availableJobModel: event.availableJobModel);
    }
  }
}
