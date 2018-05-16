-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 06 Bulan Mei 2018 pada 02.40
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ugm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahasas`
--

CREATE TABLE `bahasas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bahasas`
--

INSERT INTO `bahasas` (`id`, `nama`, `desc`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, 'Aneuk Jamee', 'Bahasa jamee berasal dari daerah Aceh Selatan dan Aceh Barat Daya dan masih menjadi bahasa sehari-hari masyarakat disana. Bahasa Jamee juga sering di istilahkan dengan bahasa Baiko karena banyak kosa kata dalam bahasa jamee memiliki huruf vokal “o”.', 1, '2018-03-30 09:40:55', '2018-03-30 09:40:55'),
(2, 'Bali', 'Bahasa Bali adalah sebuah bahasa Austronesia dari cabang Sundik dan lebih spesifik dari anak cabang Bali-Sasak. Bahasa ini terutama dipertuturkan di pulau Bali, pulau Lombok bagian barat, dan sedikit di ujung timur pulau Jawa. Di Bali sendiri Bahasa Bali memiliki tingkatan penggunaannya, misalnya ada yang disebut Bali Alus, Bali Madya dan Bali Kasar. Hal ini terjadi karena pengaruh bahasa Jawa menyebar ke Bali sejak zaman Majapahit, bahkan sampai zaman Mataram Islam, meskipun kerajaan Mataram Islam tidak pernah menaklukkan Bali. Yang halus dipergunakan untuk bertutur formal misalnya dalam pertemuan di tingkat desa adat, meminang wanita, atau antara orang berkasta rendah dengan berkasta lebih tinggi. Yang madya dipergunakan di tingkat masyarakat menengah misalnya pejabat dengan bawahannya, sedangkan yang kasar dipergunakan bertutur oleh orang kelas rendah misalnya kaum sudra atau antara bangsawan dengan abdi dalemnya, Di Lombok bahasa Bali terutama dipertuturkan di sekitar kota Mataram, sedangkan di pulau Jawa bahasa Bali terutama dipertuturkan di beberapa desa di kabupaten Banyuwangi. Selain itu bahasa Osing, sebuah dialek Jawa khas Banyuwangi, juga menyerap banyak kata-kata Bali. Misalkan sebagai contoh kata osing yang berarti “tidak” diambil dari bahasa Bali tusing. Bahasa Bali dipertuturkan oleh kurang lebih 4 juta jiwa.', 2, '2018-03-30 21:05:21', '2018-03-30 21:05:21'),
(3, 'Betawi', 'Bahasa Betawi atau Melayu Dialek Jakarta atau Melayu Batavia (bew) adalah sebuah bahasa yang merupakan anak bahasa dari Melayu. Mereka yang menggunakan bahasa ini dinamakan orang Betawi. Bahasa ini hampir seusia dengan nama daerah tempat bahasa ini dikembangkan, yaitu Jakarta.\r\n\r\nBahasa Betawi adalah bahasa kreol (Siregar, 2005) yang didasarkan pada bahasa Melayu Pasar ditambah dengan unsur-unsur bahasa Sunda, bahasa Bali, bahasa dari Cina Selatan (terutama bahasa Hokkian), bahasa Arab, serta bahasa dari Eropa, terutama bahasa Belanda dan bahasa Portugis. Bahasa ini pada awalnya dipakai oleh kalangan masyarakat menengah ke bawah pada masa-masa awal perkembangan Jakarta. Komunitas budak serta pedagang yang paling sering menggunakannya. Karena berkembang secara alami, tidak ada struktur baku yang jelas dari bahasa ini yang membedakannya dari bahasa Melayu, meskipun ada beberapa unsur linguistik penciri yang dapat dipakai, misalnya dari peluruhan awalan me- (seperti halnya bahasa Melayu, termasuk bahasa Indonesia), penggunaan akhiran -in (sama seperti bahasa Bali), serta peralihan bunyi /a/ terbuka di akhir kata menjadi /e/ atau /ɛ/ pada beberapa dialek lokal.', 3, '2018-03-30 21:47:44', '2018-03-30 21:47:44'),
(4, 'Bahasa Sunda', 'Bahasa Sunda (Basa Sunda, dalam aksara Sunda ditulis ᮘᮞ ᮞᮥᮔ᮪ᮓ) adalah sebuah bahasa dari cabang Melayu-Polinesia dalam rumpun bahasa Austronesia. Bahasa ini dituturkan oleh setidaknya 42 juta orang dan merupakan bahasa Ibu dengan penutur terbanyak kedua di Indonesia setelah Bahasa Jawa. Bahasa Sunda dituturkan di hampir seluruh provinsi Jawa Barat dan Banten, serta wilayah barat Jawa Tengah mulai dari Kali Brebes (Sungai Cipamali) di wilayah Kabupaten Brebes dan Kali Serayu (Sungai Ciserayu) di Kabupaten Cilacap, di sebagian kawasan Jakarta, serta di seluruh provinsi di Indonesia dan luar negeri yang menjadi daerah urbanisasi Suku Sunda.\r\n\r\nDari segi linguistik, bersama bahasa Baduy, bahasa Sunda membentuk suatu rumpun bahasa Sunda yang dimasukkan ke dalam rumpun bahasa Melayu-Sumbawa.', 4, '2018-03-30 22:39:58', '2018-03-30 22:39:58'),
(5, 'Jawa', 'Bahasa Jawa adalah bahasa yang digunakan penduduk suku bangsa Jawa di Jawa Tengah,Yogyakarta & Jawa Timur. Selain itu, Bahasa Jawa juga digunakan oleh penduduk yang tinggal beberapa daerah lain seperti di Banten terutama kota Serang, kabupaten Serang, kota Cilegon dan kabupaten Tangerang, Jawa Barat khususnya kawasan Pantai utara terbentang dari pesisir utara Karawang, Subang, Indramayu, kota Cirebon dan kabupaten Cirebon.\r\n\r\nPenyebaran Bahasa Jawa\r\nPenduduk Jawa yang merantau, membuat bahasa Jawa bisa ditemukan di berbagai daerah bahkan di luar negeri. Banyaknya orang Jawa yang merantau ke Malaysia turut membawa bahasa dan kebudayaan Jawa ke Malaysia, sehingga terdapat kawasan pemukiman mereka yang dikenal dengan nama kampung Jawa, padang Jawa. Di samping itu, masyarakat pengguna Bahasa Jawa juga tersebar di berbagai wilayah Negara Kesatuan Republik Indonesia. Kawasan-kawasan luar Jawa yang didominasi etnis Jawa atau dalam persentase yang cukup signifikan adalah : Lampung (61,9%), Sumatra Utara (32,6%), Jambi (27,6%), Sumatera Selatan (27%). Khusus masyarakat Jawa di Sumatra Utara, mereka merupakan keturunan para kuli kontrak yang dipekerjakan di berbagai wilayah perkebunan tembakau, khususnya di wilayah Deli sehingga kerap disebut sebagai Jawa Deli atau Pujakesuma (Putra Jawa Kelahiran Sumatera). Sedangkan masyarakat Jawa di daerah lain disebarkan melalui program transmigrasi yang diselenggarakan semenjak zaman penjajahan Belanda.\r\nSelain di kawasan Nusantara, masyarakat Jawa juga ditemukan dalam jumlah besar di Suriname, yang mencapai 15% dari penduduk secara keseluruhan, kemudian di Kaledonia Baru bahkan sampai kawasan Aruba dan Curacao serta Belanda. Sebagian kecil bahkan menyebar ke wilayah Guyana Perancis dan Venezuela. Pengiriman tenaga kerja ke Korea, Hong Kong, serta beberapa negara Timur Tengah juga memperluas wilayah sebar pengguna bahasa ini meskipun belum bisa dipastikan kelestariannya', 5, '2018-03-30 23:15:12', '2018-03-30 23:15:12'),
(6, 'Batak Toba', 'Bahasa Batak Toba adalah salah satu bahasa daerah yang terutama dipertuturkan di daerah sekitar Danau Toba dan sekitarnya, meliputi Samosir, Humbang Hasundutan, Tapanuli Utara dan Toba Samosir, Sumatera Utara, Indonesia. Bahasa Batak Toba termasuk dalam rumpun bahasa Austronesia, dan merupakan bagian dari kelompok bahasa-bahasa Batak.\r\n\r\nSaat ini diperkirakan terdapat kurang-lebih 2.000.000 orang penutur Bahasa Batak Toba, yang tinggal di bagian barat dan selatan Danau Toba. Penulisan bahasa ini dalam sejarahnya pernah menggunakan aksara Batak, namun saat ini para penuturnya hampir selalu menggunakan aksara Latin untuk menuliskannya.\r\n\r\nHerman Neubronner van der Tuuk adalah salah seorang pionir awal penelitian atas Bahasa Batak Toba, yaitu dalam aktivitasnya menulis Alkitab berbahasa Batak Toba.', 6, '2018-03-31 04:01:42', '2018-03-31 04:01:42'),
(9, 'Sunda', 'Bahasa Sunda adalah bahasa yang paling banyak digunakan oleh masyarakat Banten, terutama wilayah Banten Selatan yang mayoritas didominasi oleh masyarakat dari suku Sunda. Namun, ada perbedaan dialek dari bahasa Sunda aslinya di Priangan. Bahasa banten memiliki dialek bahasa Sunda yang terdengar kasar. Hal ini sesuai dengan karakter orang Banten yang tegas dan keras selaras kondisi alamnya di sekitar pesisir pantai.', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, 'Gorontalo', 'Pada dasarnya terdapat banyak bahasa daerah di Gorontalo. Namun hanya tiga bahasa yang cukup dikenal masyarakat di wilayah ini, yaitu Bahasa Gorontalo, Bahasa Suwawa (disebut juga Bahasa Bonda), dan Bahasa Atinggola (Bahasa Andagile). Dalam proses perkembangannya Bahasa Gorontalo lebih dominan sehingga menjadi lebih dikenal oleh masyarakat di seantero Gorontalo. Saat ini Bahasa Gorontalo telah dipengaruhi oleh Bahasa Indonesia dan Bahasa Melayu Manado, sehingga kemurnian bahasanya agak sulit diperoleh dalam penuturan Orang Gorontalo.', 10, '2018-04-01 04:31:15', '2018-04-01 04:31:15'),
(11, 'Melayu', 'Bahasa Melayu mencakup sejumlah bahasa yang saling bermiripan yang dituturkan di wilayah Nusantara dan di Semenanjung Melayu. Sebagai bahasa yang luas pemakaiannya, bahasa ini menjadi bahasa resmi di Brunei, Indonesia (sebagai bahasa Indonesia), dan Malaysia (juga dikenal sebagai bahasa Malaysia); bahasa nasional Singapura; dan menjadi bahasa kerja di Timor Leste (sebagai bahasa Indonesia). Bahasa Melayu merupakan lingua franca dalam kegiatan perdagangan dan keagamaan di Nusantara sejak abad ke-7.', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, 'Bahasa bali', '<span style=\"font-size: 20px;\">semua kabupaten sama2 memakai Bahasa bali namun dialeknya yang berbeda. Pengucapan kata pada kata terakhir yang tertulis a (contoh kuta) diucapkan e (kute)</span>', 12, '2018-04-02 04:07:12', '2018-05-02 03:29:41'),
(13, 'Bahasa Osing', '<p><span style=\"font-size: 20px;\">Bahasa Osing (Båså Using)adalah bahasa yang dipertuturkan di daerah Banyuwangi, Jawa Timur. Secara linguistik, bahasa ini termasuk dari cabang Formosa dalam rumpun bahasa Austronesia.\r\nKata osing artinya mirip dengan kata tusing seperti dalam bahasa Bali, bahasa daerah tetangganya, yang berarti \"tidak\".\r\n\r\nJumlah penduduk asli Banyuwangi yang acap disebut sebagai \"Lare Using\" / laros ini diperkirakan mencapai 500 ribu jiwa dan secara otomatis menjadi pendukung tutur Bahasa Osing ini. Penutur Bahasa Osing ini tersebar terutama di wilayah tengah Kabupaten Banyuwangi, mencakup Kecamatan Kabat, Rogojampi, Glagah, Kalipuro, Srono, Songgon, Cluring, Giri, sebagian kota Banyuwangi, Gambiran, Singojuruh, sebagian Genteng, dan Licin. Wilayah sisanya dihuni warga berbahasa Jawa dialek Jawa Timuran ataupun bahasa Madura. Selain di Banyuwangi, penutur bahasa ini juga dapat dijumpai di wilayah Kabupaten Jember, khususnya di Dusun Krajan Timur, Desa Glundengan, Kecamatan Wuluhan. Namun dialek Osing di wilayah Jember ini telah banyak terpengaruh bahasa Jawa dan Madura akibat keterisolasiannya dari daerah penutur Osing lainnya di Banyuwangi. dijember penutur osing dulu termasuk Kampung Using (dekat stasiun kereta api kota Jember). Biting Arjasa, . Desa Kemiri Kecamatan Panti. Desa Glundengan, Kecamatan Wuluhan Kecamatan Puger dan daerah tegal boto .\r\n\r\nBahasa Osing mempunyai banyak kesamaan dan memiliki kosakata Bahasa Jawa Kuno yang masih tertinggal. Namun di wilayah Banyuwangi sendiri terdapat variasi penggunaan dan kekunaan juga terlihat di situ. Varian yang dianggap Kunoan terdapat utamanya diwilayah Giri,Glagah dan \"Licin, dimana bahasa Osing di sana masih dianggap murni. Sedangkan Bahasa Osing di Kabupaten Jember telah banyak terpengaruh bahasa Jawa dan Madura. Serta pelafalan yang berbeda dengan Bahasa Osing di Banyuwangi.</span></p><p><span style=\"font-size: 20px;\">d</span><b><span style=\"font-size: 20px;\">dwq</span><i><span style=\"font-size: 20px;\">dwqdw</span><u><span style=\"font-size: 20px;\">dwqdq</span><span style=\"background-color: rgb(255, 255, 0); font-size: 20px;\">dwqdq</span></u></i></b></p>', 13, '2018-04-02 04:53:03', '2018-05-02 02:52:35'),
(14, 'Dayak', 'Awal mula bahasa Dayak dari bahasa Austronesia yang masuk melalui bagian utara Kalimantan kemudian menyebar kea rah timur hingga masuk ke pedalaman, serta pulau-pulau di Pasifik dan Selandia Baru. Sampai saat ini, bahasa Dayak berkembang seiring beragam pengaruh. Kedatangan bangsa-bangsa ini membawa pengaruh dan kebudayaan yang beragam. Biasanya penduduk suatu wilayah dibedakan antara “pribumi sejati” yaitu orang Dayak yang memiliki animism dan orang Melayu yang Muslim, serta penetap Cina dan India yang datang kemudian. Ciri-ciri budaya, bahasa dan agama menyebar tanpa mengindahkan asal suku dan melanggar batas kebudayaan serta bahasa yang tadinya ada.\r\n\r\nBeberapa sumber mengatakan bahwa bahasa di Kalimantan termasuk dari rumpun bahasa Austronesia. Namun para ahli membedakan bahasa yang di pakai di Sabah dan Filipina, bahasa Melayu dari Sumatra dan Semenanjung Melayu. Selain pengaruh bahasa dari luar, bahasa dan dialek juga dipengaruhi letak geografis yang ditumbuhi hutan hujan trofis. Pada umumnya orang Dayak di Kalimantan Timur sudah dapat berbahasa Indonesia, terutama kaum muda, karena mereka sudah cukup lama berinteraksi dengan masyarakat lainnya dan juga mereka harus bisa berkomunikasi dengan suku Dayak lainnya yang memiliki perbedaan bahasa. Bahasa perantara orang Dayak adalah bahasa Ot Danum atau Dohoi. Sedangkan bahasa tertua adalah Sangen atau Sangiang yang dipakai dalam upacara adat. Pada saat ini, hanya sedikit orang Dayak yang mengetahui bahasa Sangiang ini.\r\n\r\nOrang Dayak di Kalimantan, terutama Kabupaten Kutai Kartanegara, memilki bahasa dan dialek masing-masing, seperti Dayak Kenyah dan Dayak Kayan memiliki bahasa yang tidak jauh berbeda dan masih lebih banyak persamaannya yang termasuk dalam rumpun Apau Kayan. Dayak Bahau sendiri sebenarnya termasuk suku Kayan yang memiliki 2 dialek, Bahau Sa’ dan Bahau Busang. Dayak Modang juga menggunakan bahasa Bahau. Dayak Benuaq dan Dayak Ngaju memiliki bahasa yang sama yaitu bahasa otrang Ma’anyan. Dayak Punan yang memiliki 24 sub suku Punan, masing-masing memiliki bahasa dan dialek sendiri. Beberapa sub suku menggunakan bahasa Punan dan Busang, ada juga bahasa Bekatan dan Lisum yang digunakan. Dayak Tunjung memiliki bahasa sendiri yaitu bahasa Tunjung, ada 4 dialek yang mereka gunakan. Mereka juga menggunakan bahasa Kutai, mereka juga mengerti bahasa Benuaq.', 14, '2018-04-02 05:46:18', '2018-04-02 05:46:18'),
(15, 'Bangka', 'Bahasa Bangka adalah bahasa daerah yang cenderung digunakan masyarakat bangka belitung karena terbilang mudah dan jelas. Bahasa ini cenderung seperti bahasa melayu pada umumnya tetapi, bahasa ini mengubah penyebutan huruf ‘e’ menjadi ‘E’. Bahasa yang digunakan di sini memiliki banyak ragamnya. Misalnya daerah pangkalpinang dan daerah sungailiat ada sedikit perbedaan dari segi bahasa dan logat / dialeg, begitu juga dengan belinyu, toboali berbeda lagi, setiap daerah ada ciri khasnya tersendiri.', 15, '2018-04-09 06:15:36', '2018-04-09 06:15:36'),
(16, 'Emumu', 'Emumu, atau Emem, adalah salah satu bahasa Pauwasi yang dipertuturkan di daerah sekitar Papua Barat. Bahasa ini memiliki 25% kemiripan leksikal dengan bahasa Yafi.', 16, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, 'Bahasa Banjar', 'Bahasa Banjar merupakan anak cabang bahasa yang berkembang dari Bahasa Melayu. Asal bahasa ini berada di propinsi Kalimantan Selatan yang terbagi atas Banjar Kandangan, Amuntai, Alabiu, Kalua, Alai dan lain-lain. Bahasa Banjar dihipotesakan sebagai bahasa proto Malayik, seperti halnya bahasa Minangkabau dan bahasa Serawai (Bengkulu).\r\n\r\nSelain di Kalimantan Selatan, Bahasa Banjar yang semula sebagai bahasa suku bangsa juga menjadi “bahasa pengantar“ atau “bahasa pergaulan” di daerah lainnya, yakni Kalimantan Tengah dan Kalimantan Timur, juga digunakan di daerah kabupaten Indragiri Hilir, Riau, dimana bahasa ini dipakai sebagai bahasa penghubung antar suku.\r\n\r\nBahasa Banjar banyak dipengaruhi oleh bahasa Melayu, Jawa dan bahasa-bahasa Dayak.\r\n\r\nBahasa Banjar atau sering pula disebut Bahasa Melayu Banjar terdiri atas dua kelompok dialek yaitu :\r\n\r\nBahasa Banjar Hulu\r\nBahasa Banjar Kuala\r\nBahasa Banjar Hulu merupakan dialek asli yang dipakai di wilayah Banua Enamyang merupakan bekas Afdelling Oloe Soengai yang meliputi kabupaten Tapin, Hulu Sungai Selatan, Hulu Sungai Tengah, Hulu Sungai Utara, Balangan dan Tabalong.\r\n\r\nPuak-puak suku Banjar di Hulu Sungai dengan dialeknya masing-masing relatif bersesuaian dengan pembagian administratif pada jaman kerajaan Banjar dan Hindia Belanda yaitu menurut Kalurahan atau distrik pada masa itu, dimana pada jaman sekarang sudah berbeda. Puak-puak suku Banjar tersebut misalnya :\r\n\r\nKelua (hilir) dan Tanjung (hulu) di DAS Tabalong.\r\nBalangan (Paringin) di DAS Balangan\r\nAmuntai dan Alabio di Hulu Sungai Utara\r\nAlai di DAS Batang Alai Hulu Sungai Tengah\r\nLabuhan Amas di DAS Labuhan Amas Hulu Sungai Tengah\r\nNegara (hilir) dan Kandangan (hulu) di DAS Amandit, Hulu Sungai Selatan\r\nMargasari (hilir) dan Rantau (hulu) di DAS Tapin\r\ndan lain-lain\r\nKelua, Amuntai, Alabio, Negara dan Margasari merupakan kelompok Batang Banyu, sedangkan Tanjung, Balangan, Kandangan, Rantau merupakan kelompok Pahuluan. Daerah Oloe Soengai dahulu merupakan pusat kerajaan Hindu, dimana asal mula perkembangan bahasa Melayu Banjar.\r\n\r\nMengingat orang-orang Banjar yang berada di Sumatera dan Malaysia Baratmayoritas berasal dari wilayah Hulu Sungai (Banua Enam), maka bahasa Banjar yang dipakai merupakan campuran dari dialek Bahasa Banjar Hulu menurut asal usulnya di Kalimantan Selatan.\r\n\r\nDialek Bahasa Banjar Kuala yaitu bahasa yang dipakai di wilayah Banjar Kuala yaitu bekas Afdelling Banjarmasin yang meliputi Kabupaten Banjar, Barito Kuala, Tanah Laut, serta kota Banjarmasin dan Banjarbaru. Pemakaiannya meluas hingga wilayah pesisir bagian tenggara Kalimantan (bekas Afdelling Kota Baru) yaitu kabupatenTanah Bumbu dan Kota Baru sampai ke Kalimantan Timur dan Kalimantan Tengah. Bahasa Banjar Kuala dituturkan dengan logat datar tanpa intonasi tertentu, jadi berbeda dengan bahasa Banjar Hulu dengan logat yang kental (ba-ilun). Dialek Banjar Kuala yang asli misalnya yang dituturkan di daerah Kuin, Sungai Jingah, Banua Anyar dan sebagainya di sekitar kota Banjarmasin yang merupakan daerah awal berkembangnya kesultanan Banjar. Bahasa Banjar yang dipakai di Kalimantan Tengah cenderung menggunakan logat Dayak, sehingga keturunan Jawa yang ada di Kalteng, lebih menguasai bahasa Banjar berlogat Dayak daripada bahasa Dayak itu sendiri yang sukar dipelajari.\r\n\r\nContoh Dialek Banjar Hulu\r\n\r\nHagan apa hampiyan mahadang di sia, hidin hudah hampai di rumah hampian (Dialek Kandangan?)\r\nSagan apa sampiyan mahadang di sini, sidin sudah sampai di rumah sampiyan. (Bentuk lazim)\r\nInta intalu sa’igi, imbah itu ambilakan buah nang warna abang awan warna ijau sa’uting dua uting. Jangan ta’ambil nang igat (Dialek Amuntai?)\r\nMinta hintalu sabigi, limbah itu ambilakan buah nang warna habang lawan warna hijau sabuting dua buting. Jangan ta’ambil nang rigat.(Bentuk lazim)\r\nKarena kedudukannya sebagai bahasa pengantar atau bahasa pergaulan, pemakai bahasa Melayu Banjar lebih banyak daripada jumlah suku Banjar itu sendiri. Pemakaian bahasa Melayu Banjar dalam percakapan dan pergaulan sehari-hari di daerah ini lebih dominan dibandingkan dengan bahasa Indonesia. Berbagai suku di Kalimantan Selatan dan sekitarnya berusaha menguasai bahasa Banjar, sehingga dapat pula kita jumpai bahasa Banjar yang diucapkan dengan logat Jawa atauMadura yang masih terasa kental seperti yang kita jumpai di kota Banjarmasin.', 17, '2018-04-09 17:17:59', '2018-04-09 17:17:59'),
(18, 'Melayu', 'Bahasa yang digunakan masyarakat diantaranya bahasa Melayu Bengkulu, bahasa Rejang, bahasa Serawai, bahasa Pasemah, bahasa Kaur, dan bahasa Enggano.', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `subject`, `posting_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'test comment', 1, 1, '2018-03-30 20:10:31', '2018-03-30 20:10:31'),
(2, 'ada apa?', 1, 2, '2018-03-30 20:10:36', '2018-03-30 20:10:36'),
(3, 'gua lagi ngapain yak?', 1, 2, '2018-03-30 21:39:42', '2018-03-30 21:39:42'),
(4, 'apaan sih gaje', 1, 1, '2018-03-30 22:41:33', '2018-03-30 22:41:33'),
(9, 'Tes komen di sini', 4, 2, '2018-03-31 00:55:36', '2018-04-10 03:12:01'),
(10, 'pekalongan', 5, 1, '2018-03-31 03:46:13', '2018-03-31 03:46:13'),
(11, 'halo yogyakarta', 4, 1, '2018-03-31 21:22:51', '2018-04-10 02:22:00'),
(12, 'halo yogyakarta apakabar ?', 9, 8, '2018-04-04 01:54:25', '2018-04-04 01:55:58'),
(13, 'halo pradipta', 5, 2, '2018-04-05 03:33:46', '2018-04-05 03:33:46'),
(14, 'itu dimana ya?', 17, 2, '2018-04-10 03:33:53', '2018-04-10 03:33:53'),
(15, 'kamu siapa?', 1, 9, '2018-04-11 00:48:15', '2018-04-11 00:48:15'),
(16, 'Bali is good', 2, 9, '2018-04-11 00:50:25', '2018-04-11 00:50:25'),
(17, 'halo yogyakarta apakabar ?', 14, 11, '2018-04-11 05:24:40', '2018-04-11 05:24:40'),
(18, 'Halo tapanuli...', 6, 2, '2018-04-11 06:41:22', '2018-04-11 06:41:22'),
(19, 'Kirimannya bagus...', 9, 2, '2018-04-11 21:57:24', '2018-04-11 21:57:24'),
(22, 'fqfew', 17, 1, '2018-04-29 05:10:20', '2018-04-29 05:10:20'),
(28, 'wec', 6, 1, '2018-04-29 19:04:04', '2018-04-29 19:04:04'),
(29, 'test', 1, 1, '2018-04-29 19:04:19', '2018-04-29 19:04:19'),
(30, 'fewfwe', 12, 11, '2018-04-29 19:24:49', '2018-04-29 19:24:49'),
(31, 'test', 2, 11, '2018-04-29 21:10:43', '2018-04-29 21:10:43'),
(32, 'dwqf', 3, 11, '2018-04-29 21:10:54', '2018-04-29 21:10:54'),
(33, 'nyoman', 12, 11, '2018-04-30 00:12:16', '2018-04-30 00:12:16'),
(34, 'dwqdq', 18, 1, '2018-04-30 02:21:05', '2018-04-30 02:21:05'),
(35, 'frg', 6, 1, '2018-04-30 02:21:31', '2018-04-30 02:21:31'),
(37, 'Hai aja', 17, 2, '2018-04-30 03:20:10', '2018-04-30 03:21:55'),
(38, 'Halo batang hari', 11, 2, '2018-04-30 03:30:22', '2018-04-30 03:30:22'),
(39, 'halo loha', 6, 13, '2018-04-30 03:35:40', '2018-04-30 03:35:40'),
(40, 'Tesss', 4, 2, '2018-04-30 04:34:04', '2018-04-30 04:34:04'),
(43, 'guk', 2, 2, '2018-04-30 05:57:49', '2018-04-30 05:57:49'),
(44, 'Pra dip tha', 12, 2, '2018-04-30 06:48:24', '2018-04-30 06:48:24'),
(47, 'betutu enak', 12, 2, '2018-04-30 06:56:34', '2018-04-30 06:56:34'),
(48, 'masa?', 12, 2, '2018-04-30 06:56:44', '2018-04-30 06:56:44'),
(49, 'iya?', 12, 2, '2018-04-30 06:56:54', '2018-04-30 06:56:54'),
(50, 'wes', 3, 2, '2018-04-30 07:19:00', '2018-04-30 07:19:00'),
(51, 'yokk', 12, 2, '2018-04-30 23:44:09', '2018-04-30 23:44:09'),
(52, 'bro', 12, 2, '2018-04-30 23:44:17', '2018-04-30 23:44:17'),
(53, 'ngalih', 12, 2, '2018-04-30 23:44:27', '2018-04-30 23:44:27'),
(54, 'ngalih', 12, 2, '2018-04-30 23:56:25', '2018-04-30 23:56:25'),
(55, 'yyyy', 12, 2, '2018-04-30 23:56:31', '2018-04-30 23:56:31'),
(56, 'uuuu', 12, 2, '2018-04-30 23:56:38', '2018-04-30 23:56:38'),
(57, 'aaaa', 12, 2, '2018-05-01 00:02:19', '2018-05-01 00:02:19'),
(58, 'aaaa', 12, 2, '2018-05-01 00:02:27', '2018-05-01 00:02:27'),
(59, 'aaaa', 12, 2, '2018-05-01 00:02:33', '2018-05-01 00:02:33'),
(60, 'aaa', 12, 2, '2018-05-01 00:07:57', '2018-05-01 00:07:57'),
(79, 'halo', 17, 11, '2018-05-01 07:41:42', '2018-05-01 07:41:42'),
(80, 'haloo', 16, 1, '2018-05-03 22:44:54', '2018-05-03 22:44:54'),
(81, 'test 123', 17, 13, '2018-05-04 10:09:56', '2018-05-04 10:09:56'),
(83, 'uyyy', 12, 2, '2018-05-05 07:09:21', '2018-05-05 07:09:21'),
(84, 'dia', 12, 2, '2018-05-05 07:19:45', '2018-05-05 07:19:45'),
(85, 'balaaa', 3, 2, '2018-05-05 07:23:34', '2018-05-05 07:23:34'),
(86, 'weewww', 13, 2, '2018-05-05 07:23:57', '2018-05-05 07:23:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\EmailUserJobs\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\EmailUserJobs\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\EmailUserJobs\\\":8:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com [php_network_getaddresses: getaddrinfo failed: Name or service not known #0] in /opt/lampp/htdocs/ugm/laravel/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php:269\nStack trace:\n#0 /opt/lampp/htdocs/ugm/laravel/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(62): Swift_Transport_StreamBuffer->establishSocketConnection()\n#1 /opt/lampp/htdocs/ugm/laravel/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(126): Swift_Transport_StreamBuffer->initialize(Array)\n#2 /opt/lampp/htdocs/ugm/laravel/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(67): Swift_Transport_AbstractSmtpTransport->start()\n#3 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(464): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(248): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'email.confirmat...\', Array, Object(Closure))\n#6 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#8 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(263): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(218): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\SendEmailUser))\n#10 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(119): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\SendEmailUser))\n#11 /opt/lampp/htdocs/ugm/laravel/app/Jobs/EmailUserJobs.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\SendEmailUser))\n#12 [internal function]: App\\Jobs\\EmailUserJobs->handle()\n#13 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#14 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#18 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\EmailUserJobs))\n#19 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\EmailUserJobs))\n#20 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\EmailUserJobs), false)\n#22 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#23 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#24 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#25 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(229): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#28 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#29 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(29): call_user_func_array(Array, Array)\n#30 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Container/Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(183): Illuminate\\Container\\Container->call(Array)\n#34 /opt/lampp/htdocs/ugm/laravel/vendor/symfony/console/Command/Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Console/Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 /opt/lampp/htdocs/ugm/laravel/vendor/symfony/console/Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 /opt/lampp/htdocs/ugm/laravel/vendor/symfony/console/Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /opt/lampp/htdocs/ugm/laravel/vendor/symfony/console/Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Console/Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /opt/lampp/htdocs/ugm/laravel/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /opt/lampp/htdocs/ugm/laravel/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2018-05-05 00:20:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupatens`
--

CREATE TABLE `kabupatens` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kabupatens`
--

INSERT INTO `kabupatens` (`id`, `nama`, `provinsi_id`, `created_at`, `updated_at`) VALUES
(1, 'Aceh Barat Daya', 1, NULL, NULL),
(2, 'Aceh Barat', 1, NULL, NULL),
(3, 'Aceh Besar', 1, NULL, NULL),
(4, 'Aceh Jaya', 1, NULL, NULL),
(5, 'Aceh Selatan', 1, NULL, NULL),
(6, 'Aceh Singkil', 1, NULL, NULL),
(7, 'Aceh Tamiang', 1, NULL, NULL),
(8, 'Aceh Tengah', 1, NULL, NULL),
(9, 'Aceh Tenggara', 1, NULL, NULL),
(10, 'Aceh Timur', 1, NULL, NULL),
(11, 'Aceh Utara', 1, NULL, NULL),
(12, 'Bener Meriah', 1, NULL, NULL),
(13, 'Bireuen', 1, NULL, NULL),
(14, 'Gayo Lues', 1, NULL, NULL),
(15, 'Nagan Raya', 1, NULL, NULL),
(16, 'Pidie Jaya', 1, NULL, NULL),
(17, 'Pidie', 1, NULL, NULL),
(18, 'Simeulue', 1, NULL, NULL),
(19, 'Badung', 2, NULL, NULL),
(38, 'Bangli', 2, NULL, NULL),
(39, 'Buleleng', 2, NULL, NULL),
(40, 'Gianyar', 2, NULL, NULL),
(41, 'Jembrana', 2, NULL, NULL),
(42, 'Karangasem', 2, NULL, NULL),
(43, 'Klungkung', 2, NULL, NULL),
(44, 'Tabanan', 2, NULL, NULL),
(45, 'Lebak', 3, NULL, NULL),
(46, 'Pandeglang', 3, NULL, NULL),
(47, 'Serang', 3, NULL, NULL),
(48, 'Tangerang', 3, NULL, NULL),
(49, 'Bengkulu Selatan', 4, NULL, NULL),
(50, 'Bengkulu Tengah', 4, NULL, NULL),
(51, 'Bengkulu Utara', 4, NULL, NULL),
(52, 'Kaur', 4, NULL, NULL),
(53, 'Kepahiang', 4, NULL, NULL),
(54, 'Lebong', 4, NULL, NULL),
(55, 'Mukomuko', 4, NULL, NULL),
(56, 'Rejang Lebong', 4, NULL, NULL),
(57, 'Seluma', 4, NULL, NULL),
(58, 'Boalemo', 5, NULL, NULL),
(59, 'Bone Bolango', 5, NULL, NULL),
(60, 'Gorontalo Utara', 5, NULL, NULL),
(61, 'Gorontalo', 5, NULL, NULL),
(62, 'Pohuwato', 5, NULL, NULL),
(63, 'Administrasi Kepulauan Seribu', 6, NULL, NULL),
(64, 'Batanghari', 7, NULL, NULL),
(65, 'Bungo', 7, NULL, NULL),
(66, 'Kerinci', 7, NULL, NULL),
(67, 'Merangin', 7, NULL, NULL),
(68, 'Muaro Jambi', 7, NULL, NULL),
(69, 'Sarolangun', 7, NULL, NULL),
(70, 'Tanjung Jabung Barat', 7, NULL, NULL),
(71, 'Tanjung Jabung Timur', 7, NULL, NULL),
(72, 'Tebo', 7, NULL, NULL),
(73, 'Bandung Barat', 8, NULL, NULL),
(74, 'Bandung', 8, NULL, NULL),
(75, 'Bekasi', 8, NULL, NULL),
(76, 'Bogor', 8, NULL, NULL),
(77, 'Ciamis', 8, NULL, NULL),
(78, 'Cianjur', 8, NULL, NULL),
(79, 'Cirebon', 8, NULL, NULL),
(80, 'Garut', 8, NULL, NULL),
(81, 'Indramayu', 8, NULL, NULL),
(82, 'Karawang', 8, NULL, NULL),
(83, 'Kuningan', 8, NULL, NULL),
(84, 'Majalengka', 8, NULL, NULL),
(85, 'Purwakarta', 8, NULL, NULL),
(86, 'Subang', 8, NULL, NULL),
(87, 'Sukabumi', 8, NULL, NULL),
(88, 'Sumedang', 8, NULL, NULL),
(89, 'Tasikmalaya', 8, NULL, NULL),
(90, 'Banjarnegara', 9, NULL, NULL),
(91, 'Banyumas', 9, NULL, NULL),
(92, 'Batang', 9, NULL, NULL),
(93, 'Blora', 9, NULL, NULL),
(94, 'Boyolali', 9, NULL, NULL),
(95, 'Brebes', 9, NULL, NULL),
(96, 'Cilacap', 9, NULL, NULL),
(97, 'Demak', 9, NULL, NULL),
(98, 'Grobogan', 9, NULL, NULL),
(99, 'Jepara', 9, NULL, NULL),
(100, 'Karanganyar', 9, NULL, NULL),
(101, 'Kebumen', 9, NULL, NULL),
(102, 'Kendal', 9, NULL, NULL),
(103, 'Klaten', 9, NULL, NULL),
(104, 'Kudus', 9, NULL, NULL),
(105, 'Magelang', 9, NULL, NULL),
(106, 'Pati', 9, NULL, NULL),
(107, 'Pekalongan', 9, NULL, NULL),
(108, 'Pemalang', 9, NULL, NULL),
(109, 'Purbalingga', 9, NULL, NULL),
(110, 'Purworejo', 9, NULL, NULL),
(111, 'Rembang', 9, NULL, NULL),
(112, 'Semarang', 9, NULL, NULL),
(113, 'Sragen', 9, NULL, NULL),
(114, 'Sukoharjo', 9, NULL, NULL),
(115, 'Tegal', 9, NULL, NULL),
(116, 'Temanggung', 9, NULL, NULL),
(117, 'Wonogiri', 9, NULL, NULL),
(118, 'Wonosobo', 9, NULL, NULL),
(119, 'Bangkalan', 10, NULL, NULL),
(120, 'Banyuwangi', 10, NULL, NULL),
(121, 'Blitar', 10, NULL, NULL),
(122, 'Bojonegoro', 10, NULL, NULL),
(123, 'Bondowoso', 10, NULL, NULL),
(124, 'Gresik', 10, NULL, NULL),
(125, 'Jember', 10, NULL, NULL),
(126, 'Jombang', 10, NULL, NULL),
(127, 'Kediri', 10, NULL, NULL),
(128, 'Lamongan', 10, NULL, NULL),
(129, 'Lumajang', 10, NULL, NULL),
(130, 'Madiun', 10, NULL, NULL),
(131, 'Malang', 10, NULL, NULL),
(132, 'Mojokerto', 10, NULL, NULL),
(133, 'Nganjuk', 10, NULL, NULL),
(134, 'Ngawi', 10, NULL, NULL),
(135, 'Pacitan', 10, NULL, NULL),
(136, 'Pamekasan', 10, NULL, NULL),
(137, 'Pasuruan', 10, NULL, NULL),
(138, 'Ponorogo', 10, NULL, NULL),
(139, 'Probolinggo', 10, NULL, NULL),
(140, 'Sampang', 10, NULL, NULL),
(141, 'Sidoarjo', 10, NULL, NULL),
(142, 'Situbondo', 10, NULL, NULL),
(143, 'Sumenep', 10, NULL, NULL),
(144, 'Trenggalek', 10, NULL, NULL),
(145, 'Tuban', 10, NULL, NULL),
(146, 'Tulungagung', 10, NULL, NULL),
(147, 'Bengkayang', 11, NULL, NULL),
(148, 'Kapuas Hulu', 11, NULL, NULL),
(149, 'Kayong Utara', 11, NULL, NULL),
(150, 'Ketapang', 11, NULL, NULL),
(151, 'Kubu Raya', 11, NULL, NULL),
(152, 'Landak', 11, NULL, NULL),
(153, 'Melawi', 11, NULL, NULL),
(154, 'Mempawah', 11, NULL, NULL),
(155, 'Sambas', 11, NULL, NULL),
(156, 'Sanggau', 11, NULL, NULL),
(157, 'Sekadau', 11, NULL, NULL),
(158, 'Sintang', 11, NULL, NULL),
(159, 'Balangan', 12, NULL, NULL),
(160, 'Banjar', 12, NULL, NULL),
(161, 'Barito Kuala', 12, NULL, NULL),
(162, 'Hulu Sungai Selatan', 12, NULL, NULL),
(163, 'Hulu Sungai Tengah', 12, NULL, NULL),
(164, 'Kabupaten Hulu Sungai Utara', 12, NULL, NULL),
(165, 'Kabupaten Kotabaru', 12, NULL, NULL),
(166, 'Kabupaten Tabalong', 12, NULL, NULL),
(167, 'Tanah Bumbu', 12, NULL, NULL),
(168, 'Tanah Laut', 12, NULL, NULL),
(169, 'Tapin', 12, NULL, NULL),
(170, 'Barito Selatan', 13, NULL, NULL),
(171, 'Barito Timur', 13, NULL, NULL),
(172, 'Barito Utara', 13, NULL, NULL),
(173, 'Gunung Mas', 13, NULL, NULL),
(174, 'Kapuas', 13, NULL, NULL),
(175, 'Katingan', 13, NULL, NULL),
(176, 'Kotawaringin Barat', 13, NULL, NULL),
(177, 'Kotawaringin Timur', 13, NULL, NULL),
(178, 'Lamandau', 13, NULL, NULL),
(179, 'Murung Raya', 13, NULL, NULL),
(180, 'Pulang Pisau', 13, NULL, NULL),
(181, 'Seruyan', 13, NULL, NULL),
(182, 'Sukamara', 13, NULL, NULL),
(183, 'Berau', 14, NULL, NULL),
(184, 'Kutai Barat', 14, NULL, NULL),
(185, 'Kutai Kartanegara', 14, NULL, NULL),
(186, 'Kutai Timur', 14, NULL, NULL),
(187, 'Mahakam Ulu', 14, NULL, NULL),
(188, 'Paser', 14, NULL, NULL),
(189, 'Penajam Paser Utara', 14, NULL, NULL),
(190, 'Bulungan', 15, NULL, NULL),
(191, 'Malinau', 15, NULL, NULL),
(192, 'Nunukan', 15, NULL, NULL),
(193, 'Tana Tidung', 15, NULL, NULL),
(194, 'Bangka Barat', 16, NULL, NULL),
(195, 'Bangka Selatan', 16, NULL, NULL),
(196, 'Bangka Tengah', 16, NULL, NULL),
(197, 'Bangka', 16, NULL, NULL),
(198, 'Belitung Timur', 16, NULL, NULL),
(199, 'Belitung', 16, NULL, NULL),
(200, 'Bintan', 17, NULL, NULL),
(201, 'Karimun', 17, NULL, NULL),
(202, 'Kepulauan Anambas', 17, NULL, NULL),
(203, 'Lingga', 17, NULL, NULL),
(204, 'Natuna', 17, NULL, NULL),
(205, 'Lampung Barat', 18, NULL, NULL),
(206, 'Lampung Selatan', 18, NULL, NULL),
(207, 'Lampung Tengah', 18, NULL, NULL),
(208, 'Lampung Timur', 18, NULL, NULL),
(209, 'Lampung Utara', 18, NULL, NULL),
(210, 'Mesuji', 18, NULL, NULL),
(211, 'Pesawaran', 18, NULL, NULL),
(212, 'Pringsewu', 18, NULL, NULL),
(213, 'Tanggamus', 18, NULL, NULL),
(214, 'Tulang Bawang Barat', 18, NULL, NULL),
(215, 'Tulang Bawang', 18, NULL, NULL),
(216, 'Way Kanan', 18, NULL, NULL),
(217, 'Buru Selatan', 19, NULL, NULL),
(218, 'Buru', 19, NULL, NULL),
(219, 'Kepulauan Aru', 19, NULL, NULL),
(220, 'Maluku Barat Daya', 19, NULL, NULL),
(221, 'Maluku Tengah', 19, NULL, NULL),
(222, 'Maluku Tenggara Barat', 19, NULL, NULL),
(223, 'Maluku Tenggara', 19, NULL, NULL),
(224, 'Seram Bagian Barat', 19, NULL, NULL),
(225, 'Seram Bagian Timur', 19, NULL, NULL),
(226, 'Halmahera Barat', 20, NULL, NULL),
(227, 'Halmahera Selatan', 20, NULL, NULL),
(228, 'Halmahera Tengah', 20, NULL, NULL),
(229, 'Halmahera Timur', 20, NULL, NULL),
(230, 'Kepulauan Sula', 20, NULL, NULL),
(231, 'Pulau Morotai', 20, NULL, NULL),
(232, 'Bima', 21, NULL, NULL),
(233, 'Dompu', 21, NULL, NULL),
(234, 'Lombok Barat', 21, NULL, NULL),
(235, 'Lombok Tengah', 21, NULL, NULL),
(236, 'Lombok Timur', 21, NULL, NULL),
(237, 'Lombok Utara', 21, NULL, NULL),
(238, 'Sumbawa Barat', 21, NULL, NULL),
(239, 'Sumbawa', 21, NULL, NULL),
(240, 'Alor', 22, NULL, NULL),
(241, 'Belu', 22, NULL, NULL),
(242, 'Ende', 22, NULL, NULL),
(243, 'Flores Timur', 22, NULL, NULL),
(244, 'Kupang', 22, NULL, NULL),
(245, 'Lembata', 22, NULL, NULL),
(246, 'Manggarai Barat', 22, NULL, NULL),
(247, 'Manggarai Timur', 22, NULL, NULL),
(248, 'Manggarai', 22, NULL, NULL),
(249, 'Nagekeo', 22, NULL, NULL),
(250, 'Ngada', 22, NULL, NULL),
(251, 'Rote Ndao', 22, NULL, NULL),
(252, 'Sabu Raijua', 22, NULL, NULL),
(253, 'Sikka', 22, NULL, NULL),
(254, 'Sumba Barat Daya', 22, NULL, NULL),
(255, 'Sumba Barat', 22, NULL, NULL),
(256, 'Sumba Tengah', 22, NULL, NULL),
(257, 'Sumba Timur', 22, NULL, NULL),
(258, 'Timor Tengah Selatan', 22, NULL, NULL),
(259, 'Timor Tengah Utara', 22, NULL, NULL),
(260, 'Asmat', 23, NULL, NULL),
(261, 'Biak Numfor', 23, NULL, NULL),
(262, 'Boven Digoel', 23, NULL, NULL),
(263, 'Deiyai', 23, NULL, NULL),
(264, 'Dogiyai', 23, NULL, NULL),
(265, 'Intan Jaya', 23, NULL, NULL),
(266, 'Jayapura', 23, NULL, NULL),
(267, 'Jayawijaya', 23, NULL, NULL),
(268, 'Keerom', 23, NULL, NULL),
(269, 'Kepulauan Yapen', 23, NULL, NULL),
(270, 'Lanny Jaya', 23, NULL, NULL),
(271, 'Mamberamo Raya', 23, NULL, NULL),
(272, 'Mamberamo Tengah', 23, NULL, NULL),
(273, 'Mappi', 23, NULL, NULL),
(274, 'Merauke', 23, NULL, NULL),
(275, 'Mimika', 23, NULL, NULL),
(276, 'Nabire', 23, NULL, NULL),
(277, 'Nduga', 23, NULL, NULL),
(278, 'Paniai', 23, NULL, NULL),
(279, 'Pegunungan Bintang', 23, NULL, NULL),
(280, 'Puncak Jaya', 23, NULL, NULL),
(281, 'Puncak', 23, NULL, NULL),
(282, 'Sarmi', 23, NULL, NULL),
(283, 'Supiori', 23, NULL, NULL),
(284, 'Tolikara', 23, NULL, NULL),
(285, 'Waropen', 23, NULL, NULL),
(286, 'Yahukimo', 23, NULL, NULL),
(287, 'Yalimo', 23, NULL, NULL),
(288, 'Fakfak', 24, NULL, NULL),
(289, 'Kaimana', 24, NULL, NULL),
(290, 'Manokwari', 24, NULL, NULL),
(291, 'Maybrat', 24, NULL, NULL),
(292, 'Raja Ampat', 24, NULL, NULL),
(293, 'Sorong Selatan', 24, NULL, NULL),
(294, 'Sorong', 24, NULL, NULL),
(295, 'Tambrauw', 24, NULL, NULL),
(296, 'Teluk Bintuni', 24, NULL, NULL),
(297, 'Teluk Wondama', 24, NULL, NULL),
(298, 'Bengkalis', 25, NULL, NULL),
(299, 'Indragiri Hilir', 25, NULL, NULL),
(300, 'Indragiri Hulu', 25, NULL, NULL),
(301, 'Kampar', 25, NULL, NULL),
(302, 'Kepulauan Meranti', 25, NULL, NULL),
(303, 'Kuantan Singingi', 25, NULL, NULL),
(304, 'Pelalawan', 25, NULL, NULL),
(305, 'Rokan Hilir', 25, NULL, NULL),
(306, 'Rokan Hulu', 25, NULL, NULL),
(307, 'Siak', 25, NULL, NULL),
(308, 'Majene', 26, NULL, NULL),
(309, 'Mamasa', 26, NULL, NULL),
(310, 'Mamuju Utara', 26, NULL, NULL),
(311, 'Mamuju', 26, NULL, NULL),
(312, 'Polewali Mandar', 26, NULL, NULL),
(313, 'Bantaeng', 27, NULL, NULL),
(314, 'Barru', 27, NULL, NULL),
(315, 'Bone', 27, NULL, NULL),
(316, 'Bulukumba', 27, NULL, NULL),
(317, 'Enrekang', 27, NULL, NULL),
(318, 'Gowa', 27, NULL, NULL),
(319, 'Jeneponto', 27, NULL, NULL),
(320, 'Kepulauan Selayar', 27, NULL, NULL),
(321, 'Luwu Timur', 27, NULL, NULL),
(322, 'Luwu Utara', 27, NULL, NULL),
(323, 'Luwu', 27, NULL, NULL),
(324, 'Maros', 27, NULL, NULL),
(325, 'Pangkajene dan Kepulauan', 27, NULL, NULL),
(326, 'Pinrang', 27, NULL, NULL),
(327, 'Sidenreng Rappang', 27, NULL, NULL),
(328, 'Sinjai', 27, NULL, NULL),
(329, 'Soppeng', 27, NULL, NULL),
(330, 'Takalar', 27, NULL, NULL),
(331, 'Tana Toraja', 27, NULL, NULL),
(332, 'Toraja Utara', 27, NULL, NULL),
(333, 'Wajo', 27, NULL, NULL),
(334, 'Banggai Kepulauan', 28, NULL, NULL),
(335, 'Banggai', 28, NULL, NULL),
(336, 'Buol', 28, NULL, NULL),
(337, 'Donggala', 28, NULL, NULL),
(338, 'Morowali', 28, NULL, NULL),
(339, 'Parigi Moutong', 28, NULL, NULL),
(340, 'Poso', 28, NULL, NULL),
(341, 'Sigi', 28, NULL, NULL),
(342, 'Tojo Una-Una', 28, NULL, NULL),
(343, 'Toli-Toli', 28, NULL, NULL),
(344, 'Bombana', 29, NULL, NULL),
(345, 'Buton Utara', 29, NULL, NULL),
(346, 'Buton', 29, NULL, NULL),
(347, 'Kolaka Utara', 29, NULL, NULL),
(348, 'Kolaka', 29, NULL, NULL),
(349, 'Konawe Selatan', 29, NULL, NULL),
(350, 'Konawe Utara', 29, NULL, NULL),
(351, 'Konawe', 29, NULL, NULL),
(352, 'Muna', 29, NULL, NULL),
(353, 'Wakatobi', 29, NULL, NULL),
(354, 'Bolaang Mongondow Selatan', 30, NULL, NULL),
(355, 'Bolaang Mongondow Timur', 30, NULL, NULL),
(356, 'Bolaang Mongondow Utara', 30, NULL, NULL),
(357, 'Bolaang Mongondow', 30, NULL, NULL),
(358, 'Kepulauan Sangihe', 30, NULL, NULL),
(359, 'Kepulauan Siau Tagulandang Biaro', 30, NULL, NULL),
(360, 'Kepulauan Talaud', 30, NULL, NULL),
(361, 'Minahasa Selatan', 30, NULL, NULL),
(362, 'Minahasa Tenggara', 30, NULL, NULL),
(363, 'Minahasa Utara', 30, NULL, NULL),
(364, 'Minahasa', 30, NULL, NULL),
(365, 'Agam', 31, NULL, NULL),
(366, 'Dharmasraya', 31, NULL, NULL),
(367, 'Kepulauan Mentawai', 31, NULL, NULL),
(368, 'Lima Puluh Kota', 31, NULL, NULL),
(369, 'Padang Pariaman', 31, NULL, NULL),
(370, 'Pasaman Barat', 31, NULL, NULL),
(371, 'Pasaman', 31, NULL, NULL),
(372, 'Pesisir Selatan', 31, NULL, NULL),
(373, 'Sijunjung', 31, NULL, NULL),
(374, 'Solok Selatan', 31, NULL, NULL),
(375, 'Solok', 31, NULL, NULL),
(376, 'Tanah Datar', 31, NULL, NULL),
(377, 'Banyuasin', 32, NULL, NULL),
(378, 'Empat Lawang', 32, NULL, NULL),
(379, 'Lahat', 32, NULL, NULL),
(380, 'Muara Enim', 32, NULL, NULL),
(381, 'Musi Banyuasin', 32, NULL, NULL),
(382, 'Musi Rawas', 32, NULL, NULL),
(383, 'Ogan Ilir', 32, NULL, NULL),
(384, 'Ogan Komering Ilir', 32, NULL, NULL),
(385, 'Ogan Komering Ulu Selatan', 32, NULL, NULL),
(386, 'Ogan Komering Ulu Timur', 32, NULL, NULL),
(387, 'Ogan Komering Ulu', 32, NULL, NULL),
(388, 'Asahan', 33, NULL, NULL),
(389, 'Batubara', 33, NULL, NULL),
(390, 'Dairi', 33, NULL, NULL),
(391, 'Deli Serdang', 33, NULL, NULL),
(392, 'Humbang Hasundutan', 33, NULL, NULL),
(393, 'Karo', 33, NULL, NULL),
(394, 'Labuhanbatu Selatan', 33, NULL, NULL),
(395, 'Labuhanbatu Utara', 33, NULL, NULL),
(396, 'Labuhanbatu', 33, NULL, NULL),
(397, 'Langkat', 33, NULL, NULL),
(398, 'Mandailing Natal', 33, NULL, NULL),
(399, 'Nias Barat', 33, NULL, NULL),
(400, 'Nias Selatan', 33, NULL, NULL),
(401, 'Nias Utara', 33, NULL, NULL),
(402, 'Nias', 33, NULL, NULL),
(403, 'Padang Lawas Utara', 33, NULL, NULL),
(404, 'Padang Lawas', 33, NULL, NULL),
(405, 'Pakpak Bharat', 33, NULL, NULL),
(406, 'Samosir', 33, NULL, NULL),
(407, 'Serdang Bedagai', 33, NULL, NULL),
(408, 'Simalungun', 33, NULL, NULL),
(409, 'Tapanuli Selatan', 33, NULL, NULL),
(410, 'Tapanuli Tengah', 33, NULL, NULL),
(411, 'Tapanuli Utara', 33, NULL, NULL),
(412, 'Toba Samosir', 33, NULL, NULL),
(413, 'Bantul', 34, NULL, NULL),
(414, 'Gunung Kidul', 34, NULL, NULL),
(415, 'Kulon Progo', 34, NULL, NULL),
(416, 'Sleman', 34, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `likeable_id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `likeable_id`, `likeable_type`) VALUES
(13, 11, 1, 'App\\Models\\Posting'),
(18, 11, 6, 'App\\Models\\Posting'),
(68, 11, 10, 'App\\Models\\Posting'),
(71, 13, 6, 'App\\Models\\Posting'),
(72, 2, 12, 'App\\Models\\Posting'),
(149, 11, 12, 'App\\Models\\Posting'),
(155, 11, 17, 'App\\Models\\Posting'),
(162, 11, 5, 'App\\Models\\Posting'),
(165, 1, 6, 'App\\Models\\Posting'),
(196, 1, 16, 'App\\Models\\Posting'),
(240, 1, 11, 'App\\Models\\Posting'),
(241, 1, 18, 'App\\Models\\Posting'),
(274, 1, 9, 'App\\Models\\Posting'),
(295, 2, 17, 'App\\Models\\Posting'),
(317, 13, 17, 'App\\Models\\Posting'),
(318, 13, 12, 'App\\Models\\Posting'),
(325, 2, 1, 'App\\Models\\Posting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasis`
--

CREATE TABLE `lokasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lokasis`
--

INSERT INTO `lokasis` (`id`, `longitude`, `latitude`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, '97.0068390', '3.7963430', 1, '2018-03-30 09:40:55', '2018-03-30 09:40:55'),
(2, '115.3193170', '-8.1292660', 2, '2018-03-30 21:05:21', '2018-03-31 05:07:40'),
(3, '106.8650390', '-6.1751100', 3, '2018-03-30 21:47:44', '2018-03-30 21:47:44'),
(4, '107.6191230', '-6.9174640', 4, '2018-03-30 22:39:58', '2018-03-30 22:39:58'),
(5, '109.6745920', '-6.8898360', 5, '2018-03-30 23:15:12', '2018-03-30 23:15:12'),
(6, '99.1013500', '2.0405250', 6, '2018-03-31 04:01:42', '2018-03-31 04:01:42'),
(9, '106.4877070', '-6.1872100', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, '122.8084500', '0.5692730', 10, '2018-04-01 04:31:15', '2018-04-01 04:31:15'),
(11, '103.0817900', '-1.7083920', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, '114.6667940', '-8.3233440', 12, '2018-04-02 04:07:12', '2018-04-02 04:07:12'),
(13, '114.3691420', '-8.2190940', 13, '2018-04-02 04:53:03', '2018-04-02 04:53:03'),
(14, '110.5215460', '-1.5697620', 14, '2018-04-02 05:46:18', '2018-04-02 05:46:18'),
(15, '105.9229900', '-1.8742940', 15, '2018-04-09 06:15:36', '2018-04-09 06:15:36'),
(16, '139.8547270', '-2.9879230', 16, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, '114.9991460', '-3.3200230', 17, '2018-04-09 17:17:59', '2018-04-09 17:17:59'),
(18, '101.9804610', '-3.2663250', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanans`
--

CREATE TABLE `makanans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `makanans`
--

INSERT INTO `makanans` (`id`, `nama`, `desc`, `foto1`, `foto2`, `foto3`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, 'Mi Putih Abdya', '<p>Mi Putih Abdya ini merupakan wisata kuliner Aceh yang paling populer di daerah ini. Selain menyebutnya dengan mi putih, masyarakat Abdya juga menamakan mi ini dengan mi kocok. Ya, sebelum dihidangkan kepada pembeli, mi yang terdiri dari mi kuning yang terbuat dari tepung terigu dan mi putih yang berbahan dasar tepung kanji/tapioka ini, kedua mi tersebut dimasukkan ke dalam saringan lalu dikocok ke dalam air mendidih. Setelah mi menjadi lunak, barulah disajikan dengan kuah sop. Tidak lupa juga ditambahkan daging cincang dan acar bawang sebagai topping-nya.\r\nSebenarnya mi kocok bukanlah makanan yang asing bagi masyarakat Aceh. Hampir setiap daerah di Serambi Mekah ini ada yang menjual mi kocok. Namu, mi kocok Abdya memiliki citarasa tersendiri yang berbeda dengan mi kocong yang ada di daerah lainnya.\r\n\r\nBagi Ezytravelers yang ingin menyantap Mi Kocok Abdya, silaka bertandang ke Kabupaten yang berbatasan langsung dengan Aceh Selatan ini. Di sana banyak sekali lapak yang menjual Mi Kocok. Menurut saya, mi kocok yang enak itu ada di Pulau Kayu Susoh dan di Blangpidie.</p><p><br></p><p>dwqdq<span style=\"background-color: rgb(255, 255, 0);\">dwqdqwdq <b>dwqdqdq<i>dwqdqdq<u>dwqwdqdq</u></i></b></span></p><p><span style=\"background-color: rgb(255, 255, 0);\"><b><i><u>abdisudiatmika</u></i></b></span></p>', 'a84wHADaZG.jpeg', 'S0GWAXTiss.jpeg', 'JBk9G11q43.jpg', 1, '2018-03-30 09:40:55', '2018-04-29 05:23:12'),
(2, 'Mengguh', 'Bubur Mungguh dulu ah, mumpung pas ke Buleleng…\r\n\r\nKabupaten Buleleng banyak banget Mz temui kuliner yang mantep dan tentunya khas Bali. Satu Kabupaten aja udah beragam kulinernya, apa lagi seluruh Bali ya? Yup, salah satu kuliner Bali, yaitu Bubur Mungguh merupakan bubur khas dari daerah Bali Utara, Teja Kula, Buleleng. Menurut orang di sana, bubur ini sering disajikan saat upacara-upacara adat, punya cita rasa yang khas, sehingga banyak diburu dan dijual di daerah lain terutama di kota seperti Denpasar.\r\n\r\nSegitunya lho kuliner Bubur Mungguh, tapi buat para pecinta bubur-buburan, harus dicobain nih, dijamin bikin air ludah mengalir deras. :9 Bubur Mungguh biasanya bahan dasarnya beras dan santan diisi topping, semacam ayam sitsit (suwir) yang telah dibumbui, lalu disiram kuah ayam yang kental plus di tambah urap sayur yang disajikan terpisah, rasanya benar-benar komplit, gurih, agak pedas, ditambah krenyes-kreyes dari sayur urapnya.\r\n\r\nMenarik banget untuk dicoba Bubur Mungguh yang bisa bikin ketagihan, apalagi dimakan pas mentari baru bersinar ditemani teh anget sambil menikmati pemandangan sawah di pagi hari. Fix liburan kalian seindah dan semanis madu, semua penat dipikiran jadi hilang. Buat kamu yang pengen nyoba bubur ini, silakan dateng aja ke Desa Teja Kula, Buleleng. Tentunya dengan harga yang pas di kantong sambil nyicipin berbagai jenis kuliner lainnya', 'JhsFJsvDQF.jpg', 'VkQFYJsARA.jpg', 'WydR4Kcf2j.jpg', 2, '2018-03-30 21:05:21', '2018-03-31 05:07:40'),
(3, 'Kerak Telor', 'Untuk yang pertama, kamu mungkin sudah tidak asing dengan makanan ini. Namanya kerak telor. Makanan khas Betawi ini bisa dikatakan sebagai ikon kuliner Jakarta yang dikenal oleh orang-orang dari luar kota Jakarta. Kerak telor sendiri adalah makanan yang dibuat dari bahan dasar berupa beras ketan putih, telur ayam atau telur bebek, ebi kering, bawang goreng, dan diberi bumbu halus dari campuran kelapa sangrai, cabe merah, garam, gula, merica, jahe, dan kencur.\r\n\r\nKerak telor dimasak dengan cara yang unik. Biasanya panganan ini dimasak dalam wajan kecil tanpa menggunakan minyak. Saat dibakar dengan arang, kerak telor yang sudah setengah matang akan dibalik bersama dengan wajannya. Perihal rasanya, kerak telor akan memberikan pengalaman baru bagi lidah kamu. Rasa kerak telor yang gurih dengan tekstur beras ketan yang legit akan membuat kamu betah berlama-lama untuk mengunyahnya.', 'EUXqOxZLYV.jpg', '08kFCgfQix.jpg', 'le1ygQQE6b.jpg', 3, '2018-03-30 21:47:43', '2018-03-30 21:47:43'),
(4, 'Seblak', 'Makanan khas Bandung yang bernama seblak ini cukup populer dikalangan wisatawan dan anak-anak sekolah. \r\nHampir di setiap kota-kota besar di Indonesia saat ini mudah ditemukan penjual seblak. Nah, bagi Anda yang belum tahu apa itu seblak, baca terus kiriman ini ya!\r\n\r\nSeblak merupakan makanan yang terbuat dari kerupuk yang direbus (baca : kerupuk basah) dan dicampur dengan racikan bumbu pedas terdiri dari cabai, bawang putih, garam hingga kencur. Tak hanya itu, biasanya ditambah dengan sayuran dan sumber protein seperti telur, ayam, boga bahari atau olahan daging sapi.\r\n\r\nSebenarnya ada 2 jenis seblak yaitu seblak kering dan seblak basah. Namun, saat ini seblak basah lebih terkenal sebagai kuliner Bandung yang hits dengan beraneka toping, mulai dari bakso, siomay, jamur, brokoli, kwetiauw, dan lain sebagainya.\r\nBagi Anda yang ingin merasakan seblak enak di Bandung bisa mampir ke Seblak Basah Deu’ Tjenghar Jl. Purnawarman, Babakan Ciamis, Sumur Bandung, Kota Bandung dan Seblak Oces Jl. Tamansari (Depan Unisba). Untuk harga satu porsinya cukup murah meriah sekitar 8 – 12 ribu rupiah.', 'HCbSJHcKey.jpeg', 'XBOsTVrXGK.jpg', 'mU7iJAT23o.png', 4, '2018-03-30 22:39:58', '2018-03-31 00:47:46'),
(5, 'Tauto atau Soto Tauco', 'Makanan khas Pekalongan lainnya yang tidak kalah enak dan terkenalnya ini adalah tauto atau soto tauco. Tauto ini sebenarnya sejenis soto namun menggunakan bumbu tauco sebagai bahan penyedap utamanya. Tauco yang digunakan adalah tauco yang berasa manis. Isi masakan khas Pekalongan ini terdiri dari daging sandung lamur, emping dan telur rebus.\r\n\r\nPenyajian makanan khas Pekalongan ini akan semakin nikmat dengan taburan bawang goren, perasan jeruk nipis dan potongan daun seledri, mie bihun, bawang merah dan kuah soto baru kemudian ditambah kuah tauto, yaitu kedelai yang terlebih dahulu dimasak baru kemudian dihaluskan. Hal inilah yang membuat citarasa soto Tauco khas Pekalongan sangat nikmat.', 'yPnwmGAyJ6.png', 'ZlnKw4oLxw.jpg', 'CG85DxyDni.jpg', 5, '2018-03-30 23:15:11', '2018-03-30 23:15:11'),
(6, 'Kue Talam', '<span style=\"font-size: 20px;\">Hasil dari olahan santan dan gula merah ini akan menghasilkan kue Talam yang berwarna coklat muda keemasan pada bagian gula merahnya, dan berwarna putih pekat pada bagian santannya. Kue yang satu ini biasanya dihidangkan dengan bahan gula merah pada bagian bawahnya, dan bagian santan yang diletakkan pada bagian atasnya. Nama dari kue ini sendiri disebut dengan Kue Talam dikarenakan kue tersebut di masak di dalam talam (loyang besar berbentuk lingkaran) dan bisanya penjual dari kue ini langsung mengambil kue dari talam jika ada yang membeli. Topping  dari kue Talam ini sendiri adalah santan beku. Santan tersebut tetap beku walaupun dalam keadaan panas. Ini menjadi salah satu ciri khas dari kue Talam itu sendiri, dan menjadi salah satu kesulitan dalam membuat kue jenis ini.\r\n\r\nSaat baru matang, kue Talam ini hanya kelihatan seperti lautan putih di dalam talam. Tetapi kalau sudah di sendok untuk dibagi-bagi ke dalam piring-piring kecil, baru kelihatan lapisan coklat muda keemasan dengan topping  santan beku berwarna putih pekat di atasnya yang sangat mengundang selera. Menikmati makanan khas yang satu ini, lebih terasa nikmatnya jika dimakan pada saat keadaan panas. Karena kandungan santan yang banyak digunakan makanan ynag satu ini tidak dapat bertahan lama, hanya memiliki jangka waktu sehari. Kue Talam yang bermalam akan menjadi basi dan tidak layak untuk dikonsumsi lagi.</span>', '7EvV9h1ufx.jpg', 'HEnNurXp2i.jpg', 'T96iwNTjZC.jpg', 6, '2018-03-31 04:01:42', '2018-05-02 02:14:45'),
(9, 'Nasi Bakar Sumsum', 'Nasi Bakar Sumsum, sebuah menu makanan yang terdiri dari sumsum sapi atau kerbau ini merupakan salah satu jenis kuliner makanan khas Tangerang, yang keberadaan sudah ada sejak tahun 1941 silam loh. Biasanya kebanyakan warga dalam menyantap nasi sumsum ini, lebih cocok pada waktu siang hari, karena suasana yang terik di rasa pas untuk melahap makanan ini.\r\n\r\nDalam proses pengolahannya tergolong unik, nasi sumsum dibungkus dengan menggunakan daun pisang yang terlihat seperti lontong atau lemper yang berukuran panjang. Bahkan saat disajikan warna nasinya nampak berbentuk kemerah-kemerahan seperti halnya nasi goreng. Lalu nasi yang telah matang kemudian dicampur dengan berbagai macam rempah dengan cara diaduk, kemudian setelah diaduk barulah sumsum ditambahkan, dan setelah itu dilakukan proses pembakaran sampai matang hingga merata, proses pembakaran nasi sendiri bertujuan untuk mengaslikan aroma serta cita rasa khas yang dipercaya dapat membangkitkan vitalitas.', 'IDRITFkDU7.jpg', '0FmytOijYD.jpg', 'oZ3gILBhJj.jpg', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, 'Tili aya', 'Tili aya adalah sajian yang sangat sederhana sekali, bahkan orang biasa dapat membuatnya dengan mudah. Biasanya makanan ini disajikan sebagai pelengkap nasi dan makanan pokok lainnya di acara adat atau di acara-acara tertentu saja.\r\nAnda dapat memasak ini dengan mudah. Makanan ini terbuat dari gula merah sebagai bahan utamanya. Gula merah dicampur dengan beberapa butir telur dan ditambahkan santan kelapa setelah semuanya tercampur adonan ini dikukus hingga matang.', 'GhYkRXqyTl.jpg', 'XaZ3y9SdUp.jpg', 'uE1QVvVokG.jpg', 10, '2018-04-01 04:31:14', '2018-04-01 04:31:14'),
(11, 'Kue Gandus', 'Makanan ini terbuat dari tepung beras, santan dan sagu. Cara membuat kue ini yakni mencampurkan adonan tepung beras, santan, sagu, bawang putih dan cabai kemudian dicetak bulat. Sebagai pelengkap biasanya kue ini ditaburi ebi, daging ayam, ataupun abon. Kue burgo ini sangat cocok bagi anda yang mencari cemilan pedas di Kota Jambi.', 'WPFobzpIJq.jpg', 'sJ8zs8RxbF.jpg', 'Qz1GfpUsUY.jpg', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, 'Betutu Gilimanuk', '<p><span style=\"font-size: 20px;\">ayam yg sdh dibersihkan digoreng sebentar dg bumbu sampai berubah warna, kemudian direbus  dengan air sedikit beserta bumbunya tadi dengan api kecil sampai matang.Bagi pecinta kuliner pedas, bebek atau ayam betutu adalah makanan khas Bali yang tak boleh Anda lewatkan. Salah satu daerah yang terkenal akan kuliner betutu adalah Gilimanuk. Betutu pada dasarnya adalah hidangan bebek atau ayam yang di-ungkep dengan bumbu dapur seperti jahe, lengkuas, kunyit, kencur, bawang, daun jeruk, dan yang paling utama adalah cabai rawit. Kerap disebut sebagai bumbu genep, bumbu dasar masakan Bali. Cabai rawit memegang peranan penting pada ayam atau bebek betutu. Makanan ini memang harus bercita rasa pedas. Kalau tidak pedas, bukan betutu namanya. Setelah di-ungkep dengan air, minyak kelapa, dan bumbu dapur, ayam atau bebek betutu kemudian dimasak dengan api kecil selama berjam-jam. Ini dilakukan agar semua bumbu menyerap dengan sempurna. Usai proses memasak, ayam atau bebek betutu disajikan dengan sambal matah dan plecing kangkung. Sudah terbayang kelezatannya? Salah satu restoran yang terkenal akan masakan betutu adalah restoran Ayam Betutu Khas Gilimanuk. Restoran ini memiliki enam cabang di Pulau Dewata, yakni di Jalan Raya Tuban, Jalan Raya Kuta, Jalan Merdeka, Jalan Raya Kediri, Jalan Buluh Indah, dan Jalan Raya Denpasar. Selain itu, ada pula tiga cabang lainnya yang tersebar di Jakarta. Di restoran Ayam Betutu Gilimanuk, sajian bebek atau ayam betutu disajikan dengan plecing kangkung, sambal matah dan kacang goreng. Ada dua pilihan betutu yakni kuah dan goreng.</span></p><p><span style=\"font-size: 20px; background-color: rgb(255, 255, 0);\">dwqdq</span><span style=\"font-size: 48px;\">﻿dwqdwqq<u>dwq</u></span><span style=\"font-size: 20px;\">﻿<b>dwq<i>dwq</i></b></span></p>', 'ErBu8BIQw5.jpg', 'N1y1sSdIBy.jpg', 'YAy4KzHor4.jpeg', 12, '2018-04-02 04:07:11', '2018-05-02 03:27:48'),
(13, 'Sego Cawuk', '<p><span style=\"font-size: 20px;\">Sego Cawuk ini cocok untuk sarapan pagi. Tidak susah untuk mencarinya di wilayah kota Banyuwangi. Dalam satu porsi sego cawuk berisi nasi putih dengan berbagai pelengkap seperti gecok, yaitu campuran parutan kelapa dan pipilan jagung bakar yang pedas dan segar. Jika suka bisa ditambahkan kuah pindang yang gurih serta sambal serai dengan daun semanggi yang dikukus. Untuk lauknya tinggal pilih, ada telur pindang atau pepes ikan laut. Sebagian orang juga menyebut menu khas sarapan ini dengan nama Sego Janganan.</span></p><p><br></p><p><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: 20px;\">ewfwef</span><b><span style=\"font-size: 20px;\">gregerg</span><i><span style=\"font-size: 20px;\">retgf dqwffew fewfe ff f f&nbsp;</span></i></b></span></p><p><b style=\"\"><i style=\"\"><span style=\"background-color: rgb(255, 255, 0); font-size: 20px;\">ff</span><span style=\"font-size: 20px;\">&nbsp;fwefwe&nbsp;</span></i></b><span style=\"font-size: 64px;\">﻿dwq</span></p>', 'pxHisB5pqC.jpg', 'Hwda4flA9X.jpg', '1zPpbBDgoU.jpg', 13, '2018-04-02 04:53:03', '2018-05-02 03:09:31'),
(14, 'Ale-Ale', 'Ale-ale adalah sejenis hewan air yang menyerupai kerang. Hewan air ini juga dijadikan simbol atau tagline kota Ketapang. Menurut mitos yang beredar, Ale-Ale adalah sejenis hewan yang berasal dari buah pohon Ketapang yang jatuh ke dalam sungai. Sulit untuk mempercayai-nya memang, maka hal ini lebih sering disebut sebagai mitos. \r\n\r\nAle-ale juga dapat diolah menjadi berbagai macam masakan seperti sambal ale-ale, ale-ale tumis, serundeng ale ale, ale ale kuah kental, ale ale asam garam, sate ale ale dan lain lain. Selain itu cara sederhana untuk menikmati ale ale ini adalah di rebus dengan garam. Selain lezat, ale ale memiliki kadar protein yang tinggi, sehingga baik untuk kesehatan kita.', 'AwmbihogZB.jpg', 'K5yLW3Xruy.jpg', 'hFQY3pXB7K.jpg', 14, '2018-04-02 05:46:17', '2018-04-02 05:46:17'),
(15, 'Pantiaw', 'Pantiaw adalah makanan yang memiliki rasa yang gurih, pedas, manis. Makanan ini adalah makanan berkuah yang terbuat dari suwiran daging ikan dan kuahnya terbuat dari berbagai macam jenis bumbu khusus yang akan terasa sangat familiar jika sudah menyentuh lidah. Bagi anda yang datang ke Bangka Belitung wajib untuk mencoba menu makanan yang satu ini. biasanya agar isian dari makanan ini lebih ramai ditambahkan lagi pelengkap seperti mie ataupun bakso.', '9oM0kOc2kG.jpg', 'ng124zcewV.jpg', '72g4u6oGjN.jpg', 15, '2018-04-09 06:15:35', '2018-04-09 06:15:35'),
(16, 'Papeda', '<span style=\"font-size: 20px;\">Papeda adalah makanan berupa bubur sagu khas Maluku dan Papua yang biasanya disajikan dengan ikan tongkol atau mubara yang dibumbui dengan kunyit. Papeda berwarna putih dan bertekstur lengket menyerupai lem dengan rasa yang tawar. Papeda merupakan makanan yang kaya serat, rendah kolesterol dan cukup bernutrisi.</span>', 'Bj950Acj1U.jpg', 'wYzb6UtSMP.jpg', 'yFVzFgTjYw.jpg', 16, '2018-04-09 06:58:44', '2018-05-02 05:57:11'),
(17, 'Soto Banjar', '<p><span>﻿</span><span style=\"font-size: 20px;\">Mungkin yang terkenal dari kuliner Banjar adalah Soto Banjar. Soto ini sendiri sebetulnya tak berbeda dengan soto dari daerah lain. Perbedaannya hanya mungkin pada kuahnya yang lebih bening jika dibandingkan soto lainnya. Selebihnya sama, ada lontong nasi, ada suiran ayam, irisan telur, korket (gaplak), dan taburan bawang goreng. Tapi, kalau sudah sekali nyoba, dijamin suka deh. Apalagi kalau ditambah dengan limau nipis.</span></p>', '8NHHwE783J.jpg', 'IBXtx4xBDc.jpg', 'lN0o3YxG2l.jpg', 17, '2018-04-09 17:17:59', '2018-05-04 22:02:56'),
(18, 'Lepek Binti', 'Sekilas kue yang dibungkus daun pisang ini mirip nagasari. Namun lepek binti memiliki tekstur dan rasa yang sama sekali berbeda.\r\n\r\nAnda mungkin sudah mengenal nagasari. Kue dari tepung beras dan santan yang diisi potongan pisang raja. Rasanya manis dan lembut, dibungkus daun pisang.\r\n\r\nNah kue basah tradisional khas Provinsi Bengkulu, Sumatera ini mirip dengan nagasari. Namanya lepek binti--atau lapek binti. Bentuknya bujur sangkar, dilipat di dalam daun pisang lalu dikukus. Teksturnya seperti lemper, rasanya gurih berisi daging.\r\n\r\nUntuk membuat kue ini, Anda butuh beberapa bahan, tepung ketan, santan, dan daging sapi giling adalah tiga yang utama. Sediakan pula bawang merah, bawang putih, lengkuas, ketumbar dan daun salam sebagai bumbu. Gula dan garam boleh ditambahkan sesuai selera.', 'HasBqIQjSO.png', 'lejn21raUn.jpg', 'XtTEZZWtYn.jpg', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(63, '2014_10_12_000000_create_users_table', 1),
(64, '2014_10_12_100000_create_password_resets_table', 1),
(65, '2018_03_24_020732_create_provinsis_table', 1),
(66, '2018_03_27_050454_create_kabupatens_table', 1),
(67, '2018_03_27_052523_create_postings_table', 1),
(68, '2018_03_27_114314_create_makanans_table', 1),
(69, '2018_03_28_001945_create_rumahs_table', 1),
(70, '2018_03_28_062025_create_tarians_table', 1),
(71, '2018_03_28_063445_create_senjatas_table', 1),
(72, '2018_03_28_074306_create_lokasis_table', 1),
(73, '2018_03_28_093007_create_musics_table', 1),
(74, '2018_03_28_095335_create_pakaians_table', 1),
(75, '2018_03_28_101805_create_bahasas_table', 1),
(76, '2018_03_28_105812_create_comments_table', 1),
(77, '2018_04_10_143353_create_jobs_table', 1),
(78, '2018_04_11_001959_create_failed_jobs_table', 1),
(80, '2018_04_29_053619_create_likes_table', 2),
(81, '2018_04_30_024056_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `musics`
--

CREATE TABLE `musics` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `musics`
--

INSERT INTO `musics` (`id`, `nama`, `desc`, `foto1`, `foto2`, `foto3`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, 'Bereguh', 'Bereguh nama sejenis alat tiup terbuat dari tanduk kerbau. Bereguh pada masa silam dijumpai didaerah Aceh Besar, Pidie, Aceh Utara dan terdapat juga dibeberapa tempat di Aceh. Bereguh mempunyai nada yang terbatas, banyakanya nada yang yang dapat dihasilkan Bereguh tergantung dari teknik meniupnya.\r\nFungsi dari Bereguh hanya sebagai alat komunikasi terutama apabila berada dihutan/berjauhan tempat antara seorang dengan orang lainnya. Sekarang ini Bereguh telah jarang dipergunakan orang, diperkirakan telah mulai punah penggunaannya.', 'lfvZfdiY5M.jpg', '2zPnzR378k.jpg', 'EFwh5ErPUo.jpg', 1, '2018-03-30 09:40:55', '2018-03-30 09:40:55'),
(2, 'Ceng-ceng', 'Seperti pada namanya, alat musik ceng-ceng apabila dimainkan alan menghasilkan suara “ceng” dengan ritme-ritme tertentu sebagai pelengkap sebuah gamelan ataupun dalam tubuh Rindik. Ceng-ceng sendiri merupakan sebuah lempeng logam yang berbentuk piringan atau simbal yang terbuat dari bahan dasar tembaga yang berkualitas tinggi, sehingga jika dimainkan akan menghasilkan suara yang nyaring. Selain itu alat musik ceng-ceng juga digunakan untuk melengkapi sejumlah permainan kesenian musik tradisional Bali seperti dalam pementasan semar pegulingan, gong kebyar, pelegongan, barongan, gong gede dan baleganjur.\r\n\r\nUntuk memainkan alat musik yang satu ini pun ada dua cara yang berbeda. Pertama, yaitu dimainkan dengan memadukan kedua simbal tersebut. Cara memainkan yang lainnya yaitu seperti dalam ceng-ceng ricik yang ukurannya lebih kecil. Biasanya 6 buah simbal kecil yang dipasang menghadap ke atas diatas balok yang berbentuk kura-kura, kemudian dipadukan (dipukulkan) dengan 2 buah simbal kecil, dan biasanya juga sama-sama dimainkan dengan kedua tangan. Dalam sebuah performa gamelan atau tabuh, peran alat musik ceng-ceng sangat penting dan begitu mencolok pada bunyinya.', 'on5iQzFAp3.jpg', 'wZs9APltVF.jpg', '4Hv1nBb1Nr.jpg', 2, '2018-03-30 21:05:21', '2018-03-30 21:05:21'),
(3, 'Tanjidor', 'Tanjidor adalah musik tradisional khas masyarakat Betawi yang sering di mainkan secara berkelompok. Dengan beberapa instrument musik yang di mainkan secara bersamaan sehingga menghasilkan nada yang padu dan dinamis. Alat musik ini banyak di pengaruhi oleh musik dari Eropa yang di bawa oleh para penjajah pada masa Hindia Belanda.\r\n\r\nMenurut sejarahnya, Tanjidor merupakan alat musik yang sering dimainkan oleh para budak  yang di tugaskan untuk menghibur para majikan pada saat penjajahan dulu. namun saat perbudakan di hapuskan pada tahun 1860an, para budak yang di lepaskan kemudian mulai membentuk perkumpulan pemusik dengan nama Tanjidor. Seiring dengan perkembangan, orkes musik ini mulai di gemari oleh masyarakat dan sering di pertunjukan dalam berbagai acara masyarakat Betawi seperti acara pernikahan, acara sunatan, peringatan hari besar dan lain – lain.\r\n\r\nDalam pertunjukannya, alat musik ini biasanya di mainkan oleh 7-10 orang. Alat musik tersebut diantaranya adalah alat music seperti klarinet, piston, trombon, saksofon tenor, saksofon bass, drum, simbal, dan tambur. \r\n\r\nLagu yang di bawakan awalnya merupakan lagu yang terkenal pada tahun 1920an seperti Batalion, Kramton, Bananas, Delsi, Was Tak-tak, Welmes, Cakranegara. Lagu lagu ini masih kental dengan nuansa Belanda, terutama lagu kramton dan bananas yang merupakan lagu mars Belanda jaman dahulu. Namun karena sering di bawakan oleh masyarakat Betawi maka mulai muncul lagu baru bernuansa Betawi, diantaranya seperti seperti Sirih Kuning, Surilang, Kicir-Kicir, Jali-Jali, Stambul, Cente Manis, Persi, dan juga Keramat Karam.\r\n\r\nDalam perkembangannya, Tanjidor mulai menjadi salah satu musik tradisional yang sering memeriahkan berbagai acara adat Betawi  maupun pesta besar di ibukota Jakarta. Orkes musik ini tidak hanya di tampilkan secara “on stand” (musik panggung), namun juga sering mengiring arakan pengantin, arakan sunatan dan lain lain. selain itu juga sering di gunakan untuk mengiringi kesenian lain seperti ondel – ondel dan berbagai kesenian Betawi lainnya.\r\n\r\nNah cukup sekian pengenalan tentang Tanjidor Kesenian Musik Tradisional Betawi. semoga bermanfaat dan menambah pengetahuan anda tentang kesenian tradisional di Indonesia.', 'vceGCcD3Op.jpg', 'giC1xDhZzO.jpg', 'sReoeHbdxe.jpg', 3, '2018-03-30 21:47:43', '2018-03-30 21:47:43'),
(4, 'Kecapi', 'Alat musik kecapi muncul sejak 4000 tahun yang lalu, bentuknya seperti perahu terbalik, dimana diatasnya terdapat 13 pasang senar.\r\nSetiap senar terbuat dari campuran emas dan tembaga. Untuk menyetem suara kecapi sangat teramat sulit dan memakan waktu lama, harganya pun cukup mahal.\r\nNamun di zaman sekarang bisa disiasati dengan membuat senar kecapi dari bahan kawat baja agar harganya pas.\r\nCara memainkan kecapi harus dipetik. Dan ternyata, negara China juga memiliki alat musik tradisional kecapi lho. Hal ini terbukti dari film-film zaman dulu yang backsoundnya menggunakan instrumen yang dipetik.\r\nJika kamu cermati, suaranya mirip sekali dengan kecapi. Indonesia memiliki banyak alat tradisional namun sayangnya tidak terlalu dilestarikan. Mulai sekarang, ayo bangun jiwa seni kamu dan budayakan alat musik tradisional ini!!!', 'jrxyeOP1Pl.JPG', '7ewXKsmILg.jpeg', 'zcKtwJU9C5.jpg', 4, '2018-03-30 22:39:58', '2018-03-30 22:39:58'),
(5, 'Bonang', 'Bonang adalah alat musik tradisional yang juga dimainkan dengan cara dipukul. Alat musik ini umumnya terbuat dari logam-logam seperti kuningan, perunggu, atau besi. Untuk memainkan alat musik ini, bonang dipukul menggunakan pemukul khusus yang terbuat dari kayu yang dilapisi dengan kain atau karet. Ada 2 jenis bonang, pertama adalah bonang barung yang berukuran lebih besar dan berfungsi sebagai pembuka atau penuntun dari sebuah iringan musik gamelan, dan bonang penerus yang berukuran lebih kecil dan digunakan pada saat-saat tertentu saja.', 'JL1TGRlfDI.jpg', 'IS3AmHModx.jpeg', '1ZZlYRGfRr.jpg', 5, '2018-03-30 23:15:11', '2018-03-30 23:15:11'),
(6, 'Hapetan', 'Hapetan adalah alat musik sejenis kecapi yang berasal dari daerah Tapanuli, berdawai dan dimainkan dengan sebuah bilah petik. Hapetan merupakan alat musik yang di petik sejenis gitar tradisional berdawai dua dari daerah tapanuli. Hapetan juga disebut hasapi atau kucapi, dimainkan dengan alat pemetik, instrumen ini digunakan untuk kesenian daerah setempat. Di Sumbawa disebut jungga, di sulawesi selatan kancilo, kacaping. Jenis serupa ditemukan di Kalimantan Selatan da derah Tanah Karo ( Simelungan ).', 'Vb1SO9jkIf.jpg', '0ke7wXBl1P.jpg', 'rYMunDdP9n.jpg', 6, '2018-03-31 04:01:42', '2018-03-31 04:01:42'),
(9, 'Bedug', 'Sebelum budaya dan agama Islam masuk ke Indonesia, bedug telah lebih dulu dikenal oleh masyarakat Banten sebagai gendang tradisional dan sarana komunikasi. Dahulunya bedug Banten dimainkan dalam seni rampak Bedug atau seni memainkan bedug secara bersama-sama. Bedug Banten tidak berbeda dengan bedug yang selama ini kita kenal. Ia terbuat dari bahan kayu besar yang berongga di bagian tengahnya dan diberi membran berupa kulit sapi atau kerbau di salah satu sisinya. Untuk merenggangkan membran, tali dan pasak dipasang secara kuat sehingga saat dipukul, bedug bisa menghasilkan suara yang lebih keras. Setelah budaya dan agama Islam masuk, alat musik tradisional Banten ini kemudian beralih fungsi menjadi sarana penunjuk masuknya waktu sholat untuk umat muslim. Kebiasaan menggunakan bedug tersebut kemudian menyebar ke seluruh masyarakat Melayu di daerah lainnya yang telah memeluk agama Islam.', 'xP9bnhUG18.jpg', 'TMB37kcx07.jpg', 'nSSKgcg768.jpg', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, 'Polopalo', 'Polopalo terbuat dari sebulah bambu kecil yang dibentuk sedemikian rupa sehingga memiliki kemampuan menghasilkan suara yang lantang saat dimainkan. Polopalo dimainkan dengan cara dipukulkan pada lutut atau bagian tubuh lain para pemainnya. Umumnya, instrumen ini dimainkan bersama-sama dalam pertunjukan tari tradisional khas Gorontalo. Untuk menghasilkan ritme yang unik, pada perkembangannya Polopalo dimodifikasi sehingga terbagi menjadi beberapa jenis berdasarkan ukurannya. Ada 3 jenis Polopalo, yaitu yang berukuran besar, sedang, dan kecil. Semakin kecil ukuran Polopalo, semakin tinggi nada yang dihasilkannya. Secara sekilas, bentuk dari alat musik tradisional Gorontalo ini dapat ditunjukan pada gambar di atas.', 'hlwOjqH5oF.JPG', 'Y5Zo38rhwc.png', 'X4Iu0EhLeh.jpg', 10, '2018-04-01 04:31:14', '2018-04-01 04:31:14'),
(11, 'Gambus', 'Gambus dibuat dari kayu, bentuknya seperti gitar dengan bagian belakang cembung. Pada bagian badan dipasang tali senar sembilan buah yang diikatkan pada penampang bagian ujung gagang, serta lubang suara terdiri dari tiga buah. Gambus dipakai oleh suku melayu untuk mengiring lagu yang bersenandung dengan cara memainkan tali gitar.\r\n\r\nGambus adalah alat musik petik seperti mandolin yang berasal dari Timur Tengah. Paling sedikit gambus dipasangi 3 senar sampai paling banyak 12 senar. Gambus dimainkan dengan cara dipetik sambil diiringi gendang.', '68PIqGzli4.jpg', 'AyspJWYTs3.jpg', 'GXISpAyuV9.jpg', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, 'Gamelan Jegog', '<p><span style=\"font-size: 20px;\">﻿</span><span style=\"font-size: 20px;\">Gamelan Jegog adalah gamelan (alat musik) yang terbuat dari pohon bambu berukuran besar yang dibentuk sedemikian rupa sehingga menjadi seperangkat alat musik bambu yang suaranya sangat merdu dan menawan hati.</span></p>', 'lb4nPDU5x7.jpg', 'y4akreIdbS.jpeg', 'TBX4NszE8T.jpg', 12, '2018-04-02 04:07:12', '2018-05-02 03:30:09'),
(13, 'Gamelan Banyuwangi', '<p><span style=\"font-size: 20px;\">Gamelan Banyuwangi khususnya yang dipakai dalam tari Gandrung memiliki kekhasan dengan adanya kedua biola, yang salah satunya dijadikan sebagai pantus atau pemimpin lagu. Menurut sejarahnya, pada sekitar abad ke-19, seorang Eropa menyaksikan pertunjukan Seblang (atau Gandrung) yang diiringi dengan suling. Kemudian orang tersebut mencoba menyelaraskannya dengan biola yang dia bawa waktu itu, pada saat dia mainkan lagu-lagu Seblang tadi dengan biola, orang-orang sekitar terpesona dengan irama menyayat yang dihasilkan biola tersebut. Sejak itu, biola mulai menggeser suling karena dapat menghasilkan nada-nada tinggi yang tidak mungkin dikeluarkan oleh suling.\r\n\r\nSelain itu, gamelan ini juga menggunakan “kluncing” (triangle), yakni alat musik berbentuk segitiga yang dibuat dari kawat besi tebal, dan dibunyikan dengan alat pemukul dari bahan yang sama.\r\n\r\nKemudian terdapat “kendhang” yang jumlahnya bisa satu atau dua. Kendhang yang dipakai di Banyuwangi hampir serupa dengan kendhang yang dipakai dalam gamelan Sunda maupun Bali. Fungsinya adalah menjadi komando dalam musik, dan sekaligus memberi efek musical di semua sisi.\r\n\r\nAlat berikutnya adalah “kethuk”. Terbuat dari besi, berjumlah dua buah dan dibuat berbeda ukuran sesuai dengan larasannya. “Kethuk estri” (feminine) adalah yang besar, atau dalam gamelan Jawa disebut Slendro. Sedangkan “kethuk jaler” (maskulin) dilaras lebih tinggi satu kempyung (kwint). Fungsi kethuk disini bukan sekedar sebagai instrumen ‘penguat atau penjaga irama’ seperti halnya pada gamelan Jawa, namun tergabung dengan kluncing untuk mengikuti pola tabuhan kendang.\r\n\r\nSedangkan “kempul” atau gong, dalam gamelan Banyuwangi (khususnya Gandrung) hanya terdiri dari satu instrumen gong besi. Kadang juga diselingi dengan “saron bali” dan “angklung”.\r\n\r\nSelain Gamelan untuk Gandrung ini, gamelan yang dipakai untuk pertunjukan Angklung Caruk agar berbeda dengan Gandrung, karena ada tambahan angklung bambu yang dilaras sesuai tinggi nadanya. Untuk patrol, semua alat musiknya terbuat dari bambu. Bahkan untuk pertunjukan Janger, digunakan gamelan Bali, dan Rengganis gamelan Jawa lengkap. Sedang khusus kesenian Hadrah Kunthulan, digunakan rebana, beduk, kendhang, biola dan kadang bonang (atau dalam gamelan Bali disebut Reong).\r\n\r\nModernisasi pun tidak terelakkan dalam seni musik Banyuwangi, muncul berbagai varian musik yang merupakan paduan tradisional dan modern, seperti Kunthulan Kreasi, Gandrung Kreasi, Kendhang Kempul Kreasi dan Janger Campursari yang memasukkan unsure elekton kedalam musiknya, dan menjadi kesenian popular di kalangan masyarakat. Namun demikian, sebagian pakar kebudayaan mengkhawatirkan seni kreasi ini akan menggeser kesenian klasik yang sudah berkembang selama berratus-ratus tahun</span></p><p><span style=\"font-size: 20px;\">dwq</span><b><span style=\"font-size: 20px;\">few</span><i><span style=\"font-size: 20px;\">fewf</span><u><span style=\"font-size: 20px;\">fewfw</span><span style=\"background-color: rgb(255, 255, 0); font-size: 20px;\">fewfw</span></u></i></b></p>', 'AM1mTn8icK.jpg', 'G771Q6TZru.jpg', 'Z62R5xQDXA.jpg', 13, '2018-04-02 04:53:03', '2018-05-02 02:52:35'),
(14, 'Sapek', 'Sapek adalah alat musik dawai dari suku Dayak, sapek memiliki nama lain, yaitu sampek atau sampiq. Suku Dayak di Kalimantan, baik dari negara Indonesia, Malaysia, maupun Brunei sudah mengenal alat musik ini.\r\nDari banyaknya sub suku Dayak, sapek paling banyak ditemui di suku Dayak Kayaan dan Kenyah. Alat musik tradisional Kalimantan Barat ini tampak seperti gitar, dengan tubuh panjang dan bagian leher yang sangat pendek.\r\nNamun alat ini sangat berbeda dengan gitar, fret (batas nada, dalam istilah suku Dayak disebut lasar) yang biasanya memiliki jumlah belasan, disepak hanya memiliki 2-3 fret saja. Bahkan terkadang tidak ada sama sekali yang terletak dibagian leher, hampir seluruh fret terpasang pada bagian tubuh.\r\n\r\nKeunikan lainnya dari alat musik tradisional Kalimantan Barat ini adalah fret-fret tersebut bisa digeser atau dipindah-pindah. Karena memang fret tersebut tidak ditanam secara permanen seperti gitar, melainkan ditempel menggunakan lem yang sangat kental dan tidak pernah mengering. Dengan cara pemindahan fret itulah susunan nada sapek dapat berganti-ganti.\r\n\r\nJika anda cermati struktur alat musik sapek ini, sapek merupakan jenis lut-siter. Yaitu campuran antara lut (berleher, kawat terbentang melebihi ukuran tubuh) dan siter (bentangan kawat di tubuh).\r\nBahkan untuk sapek yang seluruh fretnya berada pada bagian tubuh. Semuanya hanya berupa sambungan antara tubuh dan kepala (tempat di mana pengencang dawai menancap).\r\n\r\nHiasan dibagian kepala dan pangkal sapek biasanya berbentuk hewan mitologis Kalimantan. Biasanya hal ini dianggap mempunyai kekuatan untuk menaklukan unsur sihir yang akan mengganggu. Jenis hewan mitologis yang paling sering diukir adalah burung enggang.\r\nSapek biasa dimainkan sebagai alat musik instrumen atau juga untuk iringan tari-tari tradisional kalimantan. Sapek adalah salah satu alat musik tradisional Kalimantan Barat yang spesial. Walaupun banyak orang yang bisa memainkan alat musik ini. Namun, para pemain yang memiliki teknik khusus hanya sedikit.', 'MfB9dh3RkU.jpg', 'V2kxLhQ674.jpg', 'sd3BzZ78It.jpg', 14, '2018-04-02 05:46:17', '2018-04-02 05:46:17'),
(15, 'Rebana', 'Rebana memang cukup sering kita jumpai, tak hanya di daerah Bangka Belitung. Bengkulu, Jawa, bahkan di Jakarta-pun kita bisa menyaksikan alat musik tradisional ini. Meskipun Rebana adalah alat musik tradisional yang ter-“impor” karena kedatangannya yang bersamaan dengan masuknya Islam serta pedagang ke Indonesia membuat Rebana menjadi alat musik tradisional Bangka Belitung juga.\r\n\r\nRebana berbentuk seperti gendang kecil dengan satu sisi saja yang dilapisi dengan membran. Rebana dimainkan dengan cara dipukul pada membran tersebut, biasanya alat musik ini dimainkan hanya pada saat acara tertentu saja seperti festival kebudayaan, qasidah, pentas seni, penyambutan tamu di daerah, pernikahan, atau pada sebagai kegiatan ekstra di beberapa sekolah (rohis, dll). Bentu Rebana hampir mirip dengan alat musik tradisional Marawis.\r\n\r\nBentuk Rebana yang berbeda akan menghasilkan bunyi yang berbeda-beda pula, teknik memukulnya juga tidak sembarangan tapi tidak memerlukan latihan yang betul-betul intensif karena biasanya sudah ada yang mengajarkan. Permainan Rebana kurang bagus jika dimainkan hanya sendirian karena suara dari Rebana berbeda-beda disitulah letak keunikan benda ini. Selain dari alat musiknya, Rebana juga mampu menyita perhatian para penontonnya dengan pakaian pemain yang biasanya menggunakan pakaian khusus, seperti pakaian adat atau pakaian grup musik mereka.', 'DIw6mtPxiZ.jpg', 'DCXVcu4jeO.jpg', 'ykSb8Rb6iD.jpg', 15, '2018-04-09 06:15:36', '2018-04-09 06:15:36'),
(16, 'Tifa', 'Alat musik tradisional Papua yang paling dikenal di kancah nasional adalah Tifa. Tifa merupakan sebuah alat musik yang dibuat dari kayu bulat, kulit rusa kering, dan rotan. Kayu bulat pada tifa dikikis dan dilubangi di bagian tengahnya sementara kulit rusa diikat pada salah satu ujung lubang.\r\nTifa dimainkan dengan cara ditepuk dan manghasilkan bunyi ritmis. Oleh karenanya, alat musik ini sering didendangkan untuk mengiringi tarian-tarian adat atau pesta-pesta tradisional, seperti Tari Perang, Tari Tradisional Asmat, dan Tarian Gatsi. Kita bisa menemukan tifa dalam 5 bentuk yaitu, Tifa Jekir, Tifa Jekir Potong, Tifa Potong, Tifa Dasar, dan Tifa Bas.', 'V3ZymbnkqV.jpg', 'hOIHgIZp08.jpg', 'lp6NuNY7WL.jpg', 16, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, 'Serunai Banjar', 'Serunai Banjar adalah instrumen musik yang biasa dimainkan dalam acara Bakuntau atau seni bela diri silat asal banjar yang lahir dari daerah hulu sungai, meskipun sekarang alat musik Serunai Banjar sudah jarang digunakan karena jarangnya pementasan silat ini, penggunaan alat musik modern juga mulai menggantikan peranan Serunai Banjar.\r\n\r\nAlat musik Serunai Banjar merupakan alat musik tiup yang berasal dari Kalimantan Selatan tepatnya suku Banjar dan bentuknya menyerupai terompet dengan design ukiran yang unik. Pada bagian mulut terdapat reeds ganda yang fungsingya sebagai bantu tiup dan langsung mengenai bibir pemain.\r\n\r\nReeds itu terbuat dari daun kelapa kering yang dipasangkan kearah tempat meniup Serunai . Serunai Banjar umumnya dimainkan bersamaan dengan alat musik lain yang bisa mengiringi seni Kuntau (sebuah kesenian beladiri) atau tari kuda kepang seperti gong.', 'DnwNtaueB9.jpg', 'V9a9zAV2bI.jpg', '0aZbzMobfo.jpg', 17, '2018-04-09 17:17:59', '2018-04-09 17:17:59'),
(18, 'Doll', 'Doll adalah alat musik tradisional Bengkulu yang berupa sebuah gendang dengan bentuk cembung di bagian sisinya. Sejak dulu, gendang ini dimainkan dalam perayaan Tabot (1 sd 10 Muharram), perayaan untuk mengenang kematian cucu Nabi Muhammad. Instrumen tepuk ini tidak dapat dimainkan oleh sembarang orang. Hanya Sipai atau orang keturunan India saja yang diperkenankan memainkannya. Dalam memainkan Dol, terdapat suatu aturan yang wajib ditaati oleh pada Sipai. Aturan tersebut terkait dengan jenis pukulan dan ritme tepukan yang dimainkan. Terdapat 3 jenis tepukan dalam aturan tersebut yaitu suwena, tamatam, dan suwari. Tepukan suwena adalah pukulan dengan tempo lambat yang digunakan untuk menggambarkan duka cita, tepukan tamatam adalah pukulan dengan ritme cepat yang digunakan untuk suasana riang, sementara tepukan suwari adalah  tepukan satu-satu untuk tempo yang panjang. Dalam pementasan, Dol tidak dimainkan sendiri. Ada instrumen lain seperti tassa, serunai, rebana yang mengiringinya.', 'ULjBLlKtHx.jpg', 'r56Os2g2Ak.jpg', 'bMmrbZh5pY.jpg', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `subject`, `user_id`, `posting_id`, `seen`, `created_at`, `updated_at`) VALUES
(112, '<b>Paulus</b> berkomentar di', 1, 12, 1, '2018-05-05 07:19:45', '2018-05-05 07:56:04'),
(113, '<b>Paulus</b> berkomentar di', 1, 3, 1, '2018-05-05 07:23:34', '2018-05-05 07:56:04'),
(114, '<b>Paulus</b> berkomentar di', 1, 13, 1, '2018-05-05 07:23:57', '2018-05-05 07:56:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaians`
--

CREATE TABLE `pakaians` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pakaians`
--

INSERT INTO `pakaians` (`id`, `nama`, `desc`, `foto1`, `foto2`, `foto3`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, 'Linto Baro -> Pria dan Daro Baro  -> Wanita', 'Indonesia memang mempunyai budaya yang beraneka ragam. Mulai dari tarian, lagu dan kesenian, setiap daerah dan provinsi di Indonesia mempunyai ciri khas masing masing, sebagai orang indonesia sudah sepantasnya kita mengetahui berbagai macam kebudayaan indonesia. Berikut salah satu hasil kebudayaan yaitu pakaian adat asal aceh.\r\n\r\nKebudayaan Provinsi aceh sangat dipengaruhi oleh islam berikut penjelasan tentang Pakaian adat provinsi aceh BAJU ADAT TRADISIONAL PRIA ACEH :\r\n\r\nPria memakai BAJE MEUKASAH atau baju jas leher tertutup. Ada sulaman keemasan menghiasi krah baju. Jas ini dilengkapi celana panjang yang disebut CEKAK MUSANG. Kain sarung (IJA LAMGUGAP) dilipat di pinggang berkesan gagah. Kain sarung ini terbuat dari sutra yang disongket. Sebilah rencong atau SIWAH berkepala emas / perak dan berhiaskan permata diselipkan di ikat pinggang. Bagian kepala ditutupi kopiah yang populer disebut MAKUTUP. Tutup kepala ini dililit oleh TANGKULOK atau TOMPOK dari emas. TANGKULOK ini terbuat dari kain tenunan.\r\n\r\nTOMPOK ialah hiasan bintang persegi 8, bertingkat, dan terbuat dari logam mulia BAJU ADAT WANITA ACEH :\r\n\r\nWanita mengenakan baju kurung berlengan panjang hingga sepinggul. Krah bajunya sangat unik menyerupai krah baju khas china. Celana cekak musang dan sarung (IJA PINGGANG) bercorak yang dilipat sampai lutut. Corak pada sarung ini bersulam emas. Perhiasan yang dipakai : kalung disebut KULA. Ada pula hiasan lain seperti : Gelang tangan, Gelang kaki, Anting, dan ikat pinggang (PENDING) berwarna emas. Bagian rembut ditarik ke atas membentuk sanggul kecil dengan hiasan kecil bercorak bunga. Pada jaman dulu pelapisan terhadap status sosial yang terdapat di masyarakat Aceh, khususnya daerah Aceh Barat telah menyebabkan baju adat Aceh Barat tampil dalam beragam variasi diantaranya adalah pakaian :\r\n\r\n1. Ulee Balang, busana untuk para raja beserta keluarganya\r\n2. Ulee Balang busana untuk Cut dan para Ulama\r\n3. Patut-patut (pejabat negara), pakaian untuk para tokoh masyarakat cerdik pandai\r\n4. Rakyat jelata Busana adat Aceh yang menonjol sekarang ini adalah yang pakaian adat tradisional yang dikenakan pada saat ada upacara adat perkawinan, khususnya karena akibat munculnya kembali apresiasi masyarakat terhadap budaya dan daerah akhir-akhir ini.', 'YISd1DzXXG.jpg', 'mnPO6XkNNn.jpg', 'it753E10Ne.jpg', 1, '2018-03-30 09:40:55', '2018-03-30 09:40:55'),
(2, 'Busana Agung dan Pakaian Sembahyang', 'Pakaian adat tradisional sangat terkait dengan pola ideal spiritual yang didasarkan pada ajaran Hindu. Pakaian adat yang sudah dipakai secara turun temurun merupakan suatu identitas dan dapat dibanggakan oleh sebagian besar pendukung kebudayaan. Pakaian adat Bali memiliki beragam jenis, dari pakaian sehari-hari sampai pakaian upacara.\r\n\r\nJenis pakaian tersebut dapat dikategorikan atau dibedakan menurut jenis kelamin, serta menurut umur dan lapisan sosial yang berdasarkan kasta. Pakaian yang ada tersebut juga masih dapat dibedakan menurut jenisnya, dengan menonjolkan ciri tertentu yang biasa dipakai pada bagian kepala, badan dan kaki.\r\n\r\nDalam pergaulan sehari-hari, baik bermain atau bekerja, anak laki-laki Bali diwajibkan mengenakan tutup kepala yang disebut destar atau udeng, sedangkan anak perempuan mengenakan tengkuluk. Istilah lain dari tengkuluk adalah kancrik. Kancrik adalah sehelai selendang yang berfungsi sebagai penutup tubuh yang terkadang digunakan untuk mengangkat beban sekaligus melindungi wajah dari sinar matahari. Kancrik juga digunakan sebagai tengkuluk, yaitu tutup kepala wanita Bali yang berfungsi sebagai alas untuk menyunggi beban. Selain itu juga berguna sebagai alat untuk menahan rambut agar tetap rapi.\r\n\r\nWanita yang sedang menyusui diwajibkan memakai pakaian khusus, yang biasa disebut Anteng, yang berfungsi sebagai penutup bagian dada dari pencemaran dan juga sebagai penangkal kekuatan magis yang dikenal sebagai Desti. Anteng juga digunakan pada upacara-upacara tertentu dengan melilitkannya pada bagian pinggang untuk kesucian pelayanan peribadatan dan bukan hanya sekedar kesopanan dalam berpakaian.\r\nSeorang pendeta berkewajiban memakai pakaian yang bercorak khusus yang disebut dengan pakaian Wastra yang berwarna putih atau kuning atau disebut juga Kapuh dengan memakai ikat pinggang berwarna putih yang disebut Kawaca. Sementara itu, pakaian pendeta wanita menggunakan kain pelekat dengan warna cokelat dengan berselendang putih atau kuning.\r\n\r\nSebagian besar orang Bali menghias diri dengan bunga yang disebut Sumpang. Jenis bunga yang lazim digunakan adalah bunga yang berbau harum, memiliki bentuk dan warna. Warna dapat diasosiasikan dengan simbol dewa-dewa. Kaum wanita memakai perhiasan bunga dengan cara disisipkan pada rambut yang tersusun rapi. Bagi kaum pria bunga disisipkan pada daun telinga kiri dan kadang-kadang keduanya.\r\n\r\nKain-kain yang dipakai sebagai bagian dari busana Bali terdiri atas berbagai jenis, seperti songket, perada, endek, batik dan sutra. Kaian geringsing merupakan salah satu yang terkenal karena keindahan dan keunikannya. Selain cara menenun dan cara pemintalan benangnya yang cukup memerlukan kesabaran dan ketelitian, proses pewarnaan kain geringsing sangat menentukan kualitas dan keindahannya. Umumnya kain geringsing memiliki tiga warna dasar, yaitu putih susu atau kuning muda, hitam dan merah. Berdasarkan warna, geringsing dapat dibedakan menjadi geringsing selem (geringsing hitam) dan geringsing barak (geringsing merah).\r\n\r\nSaat melakukan suatu upacara adat seperti potong gigi atau pernikahan masyarakat biasanya mengenakan kain tenun Bali tradisional sebagai pakaian lengkap dari bahan songket dan peperadan. Bagi kaum pria, pakaian tersebut terdiri atas udeng atau destar sebagai ikat kepala, saput atau kapuh dan kemben atau wastra. Untuk menahan selendang, yang disebut umpal. Umpal geringsing adalah yang paling dikagumi. Wanitanya memakai kemben songket, sabuk prada yang membelit dari pinggul sampai dada dan selendang songket untuk menutup tubuh, dari bahu ke bawah, dibalik kemben, dikenakan selembar penuh tapih atau sinjang dari sutra berornamen penuh peperadan mengurai keluar melewati kemben.\r\n\r\nDalam upacara perkawinan, masyarakat Bali mengenal adanya tiga jenis pakaian adat dan tata rias pengantin yaitu nista, madya, dan utama atau yang juga dikenal dengan payes agung. Sementara itu, dalam tata busana, perbedaan terletak pada bahan yang digunakan. Untuk tingkat utama, seluruh pakaian dibuat dari bahan perada.\r\n\r\nPerhiasan yang dikenakan oleh sepasang pengantin payes agunglah yang tampak jelas membedakan dengan tata rias dan busana tingkat nista ataupun madya. Perhiasan tingkat utama ini memang memperlihatkan kekhususan. Gelung kucir, yaitu sanggul tambahan berbentuk bulat melingkar dan terbuat dari ijuk menjadi salah satu pembeda. Gelung biasanya dihias dengan bunga-bungaan, seperti kenanga, cempaka putih, cempaka kuning, dan mawar. Sementara itu, untuk hiasan kepala atau petitis, tidak digunakan lagi bunga-bunga hidup, melainkan bunga-bunga yang terbuat dari emas.\r\n\r\nPelengkap petitis yaitu tajug dan perhiasan lain seperti subeng cerorot, gelang kana untuk lengan atas dan badong untuk leher, semuanya terbuat dari emas demikian pula sepasang gelang naga satru, bebekeng atau pending, serta cincin.', 'c2ajCSr8je.jpg', 'sPlynDE68J.jpg', 'NeLphZvObQ.jpg', 2, '2018-03-30 21:05:21', '2018-03-30 21:05:21'),
(3, 'Betawi', 'Meski secara historis suku Betawi bukanlah suku asli DKI Jakarta, kebudayaan dan adat istiadat dari suku ini semenjak dahulu terlanjur telah dikenal luas sebagai simbol atau ikon budaya Jakarta. Ondel-ondel, kerak telor, gambang kromong merupakan beberapa contoh budaya betawi yang tentu tidak akan bisa dilepaskan dari Jakarta sebagai identitasnya di kancah nasional. Nah, khusus pada artikel kali ini, kami akan mengulas salah satu budaya adat Betawi tersebut, yaitu informasi mengenai pakaian adatnya. Seperti apa keunikan pakaian adat Betawi ini?\r\n\r\nPakaian Adat Betawi Merunut pada penggunaannya, pakaian adat Betawi ada 3 macam, yaitu pakaian keseharian, pakaian resmi, dan baju pengantin. Ketiga macam pakaian adat Jakarta ini akan kami jelaskan sebagai mana berikut.\r\n\r\n1. Pakaian Keseharian Pria Betawi Yang dimaksud dengan pakaian keseharian adalah pakaian yang umum digunakan oleh orang betawi dalam kesehariannya. Untuk pria, pakaian adat ini terdiri atas baju koko atau sering juga disebut baju sadariah, celana komprang dengan ukuran ranggung, sarung yang digulung dan diikatkan dipinggang, sabuk hijau, serta peci berwarna merah.\r\n2. Pakaian Keseharian Wanita Betawi Sementara untuk para wanita, pakaian adat betawi keseharian terdiri atas baju kurung berwarna terang (mencolok), kain batik dengan motif geometris sebagai bawahan, selendang berwarna sama dengan baju kurung, serta kerudung sebagai penutup kepala. \r\n3. Pakaian adat Betawi untuk Bangsawan (Baju Resmi) Pakaian bangsawan sebetulnya adalah pakaian resmi yang dulunya hanya dikenakan oleh para demang. Saat ini pakaian yang bernama baju ujung serong telah resmi digunakan sebagai pakaian PNS Pemda DKI Jakarta untuk hari-hari tertentu.\r\nBaju ujung serong terdiri atas dalaman kemeja putih, jas tutup berwarna gelap, batik geometris yang dikenakan dipinggang sebatas lutut, dan celana pantolan yang warnanya sama dengan jas. Aksesoris pelengkapnya yaitu tutup kepala berupa kopiah, kuku macan, pisau raut atau senjata semacam badik yang diselipkan dipinggang, jam rantai untuk hiasan saku, serta alas kaki berupa sepatu pantopel. Baju ujung serong hanya dikenakan oleh para bangsawan pria, sementara untuk wanita digunakan varian baju yang sama dengan baju keseharian yaitu baju kurung, kain batik, selendang, dan kerudung, serta dilengkapi dengan pernik perhiasan emas mulai dari kalung, gelang, giwang, dan cincin. \r\n4. Pakaian Pengantin Pria Betawi Dalam upacara pernikahan, orang Betawi yang masih memegang adat budayanya hingga kini masih menggunakan pakaian khusus pengantin adat Betawi. Pakaian ini disebut merupakan bentuk akulturasi nyata dari beberapa kebudayaan, yaitu budaya Arab, budaya Tionghoa, dan Budaya Melayu\r\nUntuk para pengantin pria, pakaian adat Betawi yang digunakan bernama Dandanan Care Haji. Pakaian ini berupa jubah besar berwarna cerah (biasanya merah) dengan pernik benang keemasan, celana panjang putih, selendang yang dikenakan di dalam jas (bagian dada), serta topi khusus yang terbuat dari sorban sebagai penutup kepala. Dari model pakaian tersebut, dadanan care haji tentu sangat kental akan nilai-nilai budaya Arab. 5. Pakaian Pengantin Wanita Betawi Berbeda dengan dandanan care haji yang kental budaya arab, baju pengantin wanita betawi yang bernama dandanan care none pengantin cine justru sarat dengan nilai-nilai budaya Tionghoa.\r\n\r\nBaju adat Betawi ini terdiri atas blus berwarna cerah dari bahan kain satin, rok gelap atau rok kun, dan hiasan kepala berupa kembang goyang dengan motif burung hong. Selain itu, hiasan rambut berupa sanggul palsu lengkap dengan cadar di bagian wajah, hiasan bunga melati yang diikat pada sisir dan ronje juga dikenakan bersama pernik hiasan lain yang meliputi kalung lebar, manik-manik penghias dada, gelang listring, dan selop model perahu sebagai alas kaki.', 'VfoOvR2DM9.jpg', 'I3v3SC7fvh.JPG', 't9yzAlfQY9.jpg', 3, '2018-03-30 21:47:44', '2018-03-30 21:47:44'),
(4, 'Adat Sunda', 'Suku Sunda adalah salah satu suku adat yang ada di Jawa Barat. Saat ini suku sunda tidak hanya tinggal di Jawa Barat, tapi sudah menyebar ke berbagai pelosok nusantara. Namun dalam berbagai hal, masyarakat Sunda yang ada di daerah lain masih selalu memiliki dan mempertahankan kebudayaan nenek moyang mereka. Misalkan saja pakaian adat / baju adat sunda yang dikenakan pada acara-acara tertentu seperti pada upacara atau resepsi pernikahan, pakaian yang dikenakan pada acara tari-tarian tradisional Jawa Barat, maupun pada pemilihan pasanggiri Mojang dan Jajaka.\r\n\r\nMasyarakat Sunda (Jawa Barat) khususnya dari zaman dahulu mengenal 3 macam  pakaian adat, yaitu pakaian untuk kalangan rakyat jelata, baju yang dikenakan oleh masyarakat kelas menengah dan pakaian untuk kaum Bangsawan. Namun pada saat ini kita mengenal pakaian adat sunda yang digunakan sebagai pakaian resmi Jawa Barat, tidak memandang strata sosialnya di masyarakat. Selain itu ada pula baju adat yang digunakan oleh pengantin sunda. Selain beberapa perbedaan diatas, pengaruh daerah juga menjadikan baju adat sunda menjadi sangat beragam.\r\n\r\n1. Baju Adat Sunda Untuk Rakyat Jelata\r\nBaju adat Sunda untuk jelata bisa dikatakan sangat sederhana. Kaum pria mengenakan celana panjang sebetis atau disebut “calana komprang” atau “calana pangsi” dilengkapi dengan kulit atau kain ikat. Sedangkan atasannya menggunakan baju salontreng yang dilengkapi sarung poleng yang diselempangkan menyilang di bahu tak pernah lepas dalam menjalani keseharian. Pakaian tradisional Sunda juga akan dilengkapi dengan penutup kepala yang disebut ikat logen dengan model Hanjuang nangtung atau barangbang Semplak dan alas kaki seperti sandal tarumpah atau kayu.\r\nSedangkan baju adat Sunda bagi wanita menggunakan Sinjang bundel (kain batik panjang) sebagai bahawan, beubeur (ikat pinggang), kamisol (bra), baju kebaya dan selendang batik. Sebagai pelengkap makeup, gaya pakaian juga akan disertai dengan rambut hiasan dalam jucung bun (bun kecil dan di atas), aksesoris seperti geulang akar bahar (gelang akar bahar), ali meneng (cincin polos), pelenis Suweng (kancing bulat), dan alas kaki berupa sandal keteplek (sandal jepit).\r\n\r\nSebagai gambaran baju adat Sunda yang digunakan oleh rakyat jelata ini diantaranya adalah  baju yang selalu digunakan oleh Kang Kabayan dan Nyi Ietung di film kaca maupun layar lebar. Kaum jelata lebih identik dengan buruh tani atau perkebunan di Jawa Barat. Selain sosok Kabayan dan Nyi Iteung, penggunaan baju adat untuk rakyat Jelata juga sering digambarkan dalam sosok Ki Lengser dalam prosesi Mapag Panganten Sunda.\r\n\r\n2. Baju Adat Sunda Untuk Kaum Menengah\r\nBerbeda dengan kaum jelata diatas, kaum menengah juga memiliki ciri khas yang berkaitan dengan baju adat Jawa Barat. Kaum menengah ini memiliki strata sosial yang lebih tinggi dari rakyat jelata. Biasanya identik dengan kaum pedagang maupun saudagar kaya.\r\n\r\nPakaian adat Jawa Barat yang dikenakan pria selain menggunakan baju bedahan putih, kain kebat batik, alas kaki sandal tarumpah, sabuk (beubeur), dan ikat kepala, mereka juga akan mengenakan arloji rantai emas yang digantungkan di saku baju sebagai kelengkapan berbusana.\r\nSedangkan baju adat Jawa Barat untuk wanita, pakaian adat Jawa Barat yang dikenakan adalah kebaya beraneka warna sebagai atasan, kain kebat batik beraneka corak sebagai bawahan, beubeur (ikat pinggang), selendang berwarna, alas kaki berupa selop atau kelom geulis, dan perhiasan berupa kalung, gelang, giwang, dan cincin yang terbuat dari perak atau emas.\r\n\r\n3. Baju Adat Sunda Untuk Menak / Bangsawan\r\nBagi para pria bangsawan, pakaian adat Sunda yang mereka kenakan terdiri dari jas tutup berbahan beludru hitam yang disulam benang emas menyusuri tepi dan ujung lengan, celana panjang dengan motif sama, kain dodot motif rengreng parang rusak, benten atau sabuk emas, bendo untuk tutup kepala, dan selop hitam sebagai alas kaki.\r\n\r\nSedangkan untuk para wanita, pakaian adat Jawa Barat yang dikenakan antara lain kebaya beludru hitam bersulam benang emas, kain kebat motif rereng, dan alas kaki berupa sepatu atau selop berbahan beludru hitam bersulam manik-manik. Tak lupa beberapa pernik perhiasan juga dikenakan seperti tusuk konde emas untuk rambut yang disanggul, giwang, cincin, bros, kalung, gelang keroncong, peniti rantai, dan beberapa perhiasan lain yang terbuat dari emas bertahta berlian.\r\n\r\n4. Baju Adat Sunda Untuk Pengantin\r\nBaju adat sunda yang digunakan untuk pengantin dapat dibedakan menjadi 3 :\r\n– Tata Busana Pengantin Putri\r\n– Tata Busana Pengantin Siger\r\n– Tata Busana Pengantin Sukapura\r\n\r\nBaju adat Sunda  yang digunakan oleh pengantin saat ini sudah banyak mengalami modifikasi agar terlihat lebih modern. Modifiasi baju pengantin sunda tersebut tidak dilakukan secara menyeluruh, namun pada beberapa bagian saja sehingga tidak meninggalkan ciri khas Baju Adat Jawa Baratnya.\r\n\r\n5. Baju Adat Sunda Resmi\r\nMengingat banyaknya ragam pakaian sunda yang ada di wilayah Jawa Barat, maka dibuatlah model baju adat resmi Jawa Barat yang dapat kita lihat pada acara-acara pemilihan mojang dan jajaka Jawa Barat.\r\n\r\nPara jajaka menggunakan jas takwa atau jas tutup dengan warna bebas (lebih sering hitam), celana panjang dengan warna yang sama, kain samping yang diikatkan di pinggang, penutup kepala berupa bendo, dan alas kaki selop. Hiasan yang dikenakan hanya berupa jam rantai yang biasanya dijepitkan pada saku jas.\r\n\r\nSedangkan untuk para mojang, menggunakan pakaian berupa kebaya polos dengan hiasan sulam, kain kebat, beubeur (ikat pinggang), kutang (kamisol), karembong (selendang) sebagai pemanis, dan alas kaki berupa selop dengan warna sama seperti warna kebaya. Adapun untuk hiasannya yaitu tusuk konde berhias bunga untuk rambut disanggul, giwang, cincin, bros, kalung, gelang keroncong, peniti rantai, dan beberapa perhiasan lain yang terbuat dari emas bertahta berlian.', 'IM9QRsqD65.jpg', 'mHI9cXONvl.JPG', 'bCM6AC4hnK.jpg', 4, '2018-03-30 22:39:58', '2018-03-31 00:58:55'),
(5, 'Adat Jawa', 'Ada banyak ragam jenis busana adat Jawa Tengah. Namun, di artikel kali ini akan kami batasi 2 jenis pakaian saja yang akan dibahas. Kedua pakaian tersebut adalah pakaian resmi dan pakaian pengantin adat Jawa. \r\n1. Pakaian Resmi Adat Jawa Tengah Pakaian resmi adat Jawa Tengah bernama Jawi Jangkep dan Kebaya. Jawi jangkep adalah pakaian pria yang terdiri atas beberapa kelengkapan dan umumnya digunakan untuk keperluan adat. Jawi jangkep terdiri dari atasan berupa baju beskap dengan motif bunga, bawahan berupa kain jarik yang dililitkan di pinggang, destar berupa blangkon, serta aksesoris lainnya berupa keris dan cemila (alas kaki). Berikut ini adalah gambar seorang pria yang mengenakan pakaian Jawi Jangkep tersebut. Sementara kebaya adalah pakaian adat wanita Jawa yang terdiri dari atasan berupa kebaya, kemben, stagen, kain tapih pinjung, konde, serta beragam aksesoris seperti cincin, subang, kalung, gelang, serta kipas. Dalam praktiknya, penggunaan pakaian ini diatur sedemikian rupa sesuai dengan strata sosial si pemakainya.\r\nKebaya Kebaya umumnya dibuat dari bahan kain katun, beludru, sutera brokat,dan nilon yang berwarna cerah seperti putih, merah, kuning, hijau, biru, dan sebagainya. Untuk modelnya sendiri ada kebaya panjang dan kebaya pendek. Kebaya panjang bagian bawahnya mencapai lutut, sementara kebaya pendek bagian bawahnya hanya mencapai pinggang. Di bagian depan sekitar dada, terdapat kain persegi panjang yang berfungsi sebagai penyambung kedua sisinya. \r\n\r\nKain Tapih Pinjung Sebagai bawahan kebaya, kain tapih pinjung atau kain sinjang jarik bermotif batik digunakan dengan cara melilitkannya di pinggang dari kiri ke kanan. Untuk menguatkan lilitan, digunakan stagen yang dililitkan di perut sampai beberapa kali sesuai panjang stagennya. Agar tidak terlihat dari luar, stagen kemudian ditutupi dengan selendang pelangi berwarna cerah.\r\n 2. Pakaian Pengantin Adat Jawa Tengah Selain pakaian resmi, dikenal pula beberapa pakaian pengantin adat dalam budaya Jawa Tengah. Jenis pakaian pengantin sendiri amatlah beragam tergantung dari acara apa yang sedang dihadapi. Untuk diketahui, dalam pernikahan adat Jawa, terdapat beberapa upacara yang harus dijalani oleh sepasang mempelai. Upacara tersebut antara lain upacara midodareni, upacara ijab, upacara panggih, dan upacara setelah panggih. Dalam setiap upacara tersebut, pengantin wajib mengenakan beberapa jenis pakaian yang antara lain sebagai berikut. \r\n\r\nUpacara Midodareni Pada upacara midodareni, pakaian pengantin pria adalah baju Jawi Jangkep yang terdiri atas baju atela, sikepan, udeng,sabuk timang, kain jarik untuk bawahan, keris, dan selop. Sementara wanitanya menggunakan busana sawitan. Busana tersebut terdiri dari kebaya berlengan panjang, stagen, dan kain jarik bercorak batik. Upacara Ijab Saat upacara ijab, busana yang dipakai pengantin wanita adalah baju kebaya dan kain jarik, sedangkan pengantin pria memakai busana basahan. Busana basahan pengantin pria disini terdiri dari dodot bangun tulak, kuluk matak petak, sabuk dengan timang dan cinde, stagen, celana panjang berwarna putih, keris warangka ladrang, dan selop. Upacara Panggih Dalam upacara panggih, kedua mempelai menggunakan pakaian adat Jawa Tengah bernama busana basahan.  Busana ini terdiri dari kemben, dodot bangun tulak (kampuh), selendang sekar cinde abrit (sampur), dan kain jarik bermotif cinde sekar merah. Selain itu, beberapa perhiasan juga dilekatkan pada tubuh pengantin. Untuk pria, perhiasan tersebut adalah kalung ulur, cincin, timang/epek, bros, dan buntal, sementara untuk pengantin wanita yaitu cunduk mentul, centung, jungkat,kalung, cincin, gelang, bros, subang, dan timang. \r\n\r\nUpacara Setelah Panggih Dalam upacara setelah panggih, kedua mempelai menggunakan busana kanigaran (wanita) dan busana kapangeranan (pria). Busana kanigara terdiri dari baju kebaya sebagai atasan, kain jarik, stagen, dan selop. Sedangkan busana kapangeranan terdiri dari stagen, kuluk kanigoro, sabuk timang, kain jarik, baju takwo, keris warangka ladrang, dan selop. Nah, itulah sekilas pemaparan yang dapat kami sampaikan mengenai pakaian adat Jawa Tengah dan penjelasannya. Semoga dapat menambah pemahaman dan wawasan budaya kita terhadap budaya bangsa. Salam.', 'bUMrHu6tpV.JPG', '1IykHDmnaZ.jpg', '56HSY18EGm.jpg', 5, '2018-03-30 23:15:11', '2018-03-30 23:15:11'),
(6, 'Batak Sibolga', 'Suku Batak Sibolga adalah suatu suku yang terdapat di sebagian besar Kabupaten Tapanuli Tengah khususnya wilayah pegunungan dan sebagian kecil Kabupaten Tapanuli Utara tepatnya di Kecamatan Adiankoting. Suku ini sebenarnya berawal dari interaksi antara suku Batak Toba, Silindung dan Humbang dengan wilayah pesisir Tapanuli untuk menukarkan hasil pertanian mereka dengan hasil laut masyarakat Batak Pasisi. Seiring berjalannya waktu, suku ini bermigrasi lebih dekat ke pesisir untuk memudahkan kegiatan pertukaran hasil pertanian mereka dengan hasil laut.', 'QQNIWkcX45.jpg', '7c3ztrF1G3.jpg', 'ZwJzooYlRv.jpg', 6, '2018-03-31 04:01:42', '2018-03-31 04:01:42'),
(9, 'Suku Baduy', 'Baju adat Suku Baduy terbuat dengan bahan yang didapat dari alam sekitar. Hal ini mudah saja karena pegunungan yang kaya hasil alam telah menjadi tempat tinggal Suku Baduy sejak bertahun-tahun lamanya.\r\n\r\nProses dimulai dari menanam biji kapas hingga panen. Selanjutnya, proses memintal kapas hingga menjadi benang. Kapas yang telah menjadi benang selanjutnya ditenun oleh kaum perempuan Suku Baduy hingga menjadi bahan. Bahan inilah yang nantinya akan dibuat menjadi baju adat dan dipakai sehari-hari untuk beraktivitas.\r\n\r\nPakaian untuk laki-laki Suku Baduy disebut dengan jamang sangsang. Baju ini berlengan panjang dengan cara pakai hanya disangsangkan atau hanya dilekatkan pada tubuh. Desain baju sangsang berlubang pada bagian leher sampai dada serta tidak menggunakan kerah, kancing, dan kantong.\r\n\r\nBaju adat ini didominasi dengan warna putih dan tidak boleh dijahit menggunakan mesin jahit. Warna putih pada baju diartikan dengan kehidupan mereka yang suci dan tidak terpengaruh budaya luar. Warna ini hanya dikhususkan bagi Suku Baduy Dalam. Berbeda dengan masyarakat Baduy Luar, Mereka menggunakan baju kampret bewarna hitam atau biru tua. Baju adat masyarakat Baduy Luar juga sudah terpengaruh budaya luar, terlihat dari kantong dan kancing yang digunakan dalam mendesain baju.\r\n\r\nPada bagian bawah atau celana, Suku Baduy hanya menggunakan kain bewarna biru kehitaman yang dililitkan pada bagian pinggang. Celana ini diikat dengan selembar kain yang berfungsi sebagai ikat pinggang. Sedangkan di bagian atas, kain ikat kepala digunakan sebagai penutup. Ikat kepala ini dibedakan dengan warna putih dan biru tua. Untuk putih diperuntukkan bagi Suku Baduy Dalam sedangkan warna biru tua bercorak batik menjadi ikat kepala yang digunakan Suku Baduy Luar.', 'WD53xDrRyE.jpg', 'wBKSEtsSLg.JPG', 'XjBJfR9nxk.jpg', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, 'Mukuta dan Biliu', 'Mukuta dan Biliu merupakan sepasang pakaian adat Provinsi Gorontalo yang umumnya hanya dipakai pada saat upacara perkawinan. Mukuta dipakai oleh mempelai pria, sedangkan biliu dipakai oleh mempelai wanita. \r\n\r\nMukuta dan Biliu sendiri tersusun atas kain berwarna kuning keemasan, selain itu ada juga yang berwarna ungu dan hijau. Dalam pemakaiannya, pakaian adat tersebut akan dilengkapi dengan berbagai macam pernik-pernik dan aksesoris seperti ikat pinggang, terompah, penutup kepala, dan lain sebagainya dengan sebutan khusus. \r\n\r\n1. Pakaian Biliu (Pakaian Adat Mempelai Wanita)\r\n\r\nMempelai wanita, selain memakai baju kurung dan bawahan kuning juga memakai beberapa aksesoris sebagai pelengkap pakaian adat Provinsi Gorontalo yang dikenakan.\r\n\r\n2. Pakaian Mukuta (Pakaian Adat Mempelai Pria)\r\n\r\nDibandingkan dengan mempelai wanita, perlengkapan pakaian adat Provinsi Gorontalo untuk pria cenderung lebih sedikit. Beberapa aksesoris tersebut diantaranya adalah Tudung makuta, yaitu hiasan tutup kepala yang mempunyai bentuk unik dan menyerupai bulu unggas serta menjulang tinggi ke atas kemudian terkulai ke belakang.', 'xDOF4ocEWn.jpg', '4WM0FROsY9.JPG', 'TXZwkJ45J2.JPG', 10, '2018-04-01 04:31:15', '2018-04-01 04:31:15'),
(11, 'Melayu Jambi', 'Suku Melayu Jambi adalah sebutan bagi orang-orang Melayu yang mendiami daerah sepanjang sungai Batang Hari, propinsi Jambi.\r\nDalam berbusana kaum wanita sehari-hari pada awalnya hanya dikenal dengan kain dan baju tanpa lengan.\r\nSedangkan kaum prianya mengenakan celana setengah ruas yang melebar pada bagian betisnya dan umumnya berwarna hitam, sehingga lebih leluasa geraknya dalam melakukan kegiatan seharihari. Pakaian untuk pria ini dilengkapi dengan kopiah sebagai penutup kepala.\r\nPada perkembangan berikutnya dikenal adanya pakaian adat. Pakaian adat ini lebih mewah daripada pakaian sehari-hari yang dihiasi dengan sulaman benang emas dan pemakaian perhiasan sebagai pelengkapnya.\r\n\r\na. Pakaian Adat Pria \r\nLaki-laki suku Melayu Jambi dalam berpakaian adat mengenakan lacak di kepalanya.Lacak ini terbuat dari: kain beludru warna merah yang diberi kertas tebal di dalammnya agar menjadikannya keras. Tutup kepala ini memiliki dua bagian yang menjulang tinggi, dengan julangan yang lebih tinggi pada bagian depannya.\r\nSebagai hiasan terdapat lukisan flora dari daun, tangkai clan bunga yang akan mekar. Bagian pinggir sebelah kanan diberi lukisan tali runci, yang diimbangi oleh penempatan bungo runci di sebelah kiri. Bungo runci ini berwarna putih dirangkai dengan benang, dapat berupa bunga asli atau tiruannya. Bajunya disebut baju kurung tanggung berlengan panjang. Disebut tanggung karena panjangnya hanya sedikit di bawah siku tidak sampai ke pergelangan tangan.\r\nHal ini mengandung makna seseorang harus tangkas clan cekatan dalam mengerjakan sesuatu pekerjaan. Bahannya terbuat dari beludru warna merah diberi sulaman benang emas. Bagian tengahnya terdapat motif kembang bertabur atau kembang tagapo dan kembang melati, sedang bagian pinggirnya bermotifkan kembang berangkai atau pucuk rebung. Penutup bagian bawah disebut cangge (celana).\r\nBahannya masih dari beludru yang dilengkapi dengan tali sebagai ikat pinggang. Sudah menjadi kebiasaan di daerah Jambi mengenakan kain sarung songket yang dililitkan di pinggul. Tutup dadanya disebut teratai dada, karena bentuknya seperti bunga teratai dipasang melingkar leher sehingga menyerupai kerah. Kedua tangan dihiasi gelang kilat bahu terbuat dari logam celupan berlukiskan naga kuning.\r\nLukisan naga ini mengandung makna bila seseorang telah diberi kekuasaan janganlah diganggu. Dikenakan pula selempang yang menyilang badan terbuat dari songket warna merah keungu-unguan sebagai pasangan kain sarung dengan motif bunga berangkai clan beranting. Bagian pinggangnya dihiasi dengan selendang tipis warna merah jambu yang pada ujung ujungnya diberi umbai-umbai warna kuning.\r\nUntuk memperkuat bagian pinggang ini digunakan pending berupa rantai dengan sabuk sebagai kepala terbuat dari logam. Kelengkapan lainnya adalah keris clan selop. Biasanya diselipkan di perut menyerong ke kanan melambangkan kebesaran sekaligus untuk berjaga-jaga. Sedangkan selop atau alas kaki yang berbentuk setengah sepatu berfungsi untuk melindungi kaki saat berjalan.\r\n\r\nb. Pakaian Adat Wanita \r\nBusana untuk perempuan terdiri dari kain sarung songket dan selendang songket warna merah. Bajunya disebut baju kurung tanggung bersulam benang emas dengan motif hiasan bunga melati, kembang tagapo, dan pucuk rebung.\r\nTutup kepalanya disebut pesangkon yang terbuat dari kain beludru merah dengan bagian dalam diberi kertas karton agar keras.\r\nAda juga yang menyebut duri pandan karena pada bagian depan tutup kepala ini diberi hiasan dari logam berwarna kuning berbentuk duri pandan. Untuk lebih memperindah diberi sulaman emas dengan motif bunga melati pecah.\r\nKelengkapan busana perempuan lebih banyak dibandingkan dengan yang dikenakan oleh pria. Pada perempuan dikenakan anting-anting atau antan dengan motif kupu-kupu atau gelang banjar. Kalungnya terdiri dari tiga jenis, yaitu kalung tapak, kalung jayo atau kalung bertingkat dan kalung rantai sembilan. Pada jari-jarinya terpasang cincin pacat kenyang dan cincin kijang atau capung.\r\nJumlah gelang yang dipakai pun lebih banyak meliputi gelang kilat bahu masing-masing lengan dua buah. Masih ditambah dengan gelang kano, gelang ceper dan gelang buku beban. Kesemuanya di pasang di lengan. Khusus untuk gelang buku beban bahannya berasal dari permata putih. Sementara untuk kaki dikenakan gelang nago betapo dan gelang ular melingkar. Disebut demikian karena bentuknya yang menyerupai naga dalam dongeng sedang tidur clan ular yang melingkar membentuk bulatan.\r\nSedangkan unsur-unsur kelengkapan yang lain seperti teratai dada (tutup dada),pending dan sabuk (ikat pinggang), selendang, dan selop hampir sama dengan yang dikenakan pria. Bedanya bentuk motif yang lebih besar pada teratai dada dan pending.', 'z1afA8heny.jpg', '0zCHiiVdbH.jpg', '22YrNSRRhs.jpg', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, 'Payas agung dan Payas madya', '<span style=\"font-size: 20px;\">1. Baju Adat Bali - Payas Agung\r\nBaju adat Bali yang disebut dengan Payas Agung adalah baju adat lengkap dan mewah yang biasanya digunakan oleh Pengantin Bali. Pakaian adat busana Bali memiliki arti keindahan bagi sang pemakainya. Saat melakukan pernikahan digunakan pakaian Payas Agung dengan warna yang cerah dan menawan yang mencirikan kebahagian, kegembiraan bagi kedua calon mempelai.\r\n\r\nBaju adat Bali yang digunakan pada saat pernikahan (Payas Agung) ini pun memiliki perbedaan antar daerah di Provinsi Bali. Dari perbedaan Payas Agung inilah kita akan mengenal asal pakaian adat tersebut. Misalnya saja Kayas Agung adat Medeeng Singaraja (Buleleng) akan berbeda dengan adat Asak Karangasem. Dan dari sekian banyak pakaian pengantin Bali tersebut, ada juga baju adat kayas agung yang telah dimodifikasi dengan tidak meninggalkan unsur-unsur dasar dari pakaian adat Bali\r\n2. Baju Adat Bali - Payas Madya\r\n\r\nBaju Bali Pria Madya (sedang), baju bali pria ini biasanya terdiri dari Baju, Kampuh + umpal, Kain panjang, Sabuk, Alas kaki (optional) atau bisa juga terdiri atas Destar, Selempot, Kain panjang, Sabuk, Alas kaki (optional)\r\n\r\nSedangkan untuk wanita, komposisi payas madya antara lain : 1. Baju / kebaya 2. Kain / wastra 3. Sesenteng 4. Sabuk / stagen 5. Alas kaki (optional)</span>', 'WjWWt0ThK6.jpg', 'WkNiuGcbDF.jpg', 'hqx1XeMBOx.jpg', 12, '2018-04-02 04:07:12', '2018-05-02 03:29:41'),
(13, 'Using banyuwangi', '<p><span style=\"font-size: 20px;\">Budaya dan juga tradisi Indonesia yang sangat kaya memang sangat layak untuk terus dilestarikan. Kalau bukan kita, siapa lagi?. Salah satunya yaitu sebuah busana pernikahan tradisional adat Osing Banyuwangi. Busana pengantin adat Banyuwangi memiliki unsur yang amat sangat kental dengan sejarah suku Osing. Suku Osing sendiri yaitu budaya masyarakat asli daerah Banyuwangi yang pada perkembangan awalya terisolir oleh keberadaan Gunung Gumitir, Raung, Ijen dan Baluran.\r\n\r\nBusana Pengantin Adat Osing Banyuwangi\r\nBusana pengantin adat Banyuwangi memiliki ciri khas sendiri, yaitu terdiri busana jebeng dan thulik. Busana thulik yaitu memiliki ciri khas udheng tongkosan dan seni batik khas Banyuwangi seperti motif gajah uling, paras gempal, moto pitik dan sebagainya. Celana dipadu dengan batik khas untuk busana pengantin pria, dengan aksesoris rantai jam dilengkapi bendel hiasan, dia mengenakan sandal selop. Sedangkan pengantin wanita mengenakan kebaya dan sanggul bentuk gelung ditambah dengan kembang goyang. Kembang goyang adalah perhiasan yang dipasangkan di rambut atau sanggul (konde) dan dapat bergerak-gerak apabila digerakkan karena memiliki pegas yang dipasangkan padanya. Hiasan kembang goyang dibuat dari logam (kuningan, tembaga, perak, atau emas) dan kadang-kadang diberi hiasan batu permata. Untuk menambah kesan mewah dan elegan, hiasan dan riasan pengantin wanita ditambah dengan aksesoris anting-anting greol, gelang motif luar, selendang dengan sandal selop.\r\n\r\nPagelaran Prosesi Pernikahan Adat Banyuwangi\r\nPergelaran ini diawali tari Gandrung kolosal. Kemudian disambung dengan prosesi ritual adat kemanten Using yakni perang bangkat. Sebuah adat yang dilakukan dalam acara pernikahan (mantenan) apabila kedua mempelainya adalah anak terakhir atau anak ‘munjilan’.\r\nPada tradisi ini, keluarga mempelai laki-laki memberikan uba rampe kepada keluarga mempelai perempuan. Ubo rampe juga dilengkapi dengan kembang mayang, bantal yang dibungkus dengan tikar dan seekor ayam betina yang sedang mengerami telurnya.</span></p><p><span style=\"font-size: 20px;\">dqwd</span><b><span style=\"font-size: 20px;\">wqd</span><i><span style=\"font-size: 20px;\">dqwq</span><u><span style=\"font-size: 20px;\">dqwwq</span><span style=\"background-color: rgb(255, 255, 0); font-size: 20px;\">dqwd</span></u></i></b></p>', 'IGSOaxbZZ8.jpg', 'pkBi7dQTmX.jpg', 'jqXLxOdanE.jpg', 13, '2018-04-02 04:53:03', '2018-05-02 02:52:35'),
(14, 'King Baba dan King Bibinge', 'Pakaian Adat Kalimantan Barat  Di masa silam, penduduk Kalimantan Barat mengenakan pakaian adat yang sangat sederhana. Pakaian adat Kalimantan Barat tersebut bernama King Baba dan King Bibinge. \r\n\r\n1. Pakaian Adat untuk Laki-laki Pakaian adat Kalimantan Barat untuk Laki-laki bernama King Baba. Dalam bahasa Dayak, King berarti pakaian dan Baba berarti laki-laki. Pakaian ini terbuat dari bahan kulit kayu tanaman ampuro atau kayu kapuo. Kedua jenis kayu ini adalah tumbuhan endemik Kalimantan yang mempunyai kandungan serat tinggi. \r\nUntuk membuat king baba, kulit kayu tersebut dipukul-pukul menggunakan palu bulat di dalam air, sehingga hanya tertinggal seratnya saja. Setelah lentur, kulit tersebut kemudian dijemur dan dihias dengan lukisan-lukisan etnik khas Dayak menggunakan bahan pewarna alami. Kulit kayu dibentuk sedemikian rupa sehingga menyerupai rompi tanpa lengan dan sebuah celana panjang. Sebagai hiasan, serat kulit kayu tersebut juga dibuat menjadi semacam ikat kepala. Sebagai pelengkap hiasan, biasanya laki-laki adat suku Dayak di Kalimantan Barat juga akan menyelipkan sehelai bulu burung enggang, burung khas Borneo yang kini mulai langka. Tak lupa, senjata tradisional berupa mandau dan perisai juga dikenakan, terlebih ketika mereka hendak berperang. Oleh karena itu, tak jarang pakaian adat Kalimantan Barat ini juga dikenal dengan nama pakaian perang. \r\n\r\n2. Pakaian Adat Perempuan Sama seperti pakaian laki-laki, pakaian adat Kalimantan Barat untuk para perempuan juga dibuat dari bahan dan cara yang sama. Namun, desainnya lebih sopan dengan perlengkapan antara lain penutup dada, stagen, kain bawahan, serta berbagai pernik lain seperti kalung, manik-manik, dan hiasan bulu burung enggang di kepalanya. Beberapa perhiasan lain yang dikenakan di antaranya: Jarat tangan (gelang tangan) adalah gelang yang dibuat dari pintalan akar tanaman tengang untuk dikenakan di tangan sebagai penolak bala. Kalung dari bahan-bahan seperti akar kayu atau kulit (tulang) hewan sebagai penangkal gangguan dari roh-roh halus, terutama sering digunakan pada bayi. Beragam jenis gelang, di antaranya tjuk bulu tantawan, tajuk bulu area, kalung manik lawang, galling gading, galang pasan manik, galang pasan, sa’sawak tali mulung, sa’sawat pirak kurumut, dan posong. Oleh masyarakat suku Dayak di Kalimantan Barat, kedua jenis pakaian ini selalu dikenakan baik saat menjalani aktivitas harian, seperti bertani, berburu, atau saat melakukan upacara adat. Adapun karena bahan-bahannya yang cenderung panas dan kurang nyaman dikenakan, pakaian adat ini seiring berjalannya waktu mulai ditinggalkan. Kemajuan peradaban dan pengaruh dari luar daerah membuat masyarakat Dayak di Kalimantan Barat mulai mencoba beragam jenis pakaian lain yang lebih nyaman. Beberapa di antaranya adalah: Bulang Buri dan King Buri adalah pakaian adat yang dibuat dari buri atau kulit kerang laut. Pakaian King Kabo’ adalah pakaian dari bahan kulit kayu yang hanya berupa cawat dengan hiasan manik-manik atau pita-pita rumbai. Pakaian King Tompang adalah pakaian dari bahan kain berwarna polos yang mulai dikenal sejak ada interaksi dengan orang Melayu. Pakaian Indulu Manik adalah pakaian dari kain dengan tempelan manik-manik sebagai hiasan. Buang Kuureng adalah baju kurung dengan lengan panjang berbahan kain beludru. Dan masih banyak lagi, di antaranya pakaian Bulang Kawat, King Tatak, Bulang Panosokan, Bulang Kontong. Nah, demikianlah beberapa jenis pakaian adat Kalimantan Barat dan keterangannya. Dari beragam jenis pakaian di atas, saat ini yang masih tetap lestari adalah King Baba dan King Bibinge. Kedua pakaian ini hingga sekarang tetap digunakan terutama oleh suku-suku Dayak Kubu yang masih tinggal di pedalaman dan bertahan hidup secara nomaden', 'DP0yYwkjtY.jpg', '9UPDpNIo6k.jpg', 'TdKmBCzdXy.jpg', 14, '2018-04-02 05:46:17', '2018-04-02 05:46:17'),
(15, 'Baju seting dan kain cual.', 'Berdasarkan kepercayaan dan keterangan banyak orang tua asli penduduk Bangka Belitung, pakaian adat tersebut awalnya dibawa oleh saudagar Arab yang menikah dengan gadis Cina di sekitar Kota Mentok. Karena terbilang menarik, masyarakat asli Bangka Belitung kemudian mulai menggunakan jenis pakaian yang sama dan memadukannya dengan budaya setempat.\r\n\r\n1. Baju Seting Pakaian Adat Babel untuk Pengantin Perempuan \r\nBaju seting sendiri berupa baju kurung biasa dengan warna merah yang dibuat dari kain beludru atau kain sutra. Baju ini dipadukan dengan bawahan berupa kain cual –sering juga disebut kain lasem atau kain besusur. Berbeda denan baju seting, kain cual sendiri merupakan kain asli budaya Bangka Belitung yang dibuat dengan metode tenun ikat. Motif yang digunakan untuk kain cual tersebut ada 2 jenis yaitu motif corak penuh (motif Penganten Bekecak), dan motif ruang kosong (motif Jande Bekecak). Penampakan kain cual dapat Anda lihat pada gambar di bawah ini.\r\n\r\nSelain menggunakan baju atasan dan kain bawahan, penganti perempuan akan mengenakan beberapa aksesoris yang melengkapi dan mempercantik penampilannya saat menggunakan pakaian adat Bangka Belitung tersebut. Aksesoris tersebut antara lain mahkota emas dengan ornamen khusus yang disebut paksian; teratai atau penutup dada yang dikenakan pada baju; Kembang cempaka, Kembang goyang, Daun bambu, Kuntum cempaka, Pagar tenggalung, Sari bulan, dan Tutup sanggul atau kembang hong untuk hiasan kepala; Kalung Anting panjang; Sepit udang atau hiasan di samping telinga kiri dan kanan, Gelang Pending untuk ikat pinggang; dan hiasan Ronce Melati pada bajunya.\r\n\r\n2. Pakaian Adat untuk Pengantin Laki-Laki Untuk pengantin laki-laki, masyarakat asli Bangka Belitung menggunakan sebuah jubah panjang khas jubah arab dengan warna merah tua. Jubah tersebut dilengkapi oleh selendang atau selempang yang disampirkan pada bahu kanan. Untuk bawahan, mereka menggunakan celana panjang biasa dengan warna kain yang sama. Baik jubah maupun celana bawahan dilengkapi dengan pernik dan motif yang serupa dengan pakaian adat Bangka Belitung pengantin perempuan. Selain itu, ada pula alas kaki khusus yang digunakan, yaitu yang bernama pending selop atau sandal Arab.', 'jzF4QT3tmE.jpg', 'ULeUCJoZpi.JPG', 'HhhTwCRNBK.jpg', 15, '2018-04-09 06:15:36', '2018-04-09 06:15:36'),
(16, 'Rok Rumbai', 'Rok rumbai adalah pakaian adat berupa rok yang terbuat dari susunan daun sagu kering yang digunakan untuk menutupi tubuh bagian bawah. Dalam beberapa kesempatan, selain dikenakan wanita, rok rumbai juga bisa dikenakan para pria. Rok rumbai umumnya akan dilengkapi dengan hiasan kepala dari bahan ijuk, bulu burung kasuari, atau anyaman daun sagu. Baik saat menggunakan koteka maupun rok rumbai, orang Papua pada umumnya tidak akan menggunakan baju atasan seperti orang-orang suku lain yang menggunakan pakaian adatnya. Orang papua hanya akan menyamarkan tubuh bagian atasnya menggunakan lukisan-lukisan atau tatto yang dibuat dari tinta alami. Motif tatonya sendiri sangat beragam.', 'IivSerGWBL.jpeg', 'cMin4b6XLr.JPG', 'M5we7AYGFH.JPG', 16, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, 'Busana Baamar Galung Pancaran Matahari', 'Busana adat pengantin baamar galung pancaranan matahari berkembang sejak munculnya pengaruh agama Islam dan kerajaan Islam di Kalimantan Selatan. Kelengkapan busana pengantin pria terdiri atas laung atau destar, kemeja putih lengan panjang berenda, jas buka tanpa kancing, celana panjang, sarung sabuk serta tapih pendek bermotif khas halilipan, tali wenang atau kain ikat pinggang berwarna kuning yang ditempatkan diatas sabuk, keris pusaka banjar berbentuk sempana, gelang kaki berbentuk akar tatau, dan selop berhias sulaman benang emas dan manik-manik sebagai alas kaki.\r\nSedangkan kelengkapan busana pengantin wanita terdiri atas baju poko lengan pendek tanpa kerah, penutup dada, kayu apu sebagai penutup poko dan sarung, tapih atau sarung panjang bermotif khas halilipan, sanggul berbentuk bulan sabit yang dihiasi mahkota amar galung pancaran matahari, kembang goyang berumpun, serta sisir emas. Perhiasan tambahan yang dikenakan diantaranya anting panjang, kalung cikak, kalung bentuk biji kurma, kalung kebun raja, ikat pinggang emas, kilat bahu, gelang tangan, cincin berbentuk pagar mayang, gelang kaki, serta selop bersulam benang emas sebagai penutup kaki.', 'DvGGD5OV9D.jpg', 'zYBayPWub6.jpg', 'QQqIGQTlDk.jpg', 17, '2018-04-09 17:17:59', '2018-04-09 17:17:59'),
(18, 'Bengkulu', '1. Pakaian Adat Pria Bengkulu\r\n\r\nPakaian adat Bengkulu yang dikenakan oleh kaum pria atau baju adat pria Bengkulu terdiri atas jas, sarung, celana panjang, alas kaki yang dilengkapi dengan tutup kepala dan sebuah keris. Jas yang digunakan dalam adat Bengkulu biasanya berwarna gelap seperti hitam atau biru tua dan berasal dari kain bermutu tinggi seperti wol atau sejenisnya. Demikian pula untuk celananya terbuat dari bahan dan warna yang sama.\r\n\r\n2. Pakaian Adat Wanita Bengkulu\r\n\r\nPakaian adat Bengkulu yang dikenakan oleh kaum wanita berupa baju kurung berlengan panjang yang terbuat dari bahan beludru. Baju ini memiliki hiasan bertabur corak-corak serta sulaman emas berbentuk lempengan-lempengan bulat seperti uang logam. Bahan beludru yang digunakan untuk pembuatan baju kurung umumnya berwarna merah tua, biru tua, lembayung atau hitam. Pemakaian baju kurung dipadukan dengan sarung songket berhias benang emas atau perak yang terbuat dari bahan sutra.', 'jIrESdkYOh.JPG', 'Lt7N3RGTls.jpg', 'RPg7dqSwW9.jpg', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('paulusbsimanjuntak@gmail.com', '$2y$10$A6zXyV/u0jd.bbI9BIqHROvjOa4N6uE9ZsltFLoruKyMkEdHWV6Uy', '2018-04-03 23:57:07'),
('nosadarsara@gmail.com', '$2y$10$nGGoqpCPG.hUcYgvqsJ6teFz0tozfTnTs2IlA06DWHOEGDw.SXXCm', '2018-04-10 05:49:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `postings`
--

CREATE TABLE `postings` (
  `id` int(10) UNSIGNED NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `kabupaten_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `postings`
--

INSERT INTO `postings` (`id`, `deskripsi`, `foto`, `slug`, `status`, `user_id`, `kabupaten_id`, `created_at`, `updated_at`) VALUES
(1, 'Aceh Barat Daya sebagai hasil pemekaran dari Kabupaten Aceh Selatan bukanlah merupakan ekses dari reformasi pada tahun 1998 semata.', 'k9QswdJaiA.jpg', 'aceh-barat-daya-seba', 1, 1, 1, '2018-03-30 09:40:55', '2018-04-10 20:57:53'),
(2, 'Kabupaten buleleng adalah sebuah kabupaten di provinsi bali dengan ibukota singaraja , buleleng berbatasan dengan laut jawa di sebelah utara', 'wQySxolyRl.jpg', 'kabupaten-buleleng-a', 1, 1, 39, '2018-03-30 21:05:20', '2018-04-05 06:42:52'),
(3, 'Jakarta adalah ibu kota dan kota terbesar di Indonesia, terletak di barat laut pulau Jawa. Jakarta adalah pusat ekonomi, budaya dan politik', 'PmfVaWPNwF.jpg', 'jakarta-adalah-ibu-k', 1, 1, 63, '2018-03-30 21:47:43', '2018-04-10 20:56:17'),
(4, 'Bandung merupakan kota metropolitan terbesar di Provinsi Jawa Barat, sekaligus menjadi ibu kota provinsi tersebut.', 'WfhgQ7xgM2.jpg', 'bandung-merupakan-ko', 1, 1, 74, '2018-03-30 22:39:58', '2018-04-28 01:59:14'),
(5, 'Pekalongan, juga dikenal sebagai \"Kota Batik\" adalah rumah bagi 300.000 orang. Ini adalah kota multibudaya', 'dv2j5UYEza.jpg', 'pekalongan-juga-dik', 1, 1, 107, '2018-03-30 23:15:11', '2018-04-03 23:39:18'),
(6, 'Kabupaten Tapanuli Utara adalah sebuah kabupaten di provinsi Sumatera Utara, Indonesia. Ibu kotanya berada di Tarutung.', 'IvX39i4cDE.jpg', 'kabupaten-tapanuli-u', 1, 2, 411, '2018-03-31 04:01:42', '2018-04-09 19:57:40'),
(9, 'Kabupaten Tangerang adalah kabupaten yang berada di wilayah Tatar Pasundan, Provinsi Banten, Indonesia. Ibukotanya adalah Tigaraksa.', 'ijkba4rI1I.jpeg', 'kabupaten-tangerang', 1, 2, 48, '2018-04-01 03:43:44', '2018-05-02 02:40:08'),
(10, 'Kabupaten Gorontalo adalah sebuah kabupaten di Provinsi Gorontalo. Ibu kota kabupaten ini terletak di Limboto.', 'utaVrRlUGC.jpg', 'kabupaten-gorontalo', 1, 2, 61, '2018-04-01 04:31:14', '2018-04-11 00:49:00'),
(11, 'Kabupaten Batanghari adalah salah satu kabupaten di bagian timur Provinsi Jambi, Indonesia. Ibu kotanya ialah Muara Bulian.', 'mCyiLbTGRS.jpg', 'kabupaten-batanghari', 1, 2, 64, '2018-04-01 05:26:27', '2018-04-02 04:08:20'),
(12, 'Kabupaten Jembrana adalah sebuah kabupaten yang terletak di ujung barat pulau Bali, Indonesia. Ibukotanya berada di Negara.', 'Q87udQRDGR.jpeg', 'kabupaten-jembrana-a', 1, 1, 41, '2018-04-02 04:07:11', '2018-05-04 23:51:10'),
(13, 'Kabupaten Banyuwangi terletak di ujung paling timur pulau Jawa, di kawasan Tapal Kuda, dan berbatasan dengan Kabupaten Situbondo', 'E71Hq0Z48G.jpg', 'kabupaten-banyuwangi', 1, 1, 120, '2018-04-02 04:53:03', '2018-04-02 04:53:03'),
(14, 'Kabupaten Ketapang adalah Ibu kota kabupaten ini terletak di Kota Ketapang, sebuah kota yang terletak di tepi Sungai Pawan', 'wbsRsauYdY.JPG', 'kabupaten-ketapang-a', 1, 1, 150, '2018-04-02 05:46:17', '2018-04-02 05:46:17'),
(15, 'Bangka Belitung terletak di bagian timur Pulau Sumatera, dekat dengan Provinsi Sumatera Selatan.', 'D9a9tzWx69.jpg', 'bangka-belitung-terl', 1, 2, 197, '2018-04-09 06:15:35', '2018-04-09 06:15:35'),
(16, 'Kabupaten Jayapura adalah salah satu kabupaten di provinsi Papua, Indonesia. Ibukota kabupaten ini terletak di Sentani, 33 km dari Kota Jaya', 'z4J3DPzUus.jpg', 'kabupaten-jayapura-a', 1, 2, 266, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, 'Kabupaten Banjar adalah kabupaten di Kalimantan Selatan, Indonesia. Ibu kota kabupaten ini terletak di Martapura.', 'hAUACaWh44.jpg', 'kabupaten-banjar-ada', 1, 1, 160, '2018-04-09 17:17:59', '2018-04-09 17:17:59'),
(18, 'Bengkulu Utara adalah sebuah kabupaten yang terletak di kawasan pesisir Pantai Barat Sumatera dengan ibukotanya Arga Makmur', 'Q84COyIR2m.jpg', 'bengkulu-utara-adala', 1, 11, 51, '2018-04-11 05:24:09', '2018-04-11 05:41:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsis`
--

CREATE TABLE `provinsis` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinsis`
--

INSERT INTO `provinsis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', NULL, NULL),
(2, 'Bali', NULL, NULL),
(3, 'Banten', NULL, NULL),
(4, 'Bengkulu', NULL, NULL),
(5, 'Gorontalo', NULL, NULL),
(6, 'Jakarta', NULL, NULL),
(7, 'Jambi', NULL, NULL),
(8, 'Jawa Barat', NULL, NULL),
(9, 'Jawa Tengah', NULL, NULL),
(10, 'Jawa Timur', NULL, NULL),
(11, 'Kalimantan Barat', NULL, NULL),
(12, 'Kalimantan Selatan', NULL, NULL),
(13, 'Kalimantan Tengah', NULL, NULL),
(14, 'Kalimantan Timur', NULL, NULL),
(15, 'Kalimantan Utara', NULL, NULL),
(16, 'Kepulauan Bangka Belitung', NULL, NULL),
(17, 'Kepulauan Riau', NULL, NULL),
(18, 'Lampung', NULL, NULL),
(19, 'Maluku', NULL, NULL),
(20, 'Maluku Utara', NULL, NULL),
(21, 'Nusa Tenggara Barat', NULL, NULL),
(22, 'Nusa Tenggara Timur', NULL, NULL),
(23, 'Papua', NULL, NULL),
(24, 'Papua Barat', NULL, NULL),
(25, 'Riau', NULL, NULL),
(26, 'Sulawesi Barat', NULL, NULL),
(27, 'Sulawesi Selatan', NULL, NULL),
(28, 'Sulawesi Tengah', NULL, NULL),
(29, 'Sulawesi Tenggara', NULL, NULL),
(30, 'Sulawesi Utara', NULL, NULL),
(31, 'Sumatera Barat', NULL, NULL),
(32, 'Sumatera Selatan', NULL, NULL),
(33, 'Sumatera Utara', NULL, NULL),
(34, 'Yogyakarta', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rumahs`
--

CREATE TABLE `rumahs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rumahs`
--

INSERT INTO `rumahs` (`id`, `nama`, `desc`, `foto1`, `foto2`, `foto3`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, 'Krong Bade', 'Di kesempatan kali ini, kami akan mengulas informasi seputar rumah adat Aceh tersebut mulai dari sejarah, gaya arsitektur, gambar, struktur, dan nilai-nilai filosofis yang terdapat di dalamnya. Bagi Anda yang ingin tahu bagaimana uniknya rumah adat bernama Krong Bade ini, silakan simak pembahasan berikut! \r\n\r\n1. Struktur Bangunan Rumah Rumah adat Krong Bade –atau juga biasa disebut Rumoh Aceh, adalah sebuah rumah dengan struktur panggung dengan tinggi tiang 2,5 sd 3 meter dari permukaan tanah. Keseluruhan rumah ini dibuat dari bahan kayu, kecuali atapnya yang terbuat dari bahan daun rumbia atau daun enau yang dianyam, serta lantainya yang dibuat dari bambu. Karena memiliki struktur panggung, pada rumah adat Aceh ini kita dapat menemukan ruang bawah. Ruang ini biasanya digunakan sebagai gudang tempat penyimpanan bahan pangan, serta sebagai tempat para wanita untuk melakukan aktivitas, misalnya aktivitas menenun kain khas Aceh. Untuk memasuki rumah, kita perlu meniti tangga di bagian depan rumah. Tangga tersebut biasanya memiliki jumlah anak tangga yang ganjil. Adapun setelah naik ke bagian atas, kita akan menemukan banyak sekali lukisan yang menempel di dinding-dinding rumah sebagai hiasan. Jumlah lukisan pada dinding luar rumah dapat menjadi simbol tingkat ekonomi pemiliknya.\r\n\r\n2. Fungsi Rumah Adat Selain memiliki fungsi sebagai identitas budaya, rumah Krong Bade juga memiliki fungsi praktis yaitu sebagai rumah tinggal masyarakat Aceh. Untuk menunjang fungsi praktisnya tersebut, rumah adat Aceh ini dibagi menjadi beberapa ruangan dengan kegunaannya masing-masing, yaitu: Ruang Depan atau biasa disebut seuramoë keuë. Ruangan ini berfungsi sebagai ruang santai dan tempat berisirahat bagi seluruh anggota keluarga. Ruangan ini juga digunakan sebagai tempat menerima tamu. Ruang Tengah atau biasa disebut seuramoë teungoh. Ruangan ini adalah ruang inti dari sebuah rumah adat Aceh (ruang inong) dan di tandai dengan lantai yang lebih tinggi dari ruang depan. Karena termasuk ruang inti, maka ruangan ini termasuk sangat privat. Para tamu yang datang tidak akan pernah diijinkan untuk memasukinya. Fungsi dari kamar-kamar yang terdapat di ruang tengah ini antara lain sebagai tempat tidur kepala keluarga, kamar anak, ruangan kamar pengantin, serta sebagai ruang pemandian mayat ketika ada anggota keluarga yang meninggal dunia. Ruang Belakang atau biasa disebut sebagai seurameo likot. Ruangan ini adalah ruangan yang berfungsi sebagai tempat makan, dapur, dan tempat bercengkrama bagi sesama anggota keluarga. Lantai ruangan ini biasanya lebih rendah dibanding lantai rangan tengah. Sama seperti ruang depan, ruang belakang juga tidak memiliki kamar-kamar.\r\n\r\n3. Ciri Khas dan Nilai Filosofis Ada beberapa ciri khas yang membedakan rumah Krong Bade dengan rumah adat Indonesia lainnya. Ciri khas rumah adat Aceh tersebut antara lain: Memiliki gentong air di bagian depan untuk tempat membersihkan kaki mereka yang akan masuk rumah. Ciri ini memiliki filosofi bahwa setiap tamu yang datang harus memiliki niat baik. Strukturnya rumah panggung memiliki fungsi sebagai perlindungan anggota keluarga dari serangan binatang buas. Memiliki tangga yang anak tangganya berjumlah ganjil, merupakan simbol tentang sifat religius dari masyarakat suku Aceh. Terbuat dari bahan-bahan alam; merupakan simbol bahwa masyarakat suku Aceh memiliki kedekatan dengan alam. Memiliki banyak ukiran dan lukisan di dinding rumah; menandakan masyarakat Aceh adalah masyarakat yang sangat mencintai keindahan. Berbentuk persegi panjang dan membujur dari arah barat ke timur; menandakan masyarakat Aceh adalah masyarakat yang religius.\r\n\r\nRumah adat Aceh atau Rumoh Aceh tidak bisa dibangun secara sembarangan. Mengingat fungsinya yang begitu penting bagi kehidupan pemiliknya, beberapa aturan wajib ditaati oleh seseorang yang hendak membangun rumah adat Krong Bade ini. Aturan tersebut di antaranya upacara penentuan hari baik, mengadakan kenduri sebelum membangun, pemilihan bahan bangunan yang berkualitas, pengolahan bahan bangunan dengan presisi, finishing dengan pewarnaan, penambahan lukisan, dan pemberian ukiran, serta diakhiri dengan kenduri syukuran saat rumah akan ditempati pemiliknya.', 'dcRrk6Rh6c.JPG', 'ecReV7O0gn.jpg', 'aHLScM5VF3.jpg', 1, '2018-03-30 09:40:55', '2018-03-30 09:40:55'),
(2, 'Gapura Candi Bentar', 'Salah satu dari contoh rumah adat bali disebut dengan Gapura Candi Bentar. Gapura Candi Bentar ini adalah puntu masuk menuju istana raja yang merupakan rumah adat bali juga, Gapura Candi Bentar dibuat dari batu yang berwarna merah dan diukir oleh batu cadas.\r\nBalai Benggong posisinya terletak di sisi kanan dan Balai Wantikan ini posisinya terletak pada sisi sebelah kiri. Apa sih Balai Benggo itu? Balai Benggo ialah tempat peristirahatan raja dan keluarganya, lalu dengan Balai Wantikan? Balai Wantikan ini ialah tempat pagelaran kesenian.\r\nSecara umumnya, rumah adat bali ini dipenuhi dengan hiasan pernak-pernik, ukiran-ukiran dengan warna yang alami kemudian patung-patung simbol ritual. Bangunan rumah adat bali ini terpisah-pisah sehingga bangunan rumah adat bali ini menjadi banyak bangunan-bangunan kecil dalam satu wilayah.\r\n\r\nSemakin sini semakin sini seiring dengan perkembangan zaman mulailah ada perubahan-perubahan pada bangunan rumah adat bali tersebut, yang dulunya bangunan tersebut terpisah-pisah, dan bangunan yang saat ini tidak terdapat bangunan yang terpisah-pisah.', '2ds0cTsPnn.jpg', 'a6imbpWNmG.jpeg', 'PBDHWiKEcu.jpg', 2, '2018-03-30 21:05:21', '2018-03-30 21:05:21'),
(3, 'Adat Betawi', 'Salah satu keunikan tersebut terletak pada desain terasnya yang luas. Teras luas ini memiliki filosofi bahwa masyarakat Betawi secara umum akan mudah menerima tamu atau pendatang. Selain itu, ada beberapa keunikan lain yang jarang diperhatikan dari rumah adat ini, di antaranya sumur keluarga biasanya terdapat di bagian depan, pemakaman keluarga terdapat di bagian samping, sementara sekat rumahnya tidak permanen, melainkan dapat dilipat atau digeser. Nah, selengkapnya tentang penjelasan desain rumah adat ini, silakan simak pembahasan mengenai informasi seputar struktur dan arsitektur bangunannya, pembagian ruang, serta ciri khas dan nilai filosofis bagiannya, berikut ini! \r\n\r\n1. Struktur Bangunan Rumah Kebaya dibangun menggunakan beragam material yang berasal dari alam. Material utamanya sendiri adalah kayu-kayu dengan struktur kuat seperti kayu kecapi, kayu jati, kayu gowok, dan kayu nangka. Kayu-kayu tersebut digunakan untuk beragam keperluan, seperti tiang rumah, dinding, pagar, pindu, dan rangka atap. Selain kayu, rumah adat Betawi ini juga menggunakan material batu. Batu kali digunakan untuk pondasi rumah dengan sistem umpak (semakin ke atas semakin besar). Batu tersebut diletakan untuk landasan tegaknya tiang rumah. Penggunaan batu ini dimaksudkan agar tiang tidak mudah lapuk karena langsung bersentuhan dengan tanah. Untuk atap, rumah ini disusun menggunakan beberapa material. Kerangkanya disusun dari kayu kecapi untuk kuda-kuda, kayu nangka untuk balok tepi, kayu gowok untuk kaso, bambu untuk reng-nya, sementara atapnya dibuat dari genteng tanah atau atep (alang-alang yang disusun).\r\n\r\n2. Fungsi dan Pembagian Ruangan Sebagai tempat tinggal, rumah kebaya dibagi menjadi beberapa ruangan dengan fungsi-fungsi khusus. Ada 2 bagian utama dari rumah adat Betawi ini berdasarkan sifatnya, yaitu bagian depan yang menjadi bagian semi publik di mana setiap orang diperbolehkan untuk berada di situ, dan bagian belakang yang menjadi bagian yang bersifat pribadi sehingga hanya orang tertentu yang boleh memasukinya. Adapun secara umum, bagian rumah kebaya sendiri terdiri dari : Teras. Bagian ini terletak di depan rumah. Umumnya digunakan untuk menerima tamu sekaligus tempat bersantai bagi anggota keluarga saat pagi atau sore hari. Di dalamnya terdapat kursi kayu jati dan amben atau dipan. Teras juga biasa disebut jejogan. Setiap hari lantai teras wajib dibersihkan sebagai bentuk penghormatan bagi tamu yang datang. Paseban. Ruangan ini terletak di samping pintu masuk rumah. Selain digunakan sebagai tempat ibadah sholat, paseban juga digunakan sebagai kamar tamu bila ada seseorang yang menginap. Paseban memiliki keunikan pada pintu masuknya, yaitu terdapat ukiran dan tepi atapnya diberi renda. Pangkeng. Merupakan ruang keluarga yang dibatasi oleh dinding-dinding kamar. Pada ruangan ini terdapat meja makan dan almari yang biasa digunakan untuk menyimpan perabotan rumah tangga. Kamar tidur. Jumlah kamar tidur tergantung berapa banyak jumlah anggota kelurga. Akan tetapi biasanya kamar tidur berjumlah lebih dari 3. Srondoyan. Dalam bahasa Indonesia berarti dapur. Pada ruangan ini terdapat perabotan alat masak, amben yang berisi persediaan bahan pangan, dan alat-alat pertanian.\r\n\r\n3. Ciri Khas dan Nilai Filosofi Rumah Kebaya Dari pemaparan tentang desain arsitektur, fungsi, dan pembagian ruangaan di atas, terdapat beberapa ciri khas sekaligus nilai filosofis yang terkandung dalam desain rumah adat Betawi ini. Ciri khas dan nilai filosofis tersebut di antaranya: Desain pintu dan jendela memiliki jalusi (lubang angin yang disusun horizontal). Penggunaan jalusi dimaksudkan selain sebagai hiasan juga bermanfaat untuk mengatur sirkulasi udara dari dalam dan keluar rumah. Pintu dan jendela rumah adat DKI Jakarta ini umumnya juga dicat dengan warna hijau dan kuning. Pintu dan jendela umumnya juga memiliki 2 daun yang bisa dibuka kanan dan kiri. Setiap pintu dan jendela dilengkapi dengan kain gorden. Memiliki ragam hias pada tepi atapnya. Tepi atap rumah berupa ukiran yang tampak seperti bentuk kebaya. Bagian teras rumah dipagar kayu keliling untuk mencegah hewan peliharaan masuk rumah dan mengotori jejogan. Adanya pagar pada teras juga memiliki nilai filosofis yang melambangkan bahwa masyarakat Betawi terbuka pada setiap pendatang, tapi tetap membatasi diri terhadap segala pengaruh dan budaya buruk yang berasal dari budaya luar, terutama yang tidak sesuai dengan ajaran Islam. Nah, demikian penjelasan sekilas yang bisa kami sampaikan tentang rumah adat Betawi dari DKI Jakarta yang bernama rumah Kebaya. Sebetulnya budaya Betawi mengenal jenis rumah adat lainnya seperti rumah Joglo, rumah Bapang, dan rumah Gudang. Hanya saja yang lazim digunakan sebagai desain rumah tinggal adalah desain rumah kebaya ini', 'EkHVRdEglK.jpg', 'qcPpijgC5W.jpg', 'KWwuFmeTSL.JPG', 3, '2018-03-30 21:47:43', '2018-03-30 21:47:43'),
(4, 'Kasepuhan Cirebon', 'Rumah adat yang disebut juga rumah Keraton Kasepuhan Cirebon ini merupakan tapak sejarah penting karena merupakan pusat pemerintahan sekaligus pusat penyebaran Islam di Jawa Barat. Mula didirikan oleh Pangeran Cakrabuwana dengan nama Keraton Pakungwati pada tahun 1452, kemudian diperluas dan diperbaharui oleh Sunan Gunung Jati pada tahun 1483. Kini, keraton masih lestari dengan segenap peninggalannya dan arsitektur yang bernilai tinggi.\r\n\r\nSeperti daerah pesisir umumnya, Pelabuhan Cirebon pada masa lalu dikenal sebagai pusat perdagangan internasional. Kota Cirebon pun banyak disinggahi para pedagang dan saudagar. Menurut catatan, sebutan Cirebon berasal dari kata \"caruban\" yang artinya campuran. Sebab kala itu, banyak pedagang dan saudagar dari berbagai bangsa yang berbaur dan menetap di kota itu. Kemudian terciptalah akulturasi budaya.\r\n\r\nBagian-bagian Rumah Kasepuhan Cirebon\r\nBerikut adalah bagian-bagian penting yang terdapat dalam kompleks Keraton Kasepuhan:\r\n\r\n1. Pintu Gerbang Utama Keraton Kasepuhan\r\nPintu gerbang ini terletak di sebelah utara, sementara pintu gerbang kedua berada di selatan kompleks. Gerbang utara disebut Kreteg Pangrawit berupa jembatan, sedangkan di sebelah selatan disebut Lawang Sanga (pintu sembilan). Setelah melewati Kreteg (jembatan) Pangrawit akan sampai di bagian depan keraton. Di bagian ini terdapat dua bangunan, yaitu Pancaratna dan Pancaniti.\r\n\r\n2. Bangunan Pancaratna\r\nBerada di kiri depan kompleks arah Barat, berdenah persegi panjang, dengan ukuran 8 x 8 m. Lantai tegel, konstruksi atap ditunjang empat sokoguru di atas lantai yang lebih tinggi, dan 12 tiang pendukung di permukaan lantai yang lebih rendah. Atap dari bahan genteng, pada puncaknya terdapat mamolo. Bangunan ini berfungsi sebagai tempat seba atau tempat yang menghadap para pembesar desa atau kampung yang diterima oleh Demang atau Wedana. Secara keseluruhan memiliki pagar besi.\r\n\r\n3. Bangunan Pangrawit\r\nBerada di kiri depan kompleks menghadap arah Utara. Bangunan ini berukuran 8 x 8 m, berantai tegel. Bangunan ini terbuka tanpa dinding. Tiang-tiang yang berjumlah 16 buah mendukung atap sirap. Bangunan ini memiliki pagar terali besi. Nama Pancaniti berasal dari panca berarti jalan, dan niti yang berarti mata atau raja atau atasan. Bangunan ini berfungsi sebagai tempat perwira melatih prajurit, tempat istirahat, dan juga sebagai tempat pengadilan.', '1qmY2pJLvf.jpg', 'fbdBxWT6Qe.jpg', 'rbFyq1tRNM.jpg', 4, '2018-03-30 22:39:58', '2018-03-30 22:39:58'),
(5, 'Rumah Joglo', 'Rumah joglo merupakan ikon dari jawa tengah , setiap mendengar kata jawa tengah yang terlintas pertama adalah rumah joglonya , apa saja sih keistimewaan dan keunikan rumah joglo ini , di bawah ini kamu akan menemukan ragam keunikan dan berbagai informasi lain tentang rumah joglo ini\r\n\r\nDesain Arsitektur Rumah Joglo\r\n\r\nRumah joglo di bangun dengan desain arsitektur yang sangat unik serta penuh dengan nilai filosofi yang mencerminkan budaya jawa yang kental dan masih di pegang erat . salah satunya ialah desain rangka atapnya yang memiliki bubungan cukup tinggi , itu semua karena terdapat 4 tiang di tengah rumah yang berukuran lebih tinggi atau biasa di sebut soko guru , nah ke empat tiang inilah yang menjadi penyangga , dan menjadi tempat pertemuan rangka atap yang akan menopang beban atap\r\n\r\nSementara bagian atap rumah joglo menggunakan genteng yang terbuat dari tanah liat , dahulu sebelum di temukan genting tanah liat , rumah adat jawa tengah ini menggunakan atap yang terbuat dari ijuk atau alang-alang yang di anyam sedemikian rupa sehingga bisa rapat dan melindungi rumah dari hujan dan panas , Penggunaan desain atap dengan bubungan yang tinggi serta material yang terbuat dari alam membuat suhu ruangan di dalam rumah tetap dingin dan sejuk , selain itu rumah ini dapat menyatu dengan alam serta memberikan makna filosofis tersendiri\r\n\r\nBagian dinding rumah tradisional jawa tengah menggunakan kayu keras , begitu juga dengan tiang , rangka atap , pintu , dan jendela , bisa di katakan secara keseluruhan bagian rumah joglo terbuat dari kayu keras , seperti kayu jati , kayu ini memang sangat awet , memiliki ketahanan yang tinggi sehingga dapat bertahan lama hingga puluhan tahun . Kebanyakan rumah joglo yang bisa kita temukan saat ini menggunakan bahan kayu jati sebagai material utamanya . Baca juga Rumat adat 35 provinsi di indonesia\r\n\r\nSketsa Rumah Joglo\r\n\r\nSebagai sebuah rumah tentu saja rumah adat joglo berfungsi sebagai tempat tinggal dan berkumpulnya anggota keluarga , nah rumah tradisional ini memiliki berbagai ruangan yang memiliki fungsi khusus sebagai berikut ini\r\n\r\n1. Pendopo . Bagian ini merupakan ruangan terbuka yang terletak di bagian depan rumah , dengan desain terbuka membuat ruang ini menyatu dengan alam , sejuk dan cocok di gunakan untuk bersantai , meskipun begitu bagian pendopo tidak boleh di lewati oleh sembarangan orang yang hendak masuk ke dalam rumah  , jalur untuk masuk dan keluar rumah ada sendiri dan letaknya terpisah memutar sebelah samping pendopo , Pendopo sendiri umumnya di gunakan sebagai tempat menerima tamu  dan berbagai acara seperti pertemuan , tempat pagelaran wayang kulit , tari-tarian dan upacara adat\r\n\r\n2. Pringitan . Ruangan ini terletak diantara pendopo dan rumah dalam , bagian ini digunakan sebagai jalan masuk dan juga sebagai tempat pagelaran wayang kulit\r\n\r\n3. Emperan . Tempat ini adalah penghubung antara pringitan dan umah njero , tempat ini digunakan untuk menerima tamu , tempat bersantai dan kegiatan lainnya , pada Emperan umumnya terdapat sepasang kursi kayu dan meja\r\n\r\n4. Omah Njero . Ruangan ini merupakan bagian inti dari rumah joglo  , sebagai tempat berkumpulanya anggota keluarga sekedar bercengkerama dan bersantai antar keluarga . Selain Omah Njero terdapat beberapa nama lainnya yakni Omah mburi , dalem ageng , dan omah\r\n\r\n5. Senthong Kiwo . Bagian ini terletak di sebelah kanan rumah joglo dan terdiri dari berbagai ruangan dengan fungsi khusus , seperti sebagai kamar tidur , dan tempat persediaan makanan dan minuman , dan sebagainya\r\n\r\n6. Senthong Tengah . Sesuai dengan namanya ruangan ini terletak di bagian tengah , fungsinya sebagai tempat menyimpan barang dan benda-benda berharga seperti perhiasan , benda pusaka , keris dan benda-benda lain, juga digunakan sebagai keperluan lain seperti ritual kepercayaan , tempat menaruh sesajen , tempat beribadah , tempat bermeditasi , dan ada juga yang mempercayainya sebagai ruangan khusu tempat tinggal dewa . Ruangan ini juga biasa di sebut pedaringan , boma , atau krobongan\r\n\r\n7. Senthong Tengen . Ruangan ini memiliki fungsi dan pembagian ruang yang sama dengan senthong kiwo , bedanya hanya letaknya saja\r\n\r\n8. Gandhok . Merupakan bangunan tambahan yang terpisah dari rumah utama , bentuknya bangunan memanjang , biasanya digunakan sebagai ruang tidur bagi keluarga , saudara , dan tamu yang menginap', 'X7iwpR6DEe.jpg', '0075vjzfNz.jpg', 'gCedus0hhG.png', 5, '2018-03-30 23:15:11', '2018-03-30 23:15:11'),
(6, 'Jabu Bolon', '<p>Rumah Adat Batak Toba biasanya memiliki ciri khas berbentuk panggung dengan tiang pancang yang kokoh. Untuk masuk, anda harus menggunakan tangga. Rumah Adat Batak Toba terbuat dari papan dan beratapkan ijuk. Atap bagian depan selalu dihiasi dengan kepala kerbau dan dibagian belakang dihiasi dengan ekor kerbau. Bila anda tertarik untuk melihatnya secara langsung anda dapat berkunjung ke daerah Toba terutama kabupaten Samosir, Kabupaten Toba Samosir, Kabupaten Humbang Hasundutan dan Kabupaten Tapanuli Utara. Rumah Adat Batak Toba dinamai Jabu Bolon (Jabu: Rumah) dan (Bolon: Besar).</p>', '55Xez5sWr7.JPG', 'lL6jtP4IxW.JPG', 'JDugXqzUI6.JPG', 6, '2018-03-31 04:01:42', '2018-05-02 02:14:45'),
(9, 'Rumah Adat Baduy', 'Pada umumnya rumah adat Baduy adalah rumah panggung. Bangunan ini secara kebanyakan dibuat menggunakan bahan bambu. Rumah adat baduy ini sendiri terkenal dengan kesederhanaan, dan dibangun berdasarkan naluri manusia yang ingin memperoleh perlindungan dan kenyamanan. \r\n\r\nBangunan rumah adat Baduy dibuat tinggi, berupa rumah panggung, mengikuti kontur tanah. Pada tanah yang permukaannya miring atau tidak rata, rumah disangga dengan tumpukan batu kali. Batu ini berfungsi sebagai tiang penyangga bangunan agar tanah tidak longsor. \r\n\r\nAtap rumah adat baduy berasal dari daun yang dinamakan sulah nyanda. Nyanda maknanya sikap bersandar, sandarannya tidak lurus tetapi agah rebah ke belakang. Salah satu sulah nyanda ini dibuat lebih panjang & memiliki kemiringan yang lebih rendah pada bagian bawah rangka atap.\r\n\r\nBilik rumah dan pintu rumah terbuat dari anyaman bambu yang dianyam secara vertikal. Teknik anyaman tersebut dikenal dengan nama sarigsig tersebut dibuat hanya dengan berdasarkan perkiraan, tidak diukur terlebih dahulu. Kunci rumah dibuat dengan memalangkan dua buah kayu yang ditarik atau didorong dari bagian luar rumah.\r\n\r\nAda tiga ruangan dalam bangunan rumah adat banten  ini, yaitu ruangan yang dikhususkan untuk ruang tidur kepala keluarga juga dapur yang disebut imah, ruang tidur untuk anak-anak sekaligus ruang makan yang disebut tepas, dan ruang untuk menerima tamu yang disebut sosoro.\r\n\r\nSeluruh bangunan dibangun menghadap satu dengan yang lainnya. Secara adat rumah Baduy hanya diperbolehkan menghadap ke utara dan selatan saja.', 'MNknnYZE7i.jpg', 'pTUZtuai9J.jpg', 'EbqOyRxLB2.jpg', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, 'Dulohupa', 'Rumah adat Dulohupa dibangun berupa rumah panggung. Hal ini dilakukan sebagai penggambaran dari badan manusia yaitu atap menggambarkan kepala, badan rumah menggambarkan badan, dan  pilar penyangga rumah menggambarkan kaki. Selain itu bentuk rumah panggung juga dipilih untuk menghindari terjadinya banjir yang kala itu sering terjadi. \r\n\r\nRumah adat Dulohupa di Gorontalo dibangun berlandaskan prinsip-prinsip dan kepercayaan. Bagian atap rumah adat Dulohupa terbuat dari jerami terbaik dan berbentuk seperti pelana yaitu atap segitiga bersusun dua yang menggambarkan syariat dan adat penduduk Gorontalo. Atap bagian atas menggambarkan kepercayaan penduduk Gorontalo terhadap Tuhan yang Maha Esa dan agama merupakan kepentingan utama di atas yang lainnya. Sedangkan atap bagian bawah menggambarkan kepercayaan penduduk Gorontalo terhadap adat istiadat serta budaya. Pada bagian puncak atap dahulu terdapat dua batang kayu yang dipasang bersilang pada puncak atap atau disebut Talapua.  Penduduk Gorontalo percaya bahwa Talapua dapat menangkal roh – roh jahat, namun seiring perkembangan kepercayaan islami, sekarang Talapua sudah tidak di pasang lagi.\r\n\r\nPada bagian dinding depan terdapat Tange lo bu’ulu yang tergantung di samping pintu masuk rumah adat Dulohupa. Tange lo bu’ulu ini menggambarkan kesejahteraan penduduk gorontalo. Sedangkan bagian dalam rumah adat Dulohupa bergaya terbuka karena tidak banyak terdapat sekat. Selain itu di dalam rumah adat terdapat anjungan yang dikhususkan sebagai tempat peristirahatan raja dan keluarga kerajaan.', 'NiU8FzU4hq.jpg', 'hzFGFY2k5a.jpg', 'N4dwzPNCDf.jpg', 10, '2018-04-01 04:31:14', '2018-04-01 04:31:14'),
(11, 'Panggung model kajang lako', 'Rumah adat Jambi dinamakan Rumah Panggung dengan model kajang lako. Rumah adat tersebut merupakan rumah tinggal yang terbagi dalam 8 ruangan. Ruangan tersebut adalah: pertama Jogan, merupakan tempat istirahat dan menaruh air. Kedua Serambi Depan, merupakan ruangan untuk tamu laki-laki juga ruangan untuk mengaji anak-anak lelaki. Ketiga, Serambi Dalam yang merupakan tempat tidur bagi anak-anak lelaki. Keempat, Ameben Melintang yang merupakan kamar pengantin. Kelima, Serambi Belakang yang merupakan kamar tidur bagi anak-anak gadis. Keenam, Laren yang merupakan tempat menerima tamu wanita dan kegiatan anak-anak remaja putri. Ketujuh, Garang yang merupakan ruangan untuk menumbuk padi sekaligus tempat untuk menampung air. Kedelapan adalah dapur. Ada pula ruangan yag disebut Tengganai, yaitu ruangan yang digunakan untuk pertemuan kaum/ninik mamak', '3VGFa3ncRU.JPG', 'MT86Vja3rA.JPG', '1VAZ5HwBp4.jpg', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, 'Gapura Candi Bentar', '<p><span style=\"font-size: 20px;\">Gapura Candi Bentar menjadi ikon utama rumah adat Bali, namun ternyata rumah adat bali yang sebenarnya adalah sebuah bangunan yang memiliki bentuk segiempat dimana di dalamnya terdapat beberapa macam bangunan yang memiliki fungsi tersendiri. Seluruh bangunan tersebut di kelilingi oleh tembok atau pagar pemisah dari lingkungan luar atau disebut&nbsp;Panyengker karang/ tembok batas rumahdqw</span></p><p><br></p>', 'BaGvuczs0B.JPG', 'aond2FVuQ6.jpg', 'Ymfa0P4SkE.jpg', 12, '2018-04-02 04:07:11', '2018-05-02 03:29:41'),
(13, 'Osing', '<p><span style=\"font-size: 20px;\">rumah-rumah tradisional suku Osing di Desa Kemiren, sekitar 7 kilometer dari Kota Banyuwangi, selintas tidak jauh berbeda dengan rumah penduduk di pedesaan Jawa lainnya. Minimal, itu terlihat dari luar. \r\n\r\nTetapi, bagi orang-orang yang sudah pernah masuk ke dalam rumah adat Osing, memang terasa beda dengan rumah-rumah lainnya. Apalagi setelah kita berinteraksi dengan para penghuni rumat adat yang memang bukan rakyat atau warga kebanyakan di daerah itu, tetapi merupakan orang-orang terhormat di daerah atau di kampung itu\r\n\r\nBagi orang yang pernah masuk ke dalam rumah dan pernah berinteraksi dan berlama-lama dengan para penghuninya, diceritakan ada kekuatan. Menurut para penghuni rumah adat kerap menceritakan kalau tiang-tiang penyangga ruma adat Osing dibuat ari kayu ptat, tanjang atau bendo. \r\n\r\nBahwasanya, bentuk-bentuk kerangka atap rumah Osing, yang bersisi dua di sebut cerocogan, yang punya sisi tiga disebut tikel balung dan atap dengan empat sisi disebut baresan.\r\n\r\nSetiap jenis atap itu mengandung makna. Atap cerocogan melambangkan bersatunya laki-laki dan perempuan dalam pernikahan, tikel balung melambangkan lika-liku kehidupan berumah tangga, dan baresan melambangkan rumah tangga yang sudah beres, atau berjalan baik.\r\n\r\nSebagaimana dialami oleh setiap warga Osing, juga kita semua, bahwa dalam beruma tangga itu kita lalui begitu banyak tantangan, gangguan, cobaan dan godaan. Kalau kita sudah kuat menghadapi godaan, halangan bisa diatasi, berarti rumah tangganya jadi beres dan langgeng.\r\n\r\nSambil berjalan menyusuri jalanan kampung dan menunjukkan rumah-rumah asli Osing di Kemiren, pernah ada cerita bahwa pada masa lalu rumah-rumah Osing berlantai tanah dan berdinding anyaman bambu (gedhek pipil), dengan dinding kayu berukir pada bagian depan yang disebut gebyok. \r\n\r\nBagian depan di sebut bale, bagian tengah rumah dan bagian belakang pawon atau dapur untuk memasak.  Ada motif srengenge (matahari), bunga pare, kawung dan selimpet, garis-garis berpola yang saling berhubungan.\r\n\r\nMotif matahari melambangkan harapan akan masa depan rumah tangga yang cerah dan bunga pare melambangkan perjalanan kehidupan rumah tangga yang menjalar.\r\n\r\nDi samping itu, kasur hitam dengan warna merah pada tepiannya selalu ada di setiap rumah orang Osing di Kemiren.\r\n\r\nHitam itu melambangkan ketenangan, merah lambang spirit kesemangatan. Itu semua orang sini punya, paling tidak satu. Semua orang Osing akan menjemur kasur hitam merah di depan rumah setiap bersih desa tanggal 1 bulan Haji atau Zulhijah dan saat upacara Ider Bumi yang dilakukan pada hari kedua Idul Fitri.\r\n\r\nRumah Osing tidak hanya unik. Rumah-rumah sederhana itu seperti punya kemampuan menghilangkan jarak. Menjadikan siapa saja yang masuk sebagai bagiannya. Menjadikan \"aku\" dan \"kita\" sebagai bagian dari \"mereka\".</span></p><p><span style=\"font-size: 20px;\">dwq</span><u><span style=\"font-size: 20px;\">dqwd </span><i><span style=\"font-size: 20px;\">dqw</span><b><span style=\"font-size: 20px;\">qwfe</span></b></i></u><span style=\"font-size: 20px;\">﻿few d</span><span style=\"font-size: 64px;\">﻿dwqd</span></p>', 'ROsPrgpAwn.jpg', 'fwdmXMGz8l.JPG', 'CSZKgXrdju.jpg', 13, '2018-04-02 04:53:03', '2018-05-02 03:04:51'),
(14, 'Rumah Panjang', 'Rumah adat Kalimantan atau Rumah Panjang ini mempunyai lebih dari jumlah 50 ruangan dengan didalamnya banyaknya sebuah dapur. Rumah Panjang juga ditempati oleh banyak anggota, dan keluarga inti juga termasuk keluarga yang menetap tinggal didalam Rumah Panjang tersebut.\r\n\r\nBahkan di Kapuas ada Rumah Panjang yang didalamnya terdiri dari 54 bilik yang pada setiap bilik itu terdapat anggota keluarga.\r\nBiasanya rumah adat seperti ini dibentuk atau dibangun rumah dengan memiliki tinggi 5 sampai 8 meter dari atas permukaan tanah seperti halnya denga sebuah panggung yang besar. Menurut seseorang yang telah menyurvei rumah adat ini, ternyata Rumah Panjang ini ada yang memiliki ukuran panjangnya itu mencapai 186 meter dengan ukuran lebar 6 meter.\r\nApabila kita ingin masuk dan melihat isi dari Rumah Panjang itu, maka kita harus melewati anak tangga terlebih dahulu untuk bisa masuk dan melihat dari isi Rumah Panjang tersebut.', 'vIJmb0UWob.jpg', '7ChXa2hmjN.JPG', 'fOYL23yyPJ.JPG', 14, '2018-04-02 05:46:17', '2018-04-02 05:46:17'),
(15, 'Panggung', 'Rumah adat Bangka Belitung mewarisi gaya arsitektur Melayu Awal, Melayu Bubungan Limas dan juga rumah Melayu Bubung Panjang. Rumah Melayu Awal berupa rumah panggung dengan bahan utama kayu, rotan, bambu, daun-daun, akar pohon dan atau juga alang-alang. Rumah Panggung dari Melayu Awal ini memiliki atap yang tinggi dan sedikit miring. Rumah Panggung Bangka belitung juga memiliki beranda yang ada di depan rumah dan jumlah jendela atau bukaan yang banyak. Adapun bagian dalam rumah terdiri atas rumah induk atau ibu dan juga rumah dapur. \r\n\r\nRumah Panggung Bangka Belitung dipengaruhi oleh falsafah 9 tiang. Pada umumnya bangunan tradisional hampir selalu dijumpai berdiri dengan 9 tiang. Tiang utama bangunan terletak persis di bagian tengah rumah. Sementara itu bagian dinding lazim terbuat dari pelepah kayu, kadang juga buluh atau bambu. Uniknya, dinding ini sama sekali tidak dipermanis dengan cat dan semacamnya.', 'dXkQi32wvG.jpeg', 'nIWmAOaTIR.jpg', 'tamMWQUHEv.jpg', 15, '2018-04-09 06:15:35', '2018-04-09 06:15:35'),
(16, 'Honai', 'Honai merupakan rumah adat suku Dani di Lembah Baliem propinsi Papua, terbuat dari kayu dengan atap berbentuk kerucut yang terbuat dari jerami atau gulma atau reeds, bentuknya seperti jamur. Honai rumah sengaja dibangun ruang sempit atau ruangan kecil dan tanpa jendela untuk menahan pegunungan dingin Papua. Honai biasanya dibangun setinggi 2,5 meter dan di tengah-tengah rumah disiapkan tempat untuk membangun api untuk menghangatkan mereka.', 'dygjtVkvZR.JPG', '1BkXWmiCrw.jpg', '4iI3KA9TLC.jpg', 16, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, 'Bubungan Tinggi', '<span style=\"font-size: 18px;\">Rumah Bubungan Tinggi atau Rumah Ba-Bubungan Tinggi adalah salah satu jenis rumah Baanjung yaitu rumah tradisional suku Banjar di Kalimantan Selatan dan bisa dibilang merupakan ikonnya Rumah Banjar karena jenis rumah inilah yang paling terkenal karena menjadi maskotrumah adat khas provinsi Kalimantan Selatan.\r\n\r\n Di dalam kompleks keraton Banjar dahulu kala bangunan rumah Bubungan Tinggi merupakan pusat atau sentral dari keraton yang menjadi istana kediaman raja (bahasa Jawa: kedhaton) yang disebut Dalam Sirap (bahasa Jawa: ndalem) yang dahulu tepat di depan rumah tersebut dibangun sebuah Balai Seba pada tahaun 1780 pada masa pemerintahan Panembahan Batuah.\r\n\r\nRumah adat tradisional suku Banjar, memiliki konstruksi pokok dari rumah adat Banjar dapat dibagi atas beberapa bagian dan ruangan. Tubuh bangunan induk yang memanjang terus ke depan dibagi atas ruangan-ruangan yang berjenjang lantainya.\r\n\r\nRuangan-ruangan yang berjenjang lantainya ialah :\r\n\r\nPalatar (pendopo atau teras), ruangan depan yang merupakan ruangan rumah yang pertama setelah menaiki tangga masuk. Ukuran luas ruangan ini adalah 7 x 3 meter. Palatar disebut juga Pamedangan.\r\n\r\nPacira, yaitu ruang antara (transisi) yang terbagi dua bagian yaitu pacira dalam dan pacira luar. Pacira Dalam berfungsi untuk menyimpan alat pertanian, menangkap ikan dan pertukangan. Kedua pacira ini hanya dibedakan oleh posisinya saja. Pacira Luar tepat berada di muka pintu depan (Lawang Hadapan).\r\n\r\nPanampik Kacil, yaitu ruang tamu muka merupakan ruangan yang agak kecil setelah masuk melalui Lawang Hadapan yaitu pintu depan. Permukaan lantainya lebih tinggi daripada lantai palatar. Ambang lantai disini disebut Watun Sambutan. Luas ruangan ini adalah 7 x 3 meter.\r\n\r\nPanampik Tangah yaitu ruang tamu tengah merupakan ruangan yang lebih luas dari panampik kacil. Lantainya juga lebih tinggi dari ruang sebelumnya. Ambang lantai ini disebut Watun Jajakan.\r\n\r\nPanampik Basar atau Ambin Sayup, yaitu ruang tamu utama merupakan ruangan yang menghadapi dinding tengah (Banjar: Tawing Halat). Permukaan lantainya lebih tinggi pula dari lantai sebelumnya. Ambang Lantainya disebut Watun Jajakan, sama dengan ambang lantai pada Panampik Tangah. Luas ruangan 7 x 5 meter.\r\n\r\nPalidangan atau Ambin Dalam, yaitu ruang bagian dalam rumah yang berbatas dengan panampik basar. Lantai palidangan sama tinggi dengan lantai panampik basar (tapi ada juga beberapa rumah yang membuat lantai panampik basar lebih rendah dari lantai palidangan).\r\n\r\n Karena dasar kedua pintu yang ada di tawing halat tidak sampai ke dasar lantai maka watun di sini disebut Watun Langkahan. Luas ruang ini 7 x 7 meter. Di dalam ruangan Palidangan ini terdapat tiang-tiang besar yang menyangga bubungan tinggi (jumlahnya 8 batang). Tiang-tiang ini disebut Tihang Pitugur atau Tihang Guru.\r\n\r\nPanampik Dalam atau Panampik Bawah, yaitu ruangan dalam yang cukup luas dengan permukaan lantai lebih rendah daripada lantai palidangan dan sama tingginya dengan permukaan lantai panampik tangah. Ambang lantai ini disebut pula dengan Watun Jajakan. Luas ruang 7 x 5 meter.\r\n\r\nPadapuran atau Padu, yaitu ruangan terakhir bagian belakang bangunan. Permukaan lantainya lebih rendah pula dari panampik bawah. Ambang lantainya disebut Watun Juntaian.</span>', '2xKm3mYNM9.jpg', 'UyYyRzOERE.jpg', 'NjyIvAlZqw.jpg', 17, '2018-04-09 17:17:59', '2018-05-02 05:48:07'),
(18, 'Bubungan Lima', 'Rumah adat Bengkulu bernama Bubungan Lima. Secara umum, bangunan ini tergolong rumah panggung. Sejatinya, nama “Bubungan Lima” melekat bukan tanpa alasan. Ia merujuk pada atap rumah tersebut. Selain disebut dengan “Bubungan Lima”, rumah adat Bengkulu ini juga terkadang dikenal dengan nama “Bubungan Haji” “Bubungan Limas”, dan juga “Bubungan Jembatan”.\r\n\r\nRumah apik nan cantik ini umumnya terbuat dari kayu medang kemuning atau dikenal juga dengan nama balam. Kayu ini dipilih sebab karakternya lembut namun ia tahan lama bahkan hingga ratusan tahun. Adapun bagian lantai rumah Bubungan Lima ini terbuat dari papan,. Bagian atapnya disusun dari ijuk enau bisa juga sirap. Bagian depan rumah terdapat tangga. Anak tangga ini berjumlah ganjil sebab berkaitan dengan adat dan kepercayaan setempat.\r\n\r\nJika didasarkan pada literatur yang ada, sebenarnya, rumah adat Bengkulu ini tidak ditujukan untuk tempat tinggal umum. Rumah Bubungan Lima memiliki fungsi khusus yakni sebagai tempat dilaksanakannya berbgai ritual adat seperti kelahiran, penyambutan tamu, perkawinan, dan juga kematian.', '5giG37y7eN.JPG', '5VDrKGW2mk.png', 'Z9dUyRbLqc.JPG', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `senjatas`
--

CREATE TABLE `senjatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `senjatas`
--

INSERT INTO `senjatas` (`id`, `nama`, `desc`, `foto1`, `foto2`, `foto3`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, 'Rencong', 'Selain berfungsi sebagai senjata, bagi masyarakat asli Aceh, rencong juga dianggap sebagai simbol identitas diri. Keberanian, ketangguhan, dan harga diri masyarakat Aceh terejawantahkan dalam bentuk dan desain senjata jenis belati ini. Menilik pada sejarahnya, rencong diketahui mulai digunakan sejak zaman Kesultanan Aceh, tepatnya pada masa pemerintahan Sultan Ali Mughaya Syah. Di masa itu, rencong selalu diselipkan di pinggang sang Sultan Pertama itu, para Ulee Balang (bangsawan), dan masyarakat sebagai sarana untuk mempertahankan keselamatan diri. \r\n\r\nKhusus untuk rencong kepunyaan Sultan Ali Mughaya Syah hingga kini masih dapat kita temui di Museum Aceh sebagai salah satu koleksi dan pajangan. Rencong tersebut memiliki pegangan dan serangka (sarung) yang terbuat dari emas atau gading. Sementara rencong yang biasa digunakan masyarakat umum biasanya dibuat dari kayu atau tanduk kerbau. \r\n\r\nBerdasarkan bentuknya, rencong sebagai senjata tradisional Aceh dapat ditemukan dalam 4 jenis, yaitu rencong meucugek, rencong meupucok, rencong pudoi, dan rencong meukuree. \r\n1. Rencong meupucok adalah rencong dengan gagang kecil di bagian bawah dan membesar ke atasnya. Gagang rencong bagian atas biasanya dibubuhi ukiran emas dan ujungnya diberi hiasan dari gading gajah atau tanduk. \r\n2. Rencong meucugek adalah rencong dengan gagang melengkung (hampir siku) ke arah mata rencong. Jenis rencong ini memiliki bentuk demikian agar memudahkan tangan pemegangnya dalam menggunakannya saat melakukan pembelaan diri. \r\n3. Rencong meukuree adalah rencong yang dilengkapi dengan ukiran di bagian matanya. Ukiran bisa berbentuk bunga, lipan, daun, ular, atau ragam flora dan fauna lainnya.\r\n4. Rencong pudoi adalah rencong biasa yang gagangnya tidak dilengkapi dengan variasi. Jenis rencong inilah yang banyak digunakan sebagai alat perlawanan rakyat Aceh saat berperang melawan penjajahan Belanda.', 'Gn5xDo0CC7.JPG', 'ZviT6BWNjW.JPG', 'Uo9BBpYzUt.jpg', 1, '2018-03-30 09:40:55', '2018-03-30 09:40:55'),
(2, 'Tombak', 'Tombak atau lembing adalah senjata yang banyak ditemukan di seluruh peradaban dunia, terutama karena kemudahan pembuatannya dan biaya pembuatannya yang murah. Tombak adalah senjata untuk berburu dan berperang, bagiannya terdiri dari tongkat sebagai pegangan dan mata atau kepala tombak yang tajam dan kadang diperkeras dengan bahan lain. Bersamaan dengan kapak, tombak adalah perkakas pertama yang dibuat manusia dan sejalan dengan perkembangan peradaban mata tombak dan kapak yang semula berupa tulang atau batu yang dihaluskan diganti menjadi logam yang lebih kuat dan tahan lama.\r\n\r\nDi Indonesia tombak menjadi senjata utama yang banyak digunakan oleh tentara – tentara tradisional nusantara. Ini terutama karena kelangkaan besi dan logam lainnya di Indonesia sehingga sulit untuk membuat pedang. Oleh karena itu senjata yang lebih umum digunakan di Indonesia atau bangsa-bangsa melayu dulu adalah senjata yang menggunakan lebih sedikit besi dibanding pedang yaitu kapak, parang atau golok, dan tombak. Di antara senjata-senjata tadi yang hanya tombak yang digunakan hanya sebagai senjata (termasuk sebagai senjata berburu).\r\n\r\nTerdapat sejenis tombak tanpa mata yang sering digunakan oleh milisia di nusantara yaitu bambu runcing yang dibuat dari bambu yang diruncingkan tanpa perkuatan apapun di ujungnya. Untuk menghadapi tentara tradisonal nusantara dan tentara kolonial ini adalah senjata penusuk yang mematikan sebab mereka tidak dilengkapi dengan perlindungan baju zirah.', 'BgarNuJlHL.JPG', '5g2xUHttHb.jpg', '2NYMvsrqMo.jpg', 2, '2018-03-30 21:05:21', '2018-03-30 21:05:21'),
(3, 'Golok Betawi', 'Senjata merupakan alat kepanjangan tangan manusia dalam pembelaan diri, dalam setiap perkembangannya sangat dipengaruhi oleh kebudayaan dan lingkungan alam. Oleh karenanya sering ditemukan kesamaan model senjata antara satu daerah dengan daerah lain yang letak geografisnya berdekatan. Tidak sedikit dari senjata-senjata itu berakar dari alat pertanian dan perkakas sehari-hari.\r\n\r\nBagi masyarakat Betawi yang menurut arkeologi Uka Tjandrasasmita sebagai penduduk natif Sunda Kelapa (Monografi Jakarta Raya dan Sekitarnya Dari Zaman Prasejarah Hingga Kerajaan Pajajaran (1977), memiliki senjata tradisional yang belum terpengaruh kebudayaan asing sejak zaman Neolithikum atau zaman Batu Baru (3000-3500 tahun yang lalu). Hal ini dapat ditemukan pada bukti arkeologis di daerah Jakarta dan sekitarnya dimana terdapat aliran-aliran sungai besar seperti Ciliwung, Cisadane, Kali Bekasi, Citarum pada tempat-tempat tertentu sudah didiami.\r\n\r\nBeberapa tempat yang diyakini itu berpenghuni masyarakat Betawi itu antara lain Cengkareng, Sunter, Cilincing, Kebon Sirih, Tanah Abang, Rawa Belong, Sukabumi, Kebon Nanas, Jatinegara, Cawang, Cililitan, Kramat Jati, Condet, Pasar Minggu, Pondok Gede, Tanjung Barat, Lenteng Agung, Kelapa Dua, Cipete, Pasar Jumat, Karang Tengah, Ciputat, Pondok Cabe, Cipayung, dan Serpong. Jadi menyebar hampir di seluruh wilayah Jakarta.\r\n\r\nDari alat-alat yang ditemukan di situs-situs itu, seperti kapak, beliung, pahat, pacul yang sudah diumpam halus dan memakai gagang dari kayu, disimpulkan bahwa masyarakat manusia itu sudah mengenal pertanian (mungkin semacam perladangan) dan peternakan. Bahkan juga mungkin telah mengenal struktur organisasi kemasyarakatan yang teratur', 's8KUT9EuVR.jpg', 'vjTjTNheUU.jpg', '9BzSfcfvhk.jpg', 3, '2018-03-30 21:47:43', '2018-03-30 21:47:43'),
(4, 'Kujang', 'Kujang merupakan senjata tradisional dari Jawa Barat yang mana oleh masyarakat Sunda disakralkan dan dianggap magis. Kujang menurut masyarakat Jawa Barat berasal dari bahasa sunda kuno yaitu kata Kudi dan Hyang.\r\nKudi yang berarti Senjata dengan kekuatan gaib sedangkan Hyang berarti dewa atau masyarakat sunda mengartikannya kedudukan yang di atas Dewa. Berarti Kujang adalah pusaka yang mememiliki kekuatan magis yang kekuatannya berasal dari para dewa.\r\nUkurannya senjata kujang biasanya berkisar antara 20 sampai 25 cm dan digunakan sebagai perlengkapan peralatan pakaian laki-laki.\r\nPeneliti menyimpulkan bahwasanya dari bentuk kujang, kira-kira senjata ini diperkenalkan oleh nenek moyang Sunda yaitu sebelum abad 8 dan 9, namun ada juga pendapat bahwasanya kujang dibuat pada abad 8 dan 9.\r\n\r\nFungsi Kegunaan Senjata Tradisional Kujang\r\nBeberapa fungsi kegunaan senjata kujang bagi masyarakat Sunda diantaranya\r\n\r\nDigunakan sebagai lambang atau simbol contohnya logo pemerintah atau organisasi\r\nPeralatan Pertanian, hal ini berdasarkan naskah kuno sanghyang. Masyarakat sunda biasa menggunakannya untuk menebang kayu, memangkas tumbuhan dan nyacar. atau bisa disebut Kujang pamangkas\r\nSebagai hiasan untuk pajangan. kita bisa saksikan di rumah warga sunda di temboknya dipasang kujang.\r\nkujang pusaka. Pada zaman dahulu digunakan sebagai senjata perang.\r\nKujang pusaka, yaitu lambang keagungan dan pelindungan', '8J1oFsRzz7.jpg', 'edHW221VIT.jpg', 'j1bfU8IXUZ.JPG', 4, '2018-03-30 22:39:58', '2018-03-30 22:39:58'),
(5, 'Wedhung', 'Kebanyakan dari orang-orang tidak banyak yang mengetahui bahwa daerah Jawa Tengah ini mempunyai senjata-senjata tradisional yang bernama Wedhung. Senjata Wedhung ini keberadaannya kalah populernya daripada dibandingkan dengan senjata tradisional khas Jawa Tengah yang bernama keris. Namun, dimasa yang lampau jenis senjata tusuk ini justru lebih kerap digunakan penduduk-penduduk setempat.\r\nBentuk dari senjata tradisional wedhung ini hampis sama seperti pisau yang memiliki satu mata bilah yang sangat tajam. Dia dilengkapi dengan serangka yang terbuat dari kayu jati.', 'r1hEZS317I.jpg', 'n0ofPc5ri8.JPG', 'bDDiP6Rfz1.jpg', 5, '2018-03-30 23:15:11', '2018-03-30 23:15:11'),
(6, 'Piso Gaja Dompak', 'Piso Gaja Dompak berasal dari suku Toba yang mendiami wilayah Kabupaten Samosir, Toba Samosir, Humbang Hasundutan, Tapanuli Utara, Simalungun dan Kabupaten Dairi. Piso Gaja Dompak berasal dari padanan kata Bahasa Batak, Piso yang berarti Pisau, kata Gaja Dompak berasal dari ukiran gajah yang terdapat pada senjata tradisional tersebut, memiliki filosofi gagah serta melambangkan keperkasaan. Piso Gaja Dompak hanya dimiliki oleh mereka yang berasal dari keturunan raja, sehingga kuantitas dari senjata tradisional ini cukup terbatas.\r\n\r\nPiso Gaja Dompak dipercaya merupakan pusaka kerjaan Batak dimasa raja Sisingamangaraja I. Sebagai pusaka kerjaan, senjata tradisional Sumatera Utara ini tidak diperuntukan untuk membunuh, sebagai senjata pusaka Piso Gaja Dompak ini dipercaya memiliki kekuatan supranatural yang akan memberikan kekuatan spiritual kepada pemegangnya.', '0eOk9m3U7C.JPG', 'KaH9KDhFeg.JPG', 'DLFXWV9Vsy.JPG', 6, '2018-03-31 04:01:42', '2018-03-31 04:01:42'),
(9, 'Golok Ciomas', 'Golok Ciomas ini terdiri dari beberapa jenis, yakni jenis Salamunggal, Mancungan, Malapah Gedang, Candung, Kembang Kacang, dan Bedul Mungkuk. Serta untuk ‘gagang’ nya sendiri juga terdapat beberapa penamaan, yaitu Jengkol Sahulu, jebuk Sepasi, Pala Burung, Wayangan Standar Ciomas, Wayangan Satria. Penamaan ini digunakan untuk membedakan asli atau tidaknya golok.\r\n\r\nKonon kabarnya Golok Ciomas dipercaya sebagai senjata yang dapat meredam amarah dan hawa nafsu orang, oleh karenanya Golok ciomas ini juga dikenal sebagai ‘senjata perdamaian’. Atas keistimewaannya tersebut menjadikan Golok Ciomas sebagai warisan budaya khas Banten yang cukup terkenal.', '12KI2wJl0i.jpg', 'yvFCen540n.jpg', 'FotLzu87Xb.jpg', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, 'Parang', 'Parang adalah senjata tajam yang terbuat dari besi biasa. Bentuknya relatif sederhana tanpa pernak pernik. Kegunaannya adalah sebagai alat potong atau alat tebas (terutama selak belukar) kala penggunanya keluar masuk hutan. Parang juga digunakan untuk pertanian. Ciri khas dari senjata ini adalah ujung hulunya sedikit melengkung.', '3b8lD0aTI0.jpg', 'veJO57496F.jpg', 'n9hYsawZ19.jpg', 10, '2018-04-01 04:31:14', '2018-04-01 04:31:14'),
(11, 'Keris', 'Keris merupakan senjata tradisional di Jambi. Keris yang bentuknya lurus, dinamakan badik tumbuk lada. Keris ini banyak dan terdapat dimana-mana. Hulunya terbuat dari kayu atau tanduk dan wilayahnya lurus. Selain itu terdapat pula keris dengan wilahan yang berlekuk. Senjata lainnya adalah tombak, pedang dan sumpit.', 'El5ViQ8sOc.jpg', '13KWogbFPp.jpg', 'qRxcPl9488.jpg', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, 'Kadutan / Keris', '<span style=\"font-size: 20px;\">Keris&nbsp;adalah senjata tikam golongan&nbsp;belati&nbsp;(berujung runcing dan tajam pada kedua sisinya), bentuknya khas dan mudah dibedakan dari senjata tajam lainnya karena tidak simetris di bagian pangkal yang melebar, seringkali bilahnya berkelok-kelok, dan banyak di antaranya memiliki&nbsp;pamor&nbsp;(damascene), yaitu terlihat serat-serat lapisan logam cerah pada helai bilah</span>', 'cRd6Q7yPSd.jpg', 'nDRwdtivbW.jpg', 'TRHUDIiqJu.jpg', 12, '2018-04-02 04:07:11', '2018-05-02 03:29:41'),
(13, 'Clurit', '<p><span style=\"font-size: 20px;\">Clurit atau celurit merupakan senjata tradisional Jawa Timur khususnya di Madura. Clurit diyakini berasal dari legenda pak Sakera / Sakerah, seorang mandor tebu dari Pasuruan yang menjadi salah satu tokoh perlawanan terhadap penjajahan belanda. Beliau dikenal tak pernah meninggalkan celurit dan selalu membawa / mengenakannya dalam aktifitas sehari- hari, dimana saat itu digunakan sebagai alat pertanian / perkebunan. Beliau berasal dari kalangan santri dan seorang muslim yang taat menjalankan agama Islam. Pak sakera melakukan perlawanan atas penidasan penjajah,Setelah Pak Sakerah tertangkap dan dihukum gantung di Pasuruan, Jawa Timur. Beliau dimakamkan di Kota Bangil. Atau tepatnya di wilayah Bekacak, Kelurahan Kolursari, daerah paling selatan Kota Bangil. Tindakan penjajah tersebut memimbulkan kemarahan orang-orang madura, dan mulai berani melakukan perlawanan pada penjajah dengan senjata andalan meraka adalah celurit. Sehingga celurit mulai beralih fungsi menjadi simbol perlawanan, simbol harga diri serta strata sosial. Adapun bentuk clurit atau celurit yang dikenal di Madura Jawa Timur ada beberapa macam diantaranya clurit kembang turi dan clurit wulu pitik.</span></p><p><b><span style=\"font-size: 20px;\">fewf </span><i><span style=\"font-size: 20px;\">fwe </span><u><span style=\"font-size: 20px;\">fwfw</span><span style=\"background-color: rgb(255, 255, 0); font-size: 20px;\">fewfw</span></u></i></b></p>', 'FPCS1NpFGM.jpg', 'f60NDH2eHB.jpg', 'J4JrZYlRgh.jpg', 13, '2018-04-02 04:53:03', '2018-05-02 02:52:35'),
(14, 'Mandau', 'Masyarakat Dayak Kalimantan Barat memiliki nenek moyang yang sama dengan masyarakat Dayak di Provinsi lainnya di Kalimantan. Tak heran bila kemudian mereka mengenal mandau sebagai salah satu alat pertahanan diri. Mandau khas Kalimantan memang sangat terkenal. Bersama telawang, ia kerap dikoleksi oleh para kolektor senjata. Mandau Kalimantan Barat dibuat dari bahan logam kelas satu yang ditempa sedemikian rupa hingga memiliki satu mata bilah yang tajam. Gagangnya dibuat dari tulang tanduk rusa, cula babi, dan tulang hewan buruan lainnya, sementara serangkanya terbuat dari kayu yang diukir. Pada bagian gagang, biasanya terdapat pula hiasan bulu burung, rambut manusia, atau serat alam sebagai penanda kepemilikan.', 'RzjYzULdJM.jpg', 'DSRuWnV9bc.jpg', 'cR6kwtYiI6.jpg', 14, '2018-04-02 05:46:17', '2018-04-02 05:46:17'),
(15, 'Siwar', 'Siwar adalah senjata tradisional yang mirip dengan Golok panjang. Siwar dibedakan dari ukuran panjang dan pendeknya. Ada Siwar yang berbentuk panjang dinamakan siwar panjang, bentuknya hampir menyerupai mandau Kalimantan Barat, namun ia tidak bengkok. Ukurannya rata, lurus, pipih, ringan jika diayunkan. Kegunaannya untuk pertarungan cepat jarak dekat. \r\n\r\nUkuran panjang, ketebalan dan beratnya pun dirancang khusus yang dibuat tak sembarangan, disesuaikan dengan penggunanya. Keistimewaan lainnya, ada siwar panjang khusus yang rancang memiliki 2 mata sisi yang tajam seperti silet yang digunakan memang untuk pertempuran bagi masyarakat dahulu pada masa perjuangan kemerdekaan Indonesia.\r\n\r\nKemudian ada siwar pendek. Panjangnya seukuran keris, memiliki ujung yang runcing. Dirancang khusus memang untuk pertarungan jarak dekat digunakan untuk menusuk lawan. Bagian tengah memiliki lenkung yang berfungsi untuk merobek. Siwar jenis ini sangat tajam dan memiliki ketebalan yang tipis.', 'sVsagsfsgP.jpg', 'gpS0CzLK87.jpg', 'mYruTivrxu.jpg', 15, '2018-04-09 06:15:35', '2018-04-09 06:15:35'),
(16, 'Belati', 'Salah satu senjata tradisional di Papua adalah Pisau Belati. Senjata ini terbuat dari tulang kaki burung kasuari dan bulunya digunakan untuk menghias hulu Belati tersebut.', 'NpH1kJmwlj.jpg', 'wL105RkiNm.jpg', 'QimWY4z9cu.jpg', 16, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, 'Keris Banjar', 'Keris adalah merupakan senjata tradisional khas yang dibuat dari besi dan campuran logam. Panjang senjata keris ini sekitar 30 cm. Keris ini merupakan senjata yang umum digunakan oleh masyarakat Indonesia pada waktu lampau. Namun ukiran dan lekukan keris biasanya membedakan dari daerah mana keris tersebut berasal. Seperti halnya provinsi Kalimantan Selatan memiliki keris khas yang disebut dengan keris banjar .', '2mlIFabV9M.jpg', 'dN2TuNZtMb.jpg', 'DVjzb268n7.jpg', 17, '2018-04-09 17:17:59', '2018-04-09 17:17:59'),
(18, 'Rambai ayam', 'Rambai ayam merupakan salah satu senjata asli Bengkulu yang pasti tidak dapat ditemukan di provinsi lain di Indonesia. Senjata ini berupa senjata tusuk dengan ujung yang runcing dan salah satu sisinya yang sangat tajam. Sebagian masyarakat Bengkulu juga menyebut rambai ayam dengan nama lain, yaitu Jembio. Keunikan rambai ayam terletak pada beberapa ornamen. Selain karena bilah senjata ini melengkung dengan sudut yang kecil (seperti taji ayam) sehingga sangat mematikan bila digunakan untuk berkelahi, ia juga dilengkapi dengan beragam pahatan pada bagian serangka dan gagangnya. Coba perhatikan gambar di bawah ini! gambar tersebut adalah gambar dari senjata tradisional Bengkulu bernama Rambai ayam ini.', 'MIBlZVrj1K.jpg', 'Lk7Tpumk4W.jpg', 'xdyMUQNQgO.jpg', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarians`
--

CREATE TABLE `tarians` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tarians`
--

INSERT INTO `tarians` (`id`, `nama`, `desc`, `video`, `posting_id`, `created_at`, `updated_at`) VALUES
(1, 'Tulak Bala', 'Penguatan identitas Aceh memang tidak semata dilakukan melalui tari tradisi. Berbagai tari kreasi pun muncul dengan ide-ide keacehan yang berasal dari tradisi masyarakat. Tari “Tulak Bala” (tolak bala) yang diciptakan oleh Teuku Mursyidin S.Pd, di Aceh Barat Daya pada 2011 misalnya, tarian ini telah berhasil mengangkat kebiasaan masyarakat Aceh Barat Daya dan Aceh secara keseluruhan.\r\n\r\nKeberhasilan tarian “Tulak Bala” yang diciptakan Guru SMA Tunas Bangsa Aceh Barat Daya dalam mengangkat kearifan lokal tersebut telah pun mendapat apresiasi dan pengakuan dari Pemerintah Aceh, yaitu dengan menangnya tarian ini sebagai yang terbaik untuk mewakili Aceh pada Festival Lomba Seni Siswa Nasional (FLS2N) tahun 2012 tingkat SMP yang diadakan di Mataram, Nusa Tenggara Barat.\r\nTari yang terinspirasi dari perayaan “Tulak Bala” yang akrab pada tradisi Kabupaten Aceh Barat Daya (ABDYA) ini berhasil membawa abdya untuk unjuk kemampuan di tingkat Nasional mewakili Provinsi Aceh pada tahun 2012.\r\nTari ini menceritakan tentang betapa pentingnya berdo\'a. Hal ini tampak dari gerakan dan lirik yang berisi do\'a-doa kepada Tuhan Yang Maha Esa pada tarian tersebut.\r\n\r\nberikut adalah penggalan Lirik awal penampilan tarian kreasi tersebut:\r\nBismillah Alhamdulillah\r\nya Allah yang poe kuasa\r\nseulawet keu Rasulullah\r\nngoen Lidah beu tatem baca\r\n\r\nAllahu Allah\r\nAllahu Allah\r\nbek nebri Bala\r\nkeu kamoe dumna\r\nbek neubri ayeb\r\nseureta Malee\r\nkeu kamoe bandum\r\nhudep Lam donya\r\n\r\nDi Indonesiakan:\r\nBismillah Alhamdulillah\r\nya Allah yang berkuasa\r\nsalawat Kepada Rasulullah\r\ndengan lidah haruslah di baca\r\n\r\nAllahu Allah\r\nAllahu Allah\r\njangan berikan bencana\r\nuntuk Kita semua\r\njangan berikan ayib\r\nserta juga malu\r\nuntuk kita semua\r\nyang hidup di dunia\r\n\r\nGerakan yang tegas dan juga penuh harap akan terkabulnya Do\'a bertujuan untuk menginspirasi khalayak ramai untuk cepat bertindak dengan melakukan berbagai perintah tuhan termasuk Ibadah Sholat, dan Mengaji.\r\n\r\nPada pertengahan tarian, ada lirik yang menggetarkan jiwa dan di iringi pembacaan Do\'a\r\nLiriknya sebagai berikut:\r\nLaa iIaa Haillaa Anta yaa\r\nYaa Hayyu Ya Qayyum\r\nSubhanallah Wabiamdi\r\nSubhanallah hil azim\r\n\r\nLa ilahaa illallah\r\nLa ilahaa illallah\r\nLa ilahaa illallah\r\nLa ilahaa illallah\r\nLa ilahaa illallah\r\n\r\n(pada pembacaan lirik pertengahan diiringi dengan do\'a oleh salah satu penari)\r\n\r\n“Tulak Bala”  merupakan sebuah prosesi atau ritual yang sudah dilakukan masyarakat Aceh sejak dari dulu, dengan cara berdoa bersama-sama baik di meunasah, dayah, sungai, pantai, ataupun tempat-tempat populer untuk berkumpul di Aceh. Dipimpin oleh seorang teungku atau pemangku adat, ritual ini diisi dengan membacakan doa-doa yang relevan dengan “Tulak Bala”.\r\n\r\nDi masa sekarang, seiring perkembangan masyarakat, ritual \"Tulak Bala\" telah mengalami beberapa perubahan. Budaya yang dianggap sakral inipun telah banyak mengalami kontroversi dan perubahan, namun acara tersebut masih tetap diadakan di berbagai wilayah, terutama di Aceh Barat Daya di mana tarian di atas diciptakan. walaupun hanya berupa pesta silaturrrahmi sambil makan-makan. \r\n\r\nSebagaimana perubahan yang terjadi, bukan berarti ritual \"Tulak bala\" hanya untuk bersenang-senang dengan ramai-ramai berpesta ria sambil makan-makan. Rasa Syukur kepada Allah dan usaha meminta perlindungan merupakan inti utama yang ingin dilakukan masyarakat. \r\n\r\nPendekatan diri kepada Tuhan melalui media acara semacam Tulak Bala merupakan hal yang sering dilakukan masyarakat Aceh. Berbagai acara semacam ini banyak terdapat di Aceh dan telah menjadi bagian dari kekayaan budaya Aceh. Untuk itu, ide semacam tarian \"Tulak Bala\" selalu muncul ketika sebuah ritual yang telah lama menjadi budaya tersebut melemah dalam bentuk aslinya.', 'https://www.youtube.com/watch?v=kl-kQYZiAu8', 1, '2018-03-30 09:40:55', '2018-03-30 09:55:22'),
(2, 'Sanghyang Jaran', 'Bali memiliki berbagai jenis tarian dan salah satunya adalah tari Sanghyang, Dan salah satunya adalah Sanghyang Jaran (kekuatan roh dari kuda dewata).Di Kuta Tarian ini sering ditarikan oleh seorang pria, bisa juga oleh seorang pemangku atau orang yang dianggap suci yang mengendarai kuda-kudaan dari pelepah daun kelapa. Sebelumnya dimulai dengan rangkaian upacara dan pada akhirnya sang penari kemasukan roh kuda yang merupakan tunggangan dewata kahyangan.\r\n\r\nSEDIKIT SEJARAHNYA\r\n\r\nTari Sanghyang merupakan tari kerauhan (trance) karena kemasukan roh (bidadari kahyangan dan binatang lainnya yang memiliki kekuatan merusak seperti babi hutan, monyet, atau yang mempunyai kekuatan gaib lainnya). Tari ini adalah warisan budaya Pra-Hindu yang dimaksudkan sebagai penolak bahaya, yaitu dengan membuka komunikasi spiritual dari warga masyarakat dengan alam gaib. Tarian ini dibawakan oleh penari putri maupun putra dengan iringan paduan suara pria dan wanita yang menyanyikan tembang-tembang pemujaan\r\nDi dalam Tari Sanghyang menurut Babad Bali,  selalu ada tiga unsur penting yaitu asap/ api, Gending Sanghyang dan medium (orang atau boneka).\r\n\r\nPenyelenggaraannya melalui tiga tahap penting yaitu:\r\n1. Nusdus.\r\nUpacara penyucian medium dengan asap/ api\r\n2. Masolah.\r\nPenari yang sudah kemasukan roh mulai menari\r\n3. Ngalinggihang.\r\nMengembalikan kesadaran medium dan melepas roh yang memasuki dirinya untuk kembali ke asalnya.\r\n\r\nBeberapa jenis tari Sanghyang yang hingga kini masih ada di Bali, salah satunya di kuta ada tarian Sanghyang Jaran \r\n\r\nPenari yang sudah kerasukan/kesurupan roh akan kehilangan kesadaraanya, sambil memejamkan matanya berlari-lari kecil mengelilingi dan menginjak-injak bara api dari sabut dan batok kelapa, sambil diiringi nyanyian sakral/ gending Sanghyang. Semakin lama tarian tarian semakin memuncak, penari menerjang gundukan bara api, api diinjak, ditendang diambil dengan tangan tanpa terbakar sedikitpun, tari Sanghyang Jaran ini diiringi dengan lantunan kidung Sanghyang Jaran dan gamelan yang tak putus-putus, suasana magis lebih terasa lagi saat lampu penerang dimatikan, kelihatan bara api berserakan disana-sini, dan pada akhirnya semua api telah padam, dilanjutkan dengan mengembalikan kesadaran penari, melepas roh yang memasuki penari untuk kembali ke asalnya dan akhirnya sang penaripun sadar. Hal ini menyadarkan kita bahwa ada kekuatan lain di luar kita sehingga menambah kesadaran yang lebih tinggi ada kekuatan lain yang lebih besar lagi dari roh-roh tersebut yaitu Ida Sang Hyang Widi Wasa, yang menciptakan alam semesta ini beserta isinya.\r\n\r\n Tari ini diselenggarakan pada saat-saat prihatin, misalnya terjadi wabah penyakit atau kejadian lain yang meresahkan masyarakat. Tarian Sanghyang Jaran jarang sekali dipentaskan dan tempat pementasannya di pura, kalau saja tarian ini bisa lebih sering di pentaskan di tempat umum dan khalayak umum juga di perbolehkan untuk menyaksikan pementasan tarian ini maka menurut pandangan saya tarian ini bisa menarik minat wisatawan yang memang menyukai adat/tarian tradisional bali pada khususnya untuk datang ke bali, maksudnya tarian ini bisa di pentaskan untuk tontonan wisatawan seperti tarian kecak. Selain bisa memperkenalkan budaya bali yang masih terpendam dan belum banyak orang yang mengetahuinya, tarian ini juga dapat menghasilkan uang melalui tiket yang di jual di tempat-tempat wisata yang nantinya akan mempertontonkan tarian ini kepada wisatawan yang datang.', 'https://www.youtube.com/watch?v=Ty9INb2zgAk', 2, '2018-03-30 21:05:21', '2018-03-30 21:05:21'),
(3, 'Tari Yapong', 'Siapa yang belum mengenal tari Yapong? Tarian Yapong ini dikenal berasal dari DKI Jakarta. Pada awalnya, tari Yapong dipertunjukkan dalam rangka mempersiapkan acara ulang tahun kota Jakarta ke-450 pada tahun 1977. Pada saat itu, Dinas Kebudayaan DKI mempersiapkan sebuah acara pagelaran tari massal dengan mengangkat cerita perjuangan Pangeran Jayakarta. Pagelaran berbentuk sendratari ini dipercayakan kepada Bagong Kussudiarjo untuk menyelenggarakan acara tersebut. Dan akhirnya acara tersebut sukses menampilkan pagelaran sendra tari Yapong yang didukung oleh 300 orang artis dan musikus.\r\n\r\nTari Yapong merupakan tari kreasi baru yang berlatang belakang akulturasi budaya tradisional. Tai Yapong ini merupakan tari yang gembira dengan gerakan yang dinamis dan eksotis. Dalam gerakan tarian Yapong diperlihatkan suasana yang gembira karena menyambut kedatangan Pangeran Jayakarta. Adegan tersebut dinamai Yapong dan tidak mengandung arti apapun. Istilah tersebut muncul dari lagunya yang berbunyi ya, ya, ya, ya yang dinyanyikan oleh penyanyi pengiringnya serta suara musik yang terdengar pong, pong, pong, sehingga lahirlah “ya-pong” yang semakin lama berkembang menjadi Yapong.', 'https://www.youtube.com/watch?v=9Ib1Uu4M2nE', 3, '2018-03-30 21:47:44', '2018-03-30 21:47:44'),
(4, 'Tari Wayang', 'Tari wayang mulai dikenal masyarakat pada masa kesultanan Cirebon pada abad ke-16 oleh Syekh Syarif Hidayatullah, yang kemudian disebarkan oleh seniman keliling yang datang ke daerah Sumedang, Garut, Bogor, Bandung dan Tasikmalaya. Disebut tari wayang karena para penari mengenakan kostum dan melakukan gerak tari yang menggambarkan tokoh / karakter wayang yang dikenal masyarakat di Jawa Barat.\r\nPada awalnya tari wayang ini dimainkan pada saat pertunjukan wayang orang, namun pada perkembangannya kemudian tari wayang menjadi satu pertunjukan seni terse\r\n\r\nTari Wayang dapat dimainkan secara tunggal, berpasangan maupun masal. Sedangkan karakter yang dimainkan oleh pemain terdiri dari beragam karakter pria dan wanita.  Karakter tari wanita terdiri dari Putri Lungguh untuk tokoh Subadra dan Arimbi serta ladak untuk tokoh Srikandi. Sedangkan karakter tari pria terdiri dari : Satria Lungguh untuk tokoh Arjuna, Abimanyu, dan Arjuna Sastrabahu. Satria Ladak Lungguh untuk tokoh Arayana, Nakula dan Sadewa Satria Ladak Dengah/Kasar untuk tokoh Jayanegara, Jakasono, Diputi Karna dan sebagainya Monggawa Dengah/Kasar seperti Baladewa dan Bima Monggawa Lungguh seperti Antareja dan Gatotkaca Denawa Raja seperti Rahwana dan Nakula Niwatakawaca.', 'https://www.youtube.com/watch?v=DFIwt3vKAzo', 4, '2018-03-30 22:39:58', '2018-03-30 22:39:58'),
(5, 'Tari Batik Jlamprang', 'Tari Batik Jlamprang merupakan salah satu budaya berupa tarian khas Kabupaten Pekalongan. Tarian ini mempunyai daya tarik tersendiri lantaran setiap gerakannya mempunyai makna yang mencerminkan rakyat pekalongan. \r\n\r\nSejarahnya Tari Batik Jlamprang atau biasa disebut Tari Jlamprang diciptakan oleh seseorang yang berasal dari Semarang. Beliau menciptakan komposisi tarian Batik Jlamprang dan mengajarkannya pada anak didiknya di Sanggar Greget termasuk mengajarkan tarian ini pada beberapa pelajar dan guru kesenian di kota Pekalongan. Ternyata komposisi Tari Batik Jlamprang berhasil disukai warga Pekalongan dan mulai sering dibawakan pada acara-acara besar seperti pada perayaan Hari Jadi Kota Pekalongan, Pertunjukan Tari Batik Jlamprang di Istana Negara dan acara-acara besar lainnya. Jlamprang sendiri adalah nama salah satu motif batik khas kota Pekalongan selain motif Cuwirim motif Garuda Madhep serta motif Balaran. Dari beberapa motif tersebut, memang motif Jlamprang yang lebih dikenal, sehingga dijadikan simbol dan identitas budaya kota Pekalongan. Tari Batik Jlamprang adalah tarian yang pada setiap gerakannya mencerminkan rakyat Pekalongan yang menyukai membatik. Gerakannya mempunyai arti pekerja keras, rajin dan tekun. Tarian ini juga dijadikan sebagai ajang memperlihatkan batik sebagai simbol kota Pekalongan. Biasanya, penari yang membawakan tarian Batik Jlamprang berasal dari berbagai pelajar putri di kota Pekalingan. Salah satu komposisi gerakannya adalah gerakan pembatik mencelupkan canting dan menuliskannya pada kain yang sudah dipenuhi pola, gerakan ini dibawakan dengan gemulai dan halus. Gerakan lainnya seperti gerakan bersimpuh dan mengibaskan kain batik di lengan kiri. Durasi dari Tari Batik Jlamprang dibawakan selama 3 hingga 5 menit. Sedangkan iringan musik Tari Jlamprang berasal dari gamelan berlaras pelog yang terdiri dari gender, saron, demung, kethuk, gong, kempul dan suling. Perpaduan seni gerak yang gemulai dan musik tradisional pada Tari Jlamprang memang berhasil membuat suatu tarian yang indah dan unik. Pengunjung yang ingin melihat pertunjukan Tari Jlamprang, bisa langsung datang pada perayaan hari-hari besar di Pekalongan, salah satunya perarayan hari jadi kota Pekalongan yang biasa dilaksanakan di Komplek Lapangan Jetayu atau di Alun-Alun Pekalongan. \r\n\r\nDaripada penasaran, segera saja Kawan Sumber rencanakan berlibur ke Pekalongan dan jangan sampai lewatkan pertunjukan Tari Jlamprang yang pastinya memberikan wawasan baru akan budaya bangsa khususnya kota Pekalongan.', 'https://www.youtube.com/watch?v=wHeX24_9W7Q', 5, '2018-03-30 23:15:12', '2018-03-30 23:15:12'),
(6, 'Tor-Tor Sigale-Gale', 'Tari Sigale-Gale adalah salah satu kesenian tradisional masyarakat suku Batak di Samosir, Sumatera Utara. Sigale-gale sendiri merupakan sebuah boneka berbentuk manusia yang dapat digerakan serta menari dengan diiringi oleh musik tradisional. Tari Sigale-Gale ini termasuk salah satu kesenian tradisional yang cukup terkenal di Sumatera Utara, terutama di daerah Samosir. Tarian ini biasanya sering ditampilkan di berbagai acara seperti acara adat, acara budaya, bahkan menjadi salah satu daya tarik bagi para wisatawan yang datang ke sana.\r\n\r\nDalam tradisi masyarakat Batak di Samosir, Tari Sigale-Gale biasanya dilakukan pada upacara kematian, terutama saat laki-laki meninggal. Menurut kepercayaan masyarakat di sana, tarian ini dilakukan untuk mengantar arwah mendiang yang meninggal. Namun seiring dengan berjalannya waktu, tradisi ini mulai jarang dilakukan, sehingga keberadaan boneka sigale-gale pun mulai berkurang. Walaupun begitu, untuk menjaga serta melestarikan tradisi dan budaya mereka, Tari Sigale-Gale ini kemudian dikembangkan sebagai tarian pertunjukan. Dan sering ditampilkan di berbagai acara adat maupun budaya, bahkan menjadi salah satu daya tarik wisata bagi para wisatawan yang datang ke sana.', 'https://www.youtube.com/watch?v=jKRQ2iS5UT8', 6, '2018-03-31 04:01:42', '2018-03-31 04:01:42'),
(9, 'Tari Walijamaliha', 'Tari Walijamaliha adalah visualisasi perkenalan daerah Banten Yang sarat daya tarik, memiliki potensi alam berlimpah, bersejarah turunan kesultanan besar, serta memiliki derajat ketaatan agama yang tidak diragukan. Visualisasi Keragaman Budaya terdiri dari budaya Sunda, Jawa Serang, Etnis Cina, Arab dan India hidup berdampingan sebagai bukti kebersamaan dan kekompakan warganya dalam mambangun Banten.\r\n\r\nTari Walijamaliha sebagai tarian selamat datang dengan 6 adegan pokok adalah filosofis dari rukun iman terinspirasi dari bait-bait shalawat dalam kitab Barzanji.  Tarian Walijamaliha ini digagas oleh  Ibu Hj. Ratu Atut Chosiyah, SE pada saat menjabat sebagai Gubernur Banten dan Ibu Hj. Egi Djanuiswati M.Sc selaku Kadisbudpar Provinsi Banten, dan direalisasikan oleh seniman-seniman Banten yang telah ditunjuk.\r\n\r\nKata Walijamaliha sendiri berasal dari Bahasa Arab yang bermakna daerah yang memiliki kecantikan atau daya tarik. Adapun tarian ini dibawakan oleh penari wanita dengan gerak yang ceria serta mengenakan kostum religi, hal ini mencerminkan karakter masyarakat Banten yang terbuka, riang, ramah, hangat dan enerjik dalam suasana yang agamis.', 'https://www.youtube.com/watch?v=o-dIVq_zBfQ', 9, '2018-04-01 03:43:44', '2018-04-01 03:43:44'),
(10, 'Saronde', 'Tari Saronde adalah tarian tradisional dari Provinsi Gorontalo. Tari Saronde ini adalah merupakan salah satu tarian tradisional masyarakat Gorontalo yang diangkat dari tradisi masyarakat Gorontalo saat malam pertunangan dalam rangkaian upacara perkawinan adat. Pada awalnya, tari saronde dilakukan oleh pengantin, demikian juga dengan orang yang diminta untuk menari ketika dikalungkan selendang oleh pengantin dan para penari dengan iringan musik rebana dan nyanyian vokal, diawali dengan tempo lambat yang semakin lama semakin cepat.\r\n\r\nDalam perkembangannya tari Saronde ditampilkan oleh para penari pria dan penari wanita yang menari dengan gerakan yang khas dan menggunakan seledang sebagai atribut menarinya. Akan tetapi selain menjadi bagian dari acara pernikahan adat, Tari Saronde juga sering ditampilkan dalam acara seperti penyambutan, pertunjukan seni, dan festival budaya.\r\n\r\nUntuk gerakan dalam Tari Saronde biasanya lebih didominasi oleh gerakan mengayunkan kaki dan tangan ke depan secara bergantian. Penari juga sering memainkan selendangnya dengan berputar-putar. Selain dilakukan secara berpasangan, formasi penari pun sering berubah-ubah sehingga menggambarkan keceriaan dan kebahagian dari para penari.\r\n\r\nTari Saronde biasanya diiringi oleh iringan musik rebana dan nyanyian vokal. Lagu yang dinyanyikan untuk mengiringi tarian ini biasanya merupakan lagu khusus Tari Saronde. sedangkan tempo yang dimainkan dalam mengiringi tarian ini biasanya disesuaikan dengan lagu dan gerakan para penari.', 'https://www.youtube.com/watch?v=v1A4jtqCuy0', 10, '2018-04-01 04:31:15', '2018-04-01 04:31:15'),
(11, 'Sekapur Sirih', 'Tari Sekapur Sirih merupakan tarian tradisional yang berasal dari daerah Jambi. Tarian ini masuk ke dalam kategori tarian penyambutan tamu yang datang. Dengan berpakaian adat serta diiringi alunan musik pengiring, para penari menggerakkan tubuhnya dengan lemah lembut sembari membawakan cerano sebagai tanda persembahan.\r\n\r\nTari Sekapur Sirih pertama kali diciptakan oleh seniman Jambi, Firdaus Chatap. Pada 1962 tarian ini diperkenalkan kepada masyarakat luas. Tersebab awalnya merupakan gerakan dasar, beberapa seniman mengembangkan tarian ini dengan disertai iringan musik dan lagu, sehingga membuatnya menarik perhatian warga maupun tamu yang menyaksikan.\r\n\r\nGerakan dalam tarian ini dibagi menjadi beberapa bagian, diantaranya gerakan melenggang, sembah tinggi, merentang kepak, bersolek, dan gerakan berputar. Sedangkan untuk pola lantai yang dimainkan biasanya disesuaikan dengan kebutuhan dan tempat pementasan.\r\n\r\nTari ini difungsikan sebagai tarian selamat datang untuk menyambut para tamu. Tarian ini menjelaskan sikap keterbukaan masyarakat daerah Jambi. Selain itu, Tari Sekapur Sirih juga artikan sebagai ungkapan rasa syukur dan kebahagiaan masyarakat dalam menyambut para tamu tersebut.\r\n\r\nTari Sekapur Sirih umumnya ditampilkan oleh penari wanita, tetapi ada juga yang menambahkan penari pria sebagai penari pendukung. Untuk jumlah penari biasanya terdiri dari sembilan penari wanita dan tiga penari pria. Para penari pria ini biasanya berperan sebagai pengawal dan pembawa payung. Sedangkan penari wanita berperan sebagai penari utama.', 'https://www.youtube.com/watch?v=fYYIwWBFYJI', 11, '2018-04-01 05:26:28', '2018-04-01 05:26:28'),
(12, 'Bungbung Gebyog', '<span style=\"font-size: 20px;\">Bungbung gebyog menggambarkan ibu-ibu rumah tangga yang sedang menumbuk padi. Bungbung Gebyog ini biasanya dibawakan oleh beberapa orang wanita yang sudah berkeluarga. Masing-masing penari membawa sebuah bambu yang menggambarkan sebagai alu untuk menumbuk padi, dari ketukan bambu tersebut dihasilkan irama yang merdu untuk dinikmati , Daerah yang dijuluki lumbung beras ini memiliki kesenian khusus untuk menggambarkan kehidupan petani di wilayah itu. Kesenian itu dinamakan Tari Bumbung Gebyog Leko yang tampil memeriahkan Pesta Kesenian Bali (PKB) XXXIX di Kalangan Ratna Kanda Taman Budaya Bali, Jumat (23/6).\r\n\r\nWayan Arsana, Koordinator Sanggar Seni Omelan I Kayu Bolong yang mementaskan Tarian Bumbung Gebyog Leko, mengatakan, kesenian ini sudah cukup lama ada dari tahun 1910-an di Desa Kukuh, Kerambitan, Tabanan. Tarian ini dipentaskan di Puri Anyar Kerambitan dengan seorang seniman bernama Ni Nyoman Manis.\r\n\r\n“Pada waktu itu kesenian ini mengambil dasar tari Sang Hyang Dedari. Pada mulanya penarinya hanya satu orang, tarian ini sempat redup karena ditarikan pada saat-saat tertentu di puri,” terangnya.\r\n\r\nKemudian, sejalan kemajuan pariwisata kesenian ini coba dihidupkan lagi sekitar tahun 1984 oleh seniman dari Desa Kukuh, Kerambitan bernama Made Ladra. Kesenian ini dipadukan dengan tabuh menggunakan empat buah tingklik dilengkapi sepasang kendang lanang wadon, satu buah kecek, kelendur, dan empat orang penabuh gebyog dan kepyokan. “Sempat lagi muncul berkembang kemudian redup lagi. Tahun 2000-an sejalan dengan majunya pariwisata kesenian ini ditambahkan dengan fragmentari,” imbuhnya.\r\n\r\nKesenian Bumbung Gebyog Leko terinspirasi dari kehidupan petani di Desa Tabanan yang sangat tekun mengolah sawah dan menanam padi. Oleh pangelingsir dan tokoh masyarakat, tarian ini juga terinspirasi dari adanya gangguan dalam memelihara tanaman padi menjelang panen seperti serangan hama tikus dan burung.  \r\n\r\n“Dengan pementasan ini kami berharap masyarakt memperoleh motivasi kembali dalam mengolah lahan pertaniannya. Sekaligus, kepada pemerintah agar lebih semangat membantu nasib para petani, sehingga petani lebih bergairah dalam mengolah lahan,” tandasnya</span>', 'https://www.youtube.com/watch?v=14NWR9ksgBk', 12, '2018-04-02 04:07:12', '2018-05-02 03:29:41'),
(13, 'Tari Gandrung', '<p><span style=\"font-size: 20px;\">Gandrung adalah seni tari khas masyarakat Using yang sekarang menjadi \r\nmaskot Kabupaten Banyuwangi. Seorang penari gandrung identik dengan perempuan\r\nyang bergulu menjangan berkaki kijang, yang berarti lincah bagai rusa dan memiliki\r\nsuara yang merdu. Struktur pementasan gandrung meliputi jejer, paju, dan seblangseblang.\r\nMusik iringan gending jejer yang semula rancak berganti menjadi lembut\r\ndan penari melantunkan gending Padha Nonton sebagai lagu wajib pembuka.\r\n\r\nGandrung merupakan salah satu jenis kesenian tradisional Using yang\r\nkeberadaannya tetap diminati oleh masyarakat. Salah satu keunikan seni gandrung\r\nialah terpadunya gerakan tari yang dinamis dengan suara instrumen yang beragam\r\ndan bersuara rancak bersahut-sahutan.\r\n\r\nDalam pertunjukan gandrung seorang penari\r\ngandrung seringkali melantunkan pantun-pantun Using baik yang terdiri dari dua\r\nlarik maupun empat larik. Pantun-pantun tersebut ada yang bernuansa agama dan ada\r\npula yang bernuansa asmara.</span></p><p><br></p><p><span style=\"font-size: 20px;\">dwq </span><u><span style=\"font-size: 20px;\">wefw </span><i><span style=\"font-size: 20px;\">fewfw </span><b><span style=\"font-size: 20px;\">fwfwf</span><span style=\"background-color: rgb(255, 255, 0); font-size: 20px;\">fwe fwef</span></b></i></u></p>', 'https://www.youtube.com/watch?v=UwVNz4fDenA', 13, '2018-04-02 04:53:03', '2018-05-02 02:52:35'),
(14, 'Tarian Pedang', 'Tarian yang dilakukan sendirian ini menceritakan tentang persiapan seorang pemuda untuk membela diri yang akan turun pada ekspedisi Mengayau. Tarian Pedang ini terdapat di Dayak Mualang. Pada jaman dahulu tarian ini untuk memuja pedang/nyabor, gerakan tarian pedang ini seperti gerakan penari pedang daerah lain yaitu menyerang, menangkis dengan gaya tradisional dayak. Dalam melakukan tarian pedang ini akan diiringi oleh musik instrumen dengan sebutan Tebah Unop. Dengan menggunakan pakaian adat Kalimantan Barat juga di lengkapi oleh tameng dengan ciri khas tersendiri, kelihatan indah ketika dipentaskan dengan penari yang memiliki keahlian memainkan pedang. Walaupun kelihatan mudah tetapi bila tidak pada ahlinya akan terlihat susah karena menggunakan pedang sungguhan sehingga harus dilakukan dengan hati hati.', 'https://www.youtube.com/watch?v=NreCIy6TU_0', 14, '2018-04-02 05:46:17', '2018-04-02 05:46:17'),
(15, 'Campak', 'Tari Campak adalah tari tradisi dari daerah Kepulauan Bangka Belitung. Seperti halnya tari sepen, tarian Campak menggambarkan kecerian dan pergaulan muda mudi di Bangka Belitung. Tarian Campak ini biasanya dibawakan oleh penari pria dan wanita dengan ekpresi kegembiraan. \r\n\r\nMenurut sumber sejarah yang ada, Tari Campak ini awalnya berasal dari kepulauan Riau. Kemudian dibawa dan dikembangkan di Bangka Belitung oleh seorang bernama Nek Campak, sehingga tarian ini dikenal dan sering disebut Tari Campak. Pada jaman penjajahan bangsa portugis, tarian ini kemudian mengalami akulturasi budaya. Percampuran budaya ini sangat terlihat dari gerakan, kostumnya, dan musik pengiringnya yang memiliki kesan gaya Eropa. Walaupun begitu, budaya lokal juga masih melekat pada tarian ini, hal ini terlihat pada kostum penari pria, alunan pantun dan beberapa musik pengiringnya yang merupakan gaya Melayu.\r\n\r\nTari Campak diiringi musik pengiring yang dibunyikan dari alat musik tradisional antara lain kendang dan gong. Selain alat musik tradisional, alat musik seperti akordion dan biola juga berakulturasi menjadi musik harmonis yang mengiringi tarian ini\r\n\r\nKostum yang digunakan oleh para penari Tari Campak ini juga merupakan perpaduan budaya Melayu dan budaya Eropa. Penari wanita menggunakan pakaian yang sangat kental akan gaya busana Eropa seperti gaun panjang dan sepatu hak tinggi. Sedangkan penari pria sangat kental akan gaya busana Melayu seperti kemeja, celana panjang, peci, dan selendang.\r\n\r\nTari Campak ini banyak dibawakan pada acara pernikahan, penyambutan tamu dan acara lainnya yang dilakukan oleh masyarakat Provinsi Kepulauan Bangka Belitung.', 'https://www.youtube.com/watch?v=QbAKV-zwSzo', 15, '2018-04-09 06:15:36', '2018-04-09 06:15:36'),
(16, 'Sajojo', 'Tarian sajojo sangat terkenal sebagai tarian penyambut tamu yang sering dipertunjukan dalam acara penyambutan tamu maupun acara lainnya di Papua. Tarian ini mulai terkenal sekitar tahun 1990. Sejak saat itu, tarian ini banyak dilakukan oleh masyarakat Indonesia. Berbagai alat musik tradisional Papua seperti tifa juga dipergunakan untuk mengiringi tari sajojo ini. Musik yang menjadi pengiring tari sajojo ini makin berkembang bahkan diantaranya sudah menggunakan musik modern yang banyak dikenal masyarakat. Penari sajojo menari dengan cara melompat dan menghentak-hentakkan kakinya.', 'https://www.youtube.com/watch?v=0GvMtF5VNKk', 16, '2018-04-09 06:58:44', '2018-04-09 06:58:44'),
(17, 'Baksa Kambang', 'Pada jaman dahulu Tarian Baksa Kambang berkembang di lingkungan kraton Banjar. Fungsi tarian ini adalah untuk menyambut tamu dari negara lain atau keraton lain, untuk jaman sekarang tetap fungsinya. Selain itu Tarian Baksa Kambang juga dipentaskan dalam acara keluarga seperi Khitanan, Nikahan, pentas seni dll. Untuk melakukan tarian ini para penari membawa Kembang Bogam yaitu rangkaian dari berbagai jenis bunga diantaranya bunga mawar,bunga kantil,bunga melati,dan bunga kenanga. Fungsi bunga nanti tersebut nanti akan diberikan kepada tamu yang hadir. Untuk jumlah penari biasanya ganjil dan tarian ini menceritakan seorang putri yang bermain di taman bunga dan sedang menari. Tarian ini dalam pentasnya diiringi oleh gamelan yang beriarama lagunya yang sudah baku,yaitu seperti Lagu Ayakan dan Jangklong atau sering disebut Kambang Murni.', 'https://www.youtube.com/watch?v=6geDNIel3DU', 17, '2018-04-09 17:17:59', '2018-04-09 17:17:59'),
(18, 'Tari Kejei', 'Tari Kejei merupakan kesenian rakyat Rejang yang dilakukan pada setiap musim panen raya datang. Tarian Kejei tersebut dimainkan oleh para muda-mudi di pusat-pusat desa pada malam hari di tengah-tengah penerangan lampion. Kekhasan tari ini adalah alat-alat musik pengiringnya terbuat dari bambu, seperti kulintang, seruling dan gong. Tarian dimainkan sekelompok orang yang membentuk lingkaran dengan berhadap-hadapan searah menyerupai jarum jam. Tarian ini pertama kali dicatat oleh seorang pedagang Pasee, bernama Hassanuddin Al-Pasee yang berniaga ke Bengkulu pada tahun 1468. Tapi, ada pula keterangan dari Fhathahillah Al Pasee, yang pada tahun 1532 berkunjung ke Bengkulu.\r\n\r\nTari Kejei dipercaya sudah ada sebelum kedatangan para biku dari Majapahit. Sejak para biku datang, alat musiknya diganti dengan alat dari logam, seperti yang digunakan sampai saat ini. Acara kejei dilakukan dalam masa yang panjang, bisa sampai 9 bulan, 3 bulan, 15 hari atau 3 hari berturut-turut. Tari ini adalah tarian sakral yang diyakini masyarakat mengandung nilai-nilai mistik,sehingga hanya dilaksanakan masyarakat Rejang Lebong dalam acara menyambut para biku,perkawinan dan adat marga. Pelaksanaan tari ini disertai pemotongan kerbau atau sapi sebagai syaratnya.', 'https://www.youtube.com/watch?v=0mr6kkQ2PNk', 18, '2018-04-11 05:24:09', '2018-04-11 05:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `status`, `avatar`, `token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pradipta', 'nyomanpradipta120@gmail.com', 2, 1, '1524972550.png', 'Zqe4HqSmHo', '$2y$10$ZZjZAZtir4VcEpqTEBb4ju2mCIJUfEh2fgFf.30.767h2mEUnMm9y', 'Yyj6QD4Iz2Yk3AWpoXvjmsyrT4lVbL6GQfMf5f1PuglvWlyE8H9N0nWm7xnv', '2018-03-30 07:41:17', '2018-05-05 05:55:10'),
(2, 'Paulus', 'paulusbsimanjuntak@gmail.com', 2, 1, '1525455722.JPG', 'G4ZCg2Wlzc', '$2y$10$HZQNNW0HvhlxErTtU/Jcre9vO10MiLiG0QTlJOZO/IDuwANrwHmB.', 'wTJ7iVe6e0W5bf7uWZGi5oziNlMrSgZOOkiNIMKsH0joT33LGxm9XJZE8iZ0', '2018-03-30 07:41:45', '2018-05-04 10:36:54'),
(3, 'Desak Sutrisni', 'desakputusutrisni@ymail.com', 1, 1, 'default.png', 'h8o9mz7HDl', '$2y$10$klmNixgQhOPrWt167si0KOLJrA5l2tYA9Micz6gYIoJbTmqn0zgSW', 'ZjkM3RTub9PZcKLZXbgUHo7O7l2De8yjBoO3yQZLnrmu2v5EtdgNAwLSSoa5', '2018-03-31 04:49:14', '2018-03-31 04:49:32'),
(4, 'test', 'test@gmail.com', 1, 1, 'default.png', 'CvPxjRbfGN', '$2y$10$tOPhMWl0JobhiDYTpJhAI.LhZds1fvbnngmzHzdaectRu9tIIOby6', 'wkUvnNE2MyB1sSNqKUYcJT6dQzSKlGKRVpkPJDIZwAqgNMlApq7O8QAfF0d0', '2018-04-03 00:46:17', '2018-04-03 00:46:28'),
(5, 'wdq', 'gmani@gmail.com', 1, 0, 'default.png', 'NMoacIgyfQ', '$2y$10$KohB7uufetqwM5ayn2EEHOP6qR/Ek.dOB1asexg9jizeRkgeFsbDu', NULL, '2018-04-03 23:27:51', '2018-04-03 23:27:51'),
(6, 'test23', 'tes@gmail.com', 1, 0, 'default.png', 'MbJrsnihY7', '$2y$10$L4nAM9NPD9geHWUo.aexX.COXwSg3HAkLHSp6A2KGNJPemSoHonNS', NULL, '2018-04-03 23:31:17', '2018-04-03 23:31:17'),
(8, 'jeluda', 'jeluda@gmail.com', 1, 1, '1522837466.jpg', 'bkXnCT3bNz', '$2y$10$s8aQZHc8.xNpz2hngKuTaOahXYfyWA9P9QDSoyQVdT2F25Sp1WVcq', 'RaPm8E1zFZ28tzeKdcTBBwUeFvboCeM3Xm3WCq2h0GdczldKJFDVHCwHHNgp', '2018-04-04 01:41:41', '2018-04-04 02:24:26'),
(9, 'Kuatin ne', 'nosadarsara@gmail.com', 1, 1, '1523436070.jpg', 'tn2uLVkcbs', '$2y$10$toed8brKpPXK8xP.ZB0SQul2JZbQMdnd0e7JsV2KlMayU4Qhwasz6', 'DiMHFf6axWPwXpU8okJRiJilr2uXlQGKYvcrkHdFc7U3yFTkkxch1KXXxTZV', '2018-04-11 00:39:16', '2018-04-11 00:50:53'),
(11, 'testuser', 'simanjuntak113@gmail.com', 1, 1, '1523453116.jpg', 'hURSWalZyS', '$2y$10$zyheaLpyeDLB6Hk56ggELO.NrYGK263UsLW.ocyYNJx2tQLecapuC', '3Ve1y3oRgIKBsjRgodKApn1vCEh7dq6QleLQdbRRpRLf6kl9MVdTFLM959UO', '2018-04-11 05:20:16', '2018-04-11 05:25:16'),
(12, 'gusade', 'gusadeetrn@gmail.com', 1, 0, 'default.png', 'c9bMHEW0fQ', '$2y$10$U6KcHrh.NJvCuwAt2ntBOOJTuKA70I0RFrdjnCaO5s4b0YpiW9/yW', NULL, '2018-04-13 03:02:42', '2018-04-13 03:02:42'),
(13, 'Kusuma Jaya', 'kusumatangwan@gmail.com', 1, 1, 'default.png', 'XmLxyJOUd9', '$2y$10$3sDlvqZzHq3wlkfuoTnE7.ydIPTmehquQzNf4Kmbd8yZ/PXqBj/YS', 'sLCQ8Dxy8Ez42jUELG1KAWANpeiw2xi3WJ9J3tC3oi02flUZyMEoLeOtipB2', '2018-04-30 03:33:17', '2018-05-04 23:52:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahasas`
--
ALTER TABLE `bahasas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bahasas_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_posting_id_foreign` (`posting_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `kabupatens`
--
ALTER TABLE `kabupatens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kabupatens_provinsi_id_foreign` (`provinsi_id`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lokasis_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `makanans`
--
ALTER TABLE `makanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `makanans_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `musics_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `pakaians`
--
ALTER TABLE `pakaians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pakaians_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `postings`
--
ALTER TABLE `postings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postings_user_id_foreign` (`user_id`),
  ADD KEY `postings_kabupaten_id_foreign` (`kabupaten_id`);

--
-- Indeks untuk tabel `provinsis`
--
ALTER TABLE `provinsis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rumahs`
--
ALTER TABLE `rumahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rumahs_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `senjatas`
--
ALTER TABLE `senjatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senjatas_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `tarians`
--
ALTER TABLE `tarians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tarians_posting_id_foreign` (`posting_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahasas`
--
ALTER TABLE `bahasas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kabupatens`
--
ALTER TABLE `kabupatens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT untuk tabel `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `makanans`
--
ALTER TABLE `makanans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `pakaians`
--
ALTER TABLE `pakaians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `postings`
--
ALTER TABLE `postings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `provinsis`
--
ALTER TABLE `provinsis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `rumahs`
--
ALTER TABLE `rumahs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `senjatas`
--
ALTER TABLE `senjatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tarians`
--
ALTER TABLE `tarians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bahasas`
--
ALTER TABLE `bahasas`
  ADD CONSTRAINT `bahasas_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kabupatens`
--
ALTER TABLE `kabupatens`
  ADD CONSTRAINT `kabupatens_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsis` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lokasis`
--
ALTER TABLE `lokasis`
  ADD CONSTRAINT `lokasis_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `makanans`
--
ALTER TABLE `makanans`
  ADD CONSTRAINT `makanans_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `musics`
--
ALTER TABLE `musics`
  ADD CONSTRAINT `musics_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pakaians`
--
ALTER TABLE `pakaians`
  ADD CONSTRAINT `pakaians_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rumahs`
--
ALTER TABLE `rumahs`
  ADD CONSTRAINT `rumahs_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `senjatas`
--
ALTER TABLE `senjatas`
  ADD CONSTRAINT `senjatas_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tarians`
--
ALTER TABLE `tarians`
  ADD CONSTRAINT `tarians_posting_id_foreign` FOREIGN KEY (`posting_id`) REFERENCES `postings` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
