import 'package:travel_indonesia_app/models/home_screen/category_filter_model.dart';
import 'package:travel_indonesia_app/models/home_screen/category_model.dart';
import 'package:travel_indonesia_app/models/home_screen/destination_model.dart';
import 'package:travel_indonesia_app/models/welcome_screen/welcome_model.dart';

var welcome_images = [
  WelcomeModel(
      name: "Borobudur",
      description:
          "Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia.",
      image: "images/welcome_images/welcome_1.jpg"),
  WelcomeModel(
      name: "Candi Prambanan",
      description:
          "Candi Prambanan atau Candi Roro Jonggrang adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi.",
      image: "images/welcome_images/welcome_2.jpg"),
  WelcomeModel(
      name: "Pura Ulun Danu Beratan Bedugul",
      description:
          "Bratan Pura merupakan sebuah candi air besar di Bali, Indonesia - candi utama air lainnya menjadi Pura Ulun Danu Batur.",
      image: "images/welcome_images/welcome_3.jpg")
];

var categoriesList = [
  CategoryModel(name: "Food", image: "images/categories/rendang.jpg"),
  CategoryModel(name: "Tourism", image: "images/categories/lawang_sewu.jpg"),
  CategoryModel(name: "Staycation", image: "images/categories/staycation.jpg"),
  CategoryModel(name: "Mountain", image: "images/categories/bromo.jpg"),
  CategoryModel(name: "Beach", image: "images/categories/lombok.jpg"),
  CategoryModel(name: "Animal", image: "images/categories/komodo.jpg"),
];

var categoriesFilterList = [
  CategoryFilterModel(id: 0, name: "All"),
  CategoryFilterModel(id: 1, name: "Trending"),
  CategoryFilterModel(id: 2, name: "Popular"),
  CategoryFilterModel(id: 3, name: "Recommended"),
  CategoryFilterModel(id: 4, name: "Tour Guide Pick"),
  CategoryFilterModel(id: 5, name: "Oldest"),
  CategoryFilterModel(id: 6, name: "Latest"),
];

var destinationList = [
  DestinationModel(
      name: "Gunung Rinjani",
      image: "images/destination/gunung_rinjani.jpg",
      rating: 4),
  DestinationModel(
      name: "Kawah Ijen",
      image: "images/destination/kawah_ijen.jpg",
      rating: 4),
  DestinationModel(
      name: "Kelimutu", image: "images/destination/kelimutu.jpg", rating: 4),
  DestinationModel(
      name: "Khatulistiwa",
      image: "images/destination/khatulistiwa.jpg",
      rating: 4),
  DestinationModel(
      name: "Kota Tua", image: "images/destination/kota_tua.jpg", rating: 4),
  DestinationModel(
      name: "Ngarai Sianok",
      image: "images/destination/ngarai_sianok.webp",
      rating: 4),
  DestinationModel(
      name: "Pantai Nusa Dua",
      image: "images/destination/pantai_nusa_dua.png",
      rating: 4),
  DestinationModel(
      name: "Toba", image: "images/destination/toba.jpg", rating: 4),
  DestinationModel(
      name: "Togean", image: "images/destination/togean.jpg", rating: 4),
];
