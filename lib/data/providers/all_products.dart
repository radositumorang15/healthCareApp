import 'package:flutter/material.dart';
import '../models/medicinemodel.dart';

class Product with ChangeNotifier {
  List<MedicineModel> all_products = [
    MedicineModel(
      id: "1",
      name: "Paracetamol 500mg",
      description:
          "Obat pereda nyeri dan penurun panas untuk sakit kepala, gigi, dan demam.",
     image: 'https://picsum.photos/id/200/300',
      price: "15000",
      quantity: "20",
    ),
    MedicineModel(
      id: "2",
      name: "Amoxicillin 500mg",
      description:
          "Antibiotik untuk mengobati infeksi bakteri seperti infeksi telinga, hidung, tenggorokan.",
      image: "https://picsum.photos/id/201/300",
      price: "25000",
      quantity: "15",
    ),
    MedicineModel(
      id: "3",
      name: "Vitamin C 1000mg",
      description: "Suplemen menjaga daya tahan tubuh dan mencegah sariawan.",
      image: "https://picsum.photos/id/202/300",
      price: "45000",
      quantity: "30",
    ),
    MedicineModel(
      id: "4",
      name: "Bodrex Migra",
      description: "Obat sakit kepala sebelah yang cepat meredakan pusing.",
      image: "https://picsum.photos/id/203/300",
      price: "12000",
      quantity: "24",
    ),
    MedicineModel(
      id: "5",
      name: "Promag",
      description: "Obat anti-asam lambung untuk mengatasi maag dan heartburn.",
      image: "https://picsum.photos/id/204/300",
      price: "18000",
      quantity: "10",
    ),
    MedicineModel(
      id: "6",
      name: "Komix Jahe",
      description: "Sirup obat batuk hitam dengan rasa jahe yang hangat.",
      image: "https://picsum.photos/id/205/300",
      price: "13000",
      quantity: "12",
    ),
    MedicineModel(
      id: "7",
      name: "Betadine Antiseptik 30ml",
      description:
          "Cairan antiseptik untuk membersihkan luka agar tidak terinfeksi.",
      image: "https://picsum.photos/id/206/300",
      price: "35000",
      quantity: "8",
    ),
    MedicineModel(
      id: "8",
      name: "Minyak Kayu Putih 60ml",
      description:
          "Minyak gosok untuk menghangatkan tubuh dan meredakan pilek.",
      image: "https://picsum.photos/id/207/300",
      price: "28000",
      quantity: "25",
    ),
    MedicineModel(
      id: "9",
      name: "Sanmol Sirup 60ml",
      description: "Obat penurun panas khusus anak-anak dengan rasa jeruk.",
      image: "https://picsum.photos/id/208/300",
      price: "22000",
      quantity: "18",
    ),
    MedicineModel(
      id: "10",
      name: "Entrostop",
      description:
          "Obat diare untuk menghentikan frekuensi buang air besar berlebih.",
      image: "https://picsum.photos/id/209/300",
      price: "16000",
      quantity: "10",
    ),
    MedicineModel(
      id: "11",
      name: "Vitamin B1, B6, B12 (Neurobion)",
      description: "Suplemen vitamin untuk menjaga kesehatan saraf.",
      image: "https://picsum.photos/id/210/300",
      price: "55000",
      quantity: "30",
    ),
    MedicineModel(
      id: "12",
      name: "Obat Batuk Hitam OBH",
      description: "Meredakan batuk berdahak dan tenggorokan gatal.",
      image: "https://picsum.photos/id/211/300",
      price: "19500",
      quantity: "6",
    ),
    MedicineModel(
      id: "13",
      name: "Insto Regular",
      description:
          "Tetes mata untuk meredakan mata merah dan perih akibat iritasi.",
      image: "https://picsum.photos/id/212/300",
      price: "14000",
      quantity: "15",
    ),
    MedicineModel(
      id: "14",
      name: "Panadol Extra",
      description: "Pereda nyeri dengan kandungan parasetamol dan kafein.",
      image: "https://picsum.photos/id/213/300",
      price: "20000",
      quantity: "20",
    ),
    MedicineModel(
      id: "15",
      name: "Amoxsan",
      description:
          "Antibiotik penghancur bakteri penyebab infeksi saluran pernapasan.",
      image: "https://picsum.photos/id/214/300",
      price: "23000",
      quantity: "12",
    ),
    MedicineModel(
      id: "16",
      name: "Mixagrip",
      description: "Obat flu demam dengan rasa nanas yang menyegarkan.",
      image: "https://picsum.photos/id/215/300",
      price: "11000",
      quantity: "30",
    ),
    MedicineModel(
      id: "17",
      name: "Bioplacenton Cream",
      description:
          "Salep untuk mempercepat penyembuhan luka bakar dan luka gores.",
      image: "https://picsum.photos/id/216/300",
      price: "40000",
      quantity: "5",
    ),
    MedicineModel(
      id: "18",
      name: "Imboost Force",
      description: "Suplemen daya tahan tubuh dengan ekstrak echinacea.",
      image: "https://picsum.photos/id/217/300",
      price: "85000",
      quantity: "10",
    ),
    MedicineModel(
      id: "19",
      name: "Losartan 50mg",
      description: "Obat hipertensi untuk menekan tekanan darah tinggi.",
      image: "https://picsum.photos/id/218/300",
      price: "15000",
      quantity: "30",
    ),
    MedicineModel(
      id: "20",
      name: "Metformin 500mg",
      description:
          "Obat antidiabetes untuk menurunkan gula darah penderita diabetes tipe 2.",
      image: "https://picsum.photos/id/219/300",
      price: "12000",
      quantity: "50",
    ),
    MedicineModel(
      id: "21",
      name: "Omeprazole 20mg",
      description:
          "Obat penghambat pompa proton untuk mengobati tukak lambung.",
      image: "https://picsum.photos/id/220/300",
      price: "18000",
      quantity: "28",
    ),
    MedicineModel(
      id: "22",
      name: "Cetirizine 10mg",
      description:
          "Antihistamin untuk meredakan gejala alergi seperti gatal dan bersin.",
      image: "https://picsum.photos/id/221/300",
      price: "10000",
      quantity: "20",
    ),
    MedicineModel(
      id: "23",
      name: "Bodrex Flu",
      description: "Obat flu yang meredakan hidung tersumbat dan badan pegal.",
      image: "https://picsum.photos/id/222/300",
      price: "13000",
      quantity: "24",
    ),
    MedicineModel(
      id: "24",
            name: "Vitamin E 400 IU",
      description: "Suplemen untuk kesehatan kulit dan antioksidan.",
      image: "https://picsum.photos/id/223/300",
      price: "35000",
      quantity: "30",
    ),
    MedicineModel(
      id: "25",
      name: "Ventolin Nebules",
      description: "Obat inhalasi untuk meredakan serangan asma.",
      image: "https://picsum.photos/id/224/300",
      price: "120000",
      quantity: "6",
    ),
    MedicineModel(
      id: "26",
      name: "Sirup Ibu Dan Anak (SIDA)",
      description: "Multivitamin penambah nafsu makan untuk anak.",
      image: "https://picsum.photos/id/225/300",
      price: "32000",
      quantity: "8",
    ),
    MedicineModel(
      id: "27",
      name: "Antangin JRG",
      description: "Obat herbal untuk mengatasi masuk angin dan pegal linu.",
      image: "https://picsum.photos/id/226/300",
      price: "2500",
      quantity: "100",
    ),
    MedicineModel(
      id: "28",
      name: "NHCP (NH Calcium)",
      description: "Suplemen kalsium dan vitamin D untuk kesehatan tulang.",
      image: "https://picsum.photos/id/227/300",
      price: "100000",
      quantity: "10",
    ),
    MedicineModel(
      id: "29",
      name: "Salep Kulit Kenalog",
      description:
          "Salep untuk mengatasi gatal-gatal alergi dan peradangan kulit.",
      image: "https://picsum.photos/id/228/300",
      price: "22000",
      quantity: "5",
    ),
    MedicineModel(
      id: "30",
        name: "Dextamine",
      description:
          "Obat gatal dan alergi kulit dengan kandungan dexamethasone.",
      image: "https://picsum.photos/id/229/300",
      price: "9000",
      quantity: "15",
    ),
  ];

  // void setProducts(List<MedicineModel> products) {
  //   _products = products;
  //   notifyListeners();
  // }

  List<MedicineModel> get allProducts {
    return [...all_products];
  }
}
