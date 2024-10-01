import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/search_repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchingCubit extends Cubit<SearchingState> {
  SearchingCubit(this.searchRepo) : super(SearchingInitial());
  SearchRepo searchRepo;

  Future<void> searchingBooks(String value) async {
    emit(SearchingLoading());
    var data = await searchRepo.fetchSearchingBooks(value);
    data.fold((failure) => emit(SearchingFailure()),
        (searchingBooks) => emit(SearchingSuccess(searchingBooks)));
  }
}
