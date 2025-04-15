import 'package:get/get.dart';
import '../../models/movies_model.dart';
import '../api_repository/movie_repository.dart';

class MovieController extends GetxController {
  static MovieController get instance => Get.find();

  RxBool isLoading = false.obs;
  RxList<Movies> moviesList = <Movies>[].obs;
  RxList<Movies> newMovies = <Movies>[].obs;
  Rx<Movies?> selectedMovie = Rx<Movies?>(null);
  RxString errorMessage = ''.obs;

  @override
  void onInit() {
    fetchAllMovies();
    super.onInit();
  }

  Future<List<Movies>> fetchAllMovies() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final movies = await MovieRepository.instance.fetchMovies();

      moviesList.assignAll(movies);
      newMovies.assignAll(
        movies.where((movie) => movie.year == 2025).take(5).toList(),
      );

      return movies;
    } catch (e) {
      errorMessage.value = e.toString();
      throw Exception('Failed to fetch movies: $e');
    } finally {
      isLoading.value = false;
    }
  }


  void setSelectedMovie(Movies movie) {
    selectedMovie.value = movie;
  }

  void clearSelectedMovie() {
    selectedMovie.value = null;
  }
}
