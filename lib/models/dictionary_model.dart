import 'package:equatable/equatable.dart';

class DictionaryModel extends Equatable {
  final int id;
  final String title;
  final String subtitle;

  DictionaryModel({this.id, this.title, this.subtitle});

  @override
  List<Object> get props => [id, title, subtitle];
}

List<DictionaryModel> mockDictionary = [
  DictionaryModel(
    id: 1,
    title: 'Kliring',
    subtitle:
        'Kliring adalah suatu kegiatan pertukaran warkat atau data keuangan elektronik antar-bank baik atas nama bank maupun nasabah yang hasil perhitungannya diselesaikan pada waktu tertentu (Pasal 16 UU No. 23 Tahun 1999)',
  ),
  DictionaryModel(
    id: 2,
    title: 'International Remittance',
    subtitle:
        'Remittance adalah transaksi pengiriman/penerimaan uang dalam valuta asing dari atau ke bank di luar negeri maupun di dalam negeri.',
  ),
  DictionaryModel(
    id: 3,
    title: 'Virtual Account',
    subtitle:
        'Virtual Account adalah nomor identifikasi pelanggan perusahaan yang dibuka oleh Bank atas permintaan perusahaan untuk selanjutnya diberikan oleh perusahaan kepada pelanggannya (perorangan maupun non perorangan) sebagai No Rekening Tujuan penerimaan (collection).',
  ),
];
