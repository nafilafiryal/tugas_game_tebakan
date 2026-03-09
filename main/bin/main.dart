import 'dart:io';
import 'dart:math';

void main() {
  bool mainLagi = true;

  // Perulangan do-while memastikan game jalan minimal 1 kali
  do {
    print("\n=== GAME TEBAK ANGKA ===");
    int angkaRahasia = Random().nextInt(100) + 1;
    int tebakan = 0;
    int jumlahTebakan = 0;

    print("Aku sudah memilih angka 1 sampai 100. Coba tebak!");

    while (tebakan != angkaRahasia) {
      stdout.write("Masukkan tebakanmu: ");
      String? input = stdin.readLineSync();

      if (input != null && int.tryParse(input) != null) {
        tebakan = int.parse(input);
        jumlahTebakan++;

        if (tebakan < angkaRahasia) {
          print("-> Terlalu kecil! Naikkan lagi.");
        } else if (tebakan > angkaRahasia) {
          print("-> Terlalu besar! Turunkan lagi.");
        } else {
          print("-> YAY BENAR! Angkanya adalah $angkaRahasia.");
          print("-> Kamu menebak sebanyak $jumlahTebakan kali percobaan.");
        }
      } else {
        print("-> Error: Tolong masukkan angka yang valid!");
      }
    }

    // Fitur main lagi
    stdout.write("\nMau main lagi? (y/n): ");
    String? jawaban = stdin.readLineSync();
    if (jawaban != null && jawaban.toLowerCase() != 'y') {
      mainLagi = false;
    }
  } while (mainLagi);

  print("Terima kasih sudah bermain!");
}
