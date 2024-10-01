import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksCubitState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksCubitInitial());

  HomeRepo homeRepo;
  Future<void> fetchSimilarBooksCubit(String bookName) async {
    emit(SimilarBooksCubitLoading());
    var data = await homeRepo.fetchSimilarBooks(bookName);
    data.fold((failure) => emit(SimilarBooksCubitFailure(failure.errMessage)),
        (similarBooks) => emit(SimilarBooksCubitSuccess(similarBooks)));
  }
}
