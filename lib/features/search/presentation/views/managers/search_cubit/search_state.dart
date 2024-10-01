part of 'search_cubit.dart';

sealed class SearchingState extends Equatable {
  const SearchingState();

  @override
  List<Object> get props => [];
}

final class SearchingInitial extends SearchingState {}

final class SearchingLoading extends SearchingState {}

final class SearchingSuccess extends SearchingState {
  final List<BookModel> books;
  const SearchingSuccess(this.books);
}

final class SearchingFailure extends SearchingState {}
