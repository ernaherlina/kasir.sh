#!/bin/bash
#Daftar menu makanan dan harga
echo "Daftar Menu"
echo "1. Nasi Goreng - Rp 10000"
echo "2. Mie Goreng - Rp 8000"
echo "3. Le Mineral - Rp 4000"
echo "4. Es Teh - 5000"
echo "5. Kopi Seduh - Rp 5000"

#Meminta input jumlah item yang ingin dibeli
read -p "Jumlah item yang ingin dibeli: " jumlah_item

# Inisialisasi total harga
total_harga=0

#Loop untuk setiap item
for ((i=1; i<=jumlah_item; i++)); do
   read -p "Nomor menu ke-$i: " nomor_menu
   read -p "Jumlah porsi: " jumlah_porsi

   case $nomor_menu in
     1) harga=10000 ;;
     2) harga=8000 ;;
     3) harga=4000 ;;
     4) harga=5000 ;;
     5) harga=5000 ;;
     *) echo "Nomor menu tidak valid";  exit 1 ;;
   esac

   total_harga=$((total_harga + harga * jumlah_porsi))
done

# Menampilkan total harga
echo "Total harga: Rp $total_harga"

# Meminta input uang yang dibayarkan
  read -p "Uang yang dibayarkan: " uang_dibayarkan

#Menghitung kembalian
if ((uang_dibayarkan >= total_harga)); then
  kembalian=$((uang_dibayarkan - total_harga))
  echo "Kembalian: Rp $kembalian"
else
  echo "Uang tidak cukup!"
fi


#Analisa UAS SO 
program ini menggunakan program shell seperti yang sebelum  nya pada saat latihan praktikum. Disini program diminta untuk menampilkan menu makanan, harga, jenis menu dan harga yang dibeli. Untuk outpun nya diperintahkan menampilkan menu apa saja yang dibeli dengan uang berapa dan kembalian nya berapa.

Pada program ini awal nya banyak kesalahan mulai dari penulisan kode yang harusnya ; malah : jadi tidak menampilkan hasil sesuai yang di perintah.

di atas ada kode #!/bin/bash saya belum paham dengan ini hanya saja saya mengikuti arahan dari pas latihan praktikum di hari hari sebelum nya. Inti nya ini adalah ketentuan kodingan saat membuat program menggunakan shell.

Program ini diperintahkan menggunakan array, array sendiri artinya adalah kumpulan data disini data nya adalah nama menu makanan yang dijual di warung makanan tersebut contoh nya seperti nasi goreng, mie goreng dst.

#Daftar menu makanan (ini hanya sebagai penanda)
echo, echo diatas berfungsi sebagai menampilkan hasil judul di layar, menampilkan daftar menu dan harga.
read -p diatas berfungsi untuk digunakan sebelum perintah input 

Loop, loop disini berfungsi untuk mungkin kata kunci untuk perintah mengulang.
Saya coba memahami fungsi dari loop ini setelah di coba mengkoding dan dicoba memakai loop dan tidak ada perbedaan hasil dari keduanya. Jadi loop di program ini sangat penting.

if disini adalah kode untuk kata jika jadi jika uang nya sekian pembelian sekian maka kembalian nya sekian.


