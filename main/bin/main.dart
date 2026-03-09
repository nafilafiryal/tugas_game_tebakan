import 'dart:io';
import 'dart:math';

void main() {
  print("=== GAME TEBAK ANGKA ===");
  int angkaRahasia = Random().nextInt(100) + 1; // Bikin angka acak 1-100
  int tebakan = 0;

  print("Aku sudah memilih angka 1 sampai 100. Coba tebak!");

  // Perulangan while: akan terus diulang selama tebakan salah
  while (tebakan != angkaRahasia) {
    stdout.write("Masukkan tebakanmu: ");
    String? input = stdin.readLineSync();

    if (input != null) {
      tebakan = int.parse(input);
    }
  }
  print("Selamat! Kamu berhasil menebak angka $angkaRahasia.");
}
