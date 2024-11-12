-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2024 at 11:44 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalberita`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Formula 1', NULL, NULL),
(8, 'Football', NULL, NULL),
(9, 'Badminton', NULL, NULL),
(10, 'MotoGP', NULL, NULL),
(12, 'Basketball', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(13, 17, 1, 'Forza Ferrari!!', '2024-11-12 02:42:54', '2024-11-12 02:42:54'),
(14, 19, 1, 'Visca Barca', '2024-11-12 02:43:27', '2024-11-12 02:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_07_043339_create_table_name', 1),
(6, '2024_11_07_044510_create_categories_table', 1),
(7, '2024_11_07_044759_create_profiles_table', 1),
(8, '2024_11_07_044819_create_news_table', 1),
(9, '2024_11_07_045701_create_comments_table', 1),
(10, '2024_11_07_050148_create_replies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `thumbnail`, `category_id`, `created_at`, `updated_at`) VALUES
(17, 'F1 GP Amerika Serikat: Leclerc Kendalikan Balapan, Norris Dihukum', 'Charles Leclerc meraih kemenangan ketiganya musim ini setelah finis terdepan di Circuit of the Americas (COTA). Ferrari menempatkan dua pembalapnya di podium. Sementara, Lando Norris ketinggalan posisi ketiga karena penalti lima detik dalam pertarungan sengit dengan Max Verstappen.\r\n\r\nPembalap Monako melakukan start dengan cepat dan menerkam duo barisan depan Max Verstappen dan Lando Norris yang sedang bertarung, memotong bagian dalam Tikungan 1 dan makin cepat melintasi setiap kelokan.\r\n\r\nDia segera mengumpulkan keunggulan 1,6 detik di akhir lap pertama untuk menangkal ancaman Verstappen dengan DRS, karena pembalap Belanda itu diuntungkan oleh pendekatan konservatif dari Norris di tikungan pertama sehingga dapat merebut posisi kedua.\r\n\r\nLeclerc kemudian harus bertahan dari tekanan Verstappen setelah safety car keluar di pertengahan lap ketiga, yang disebabkan oleh Lewis Hamilton yang melintir di Tikungan 18 dan membuat mobil Mercedes-nya meluncur ke gravel untuk menutup akhir pekan yang panas.\r\n\r\nMeskipun Verstappen terjebak dengan Leclerc saat restart, pembalap Ferrari itu berhasil melewati Red Bull melalui Tikungan 2-8 untuk memastikan tidak ada ancaman dari belakang.\r\n\r\nSetelah melaju jauh ke dalam balapan dengan strategi satu stop, yang terbukti menjadi taktik paling populer, Leclerc keluar dari pit setelah berhenti di lap ke-26 di belakang McLaren yang sudah berlari jauh ketika Norris dan Oscar Piastri berusaha untuk mengumpulkan offset ban ke tahap akhir balapan.\r\n\r\nLeclerc kembali memimpin setelah duo McLaren masuk pit, tetapi kini ia mengambil alih posisi rekan setimnya, Carlos Sainz. Pembalap Spanyol itu berhasil mengatasi masalah tenaga yang terjadi sebelumnya untuk tetap berada di belakang Verstappen dan kemudian melemahkan Red Bull dengan berhenti empat putaran lebih cepat.', '1731410255.png', 7, '2024-11-12 02:17:35', '2024-11-12 02:17:35'),
(18, 'Race F1 GP Italia: Leclerc Menang di Kandang, Strategi McLaren Kacau', 'embalap Monako berhasil bertahan dari Oscar Piastri yang mendekat dengan cepat, yang memiliki ban yang jauh lebih segar berkat strategi dua stop, dan melewati garis dengan keunggulan 2,884 detik. Ia membuat para penonton terus bersorak di lap-lap akhir ketika strategi taktisnya makin terlihat.\r\n\r\nLeclerc tampaknya akan mengikuti rombongan dengan menggunakan strategi dua-stop, sebuah keputusan yang awalnya ia pertanyakan saat Ferrari merespons upaya undercut dari pembalap terdepan, Lando Norris.\r\n\r\nNorris terlihat seperti telah mengatasi goyangannya di lap pertama dengan start bersih untuk menyalip rekan setimnya, Piastri, tetapi dikejutkan dengan upaya menyalip Piastri di sisi luar Variante della Roggia. Hal ini membuat pembalap Inggris tersebut keluar dari jalurnya, sehingga Leclerc juga dapat mendahuluinya.\r\n\r\nMeskipun pembalap Ferrari itu tidak dapat terus terkoneksi dengan Piastri, menjadi jelas bahwa tingkat keausan ban secara keseluruhan membawa balapan ke wilayah dua pemberhentian, sebuah strategi yang dipilih oleh McLaren dengan pit stop pembukaan yang relatif lebih awal. Leclerc kehilangan posisi lintasan karena reaksinya yang lebih cepat dari yang diperkirakan terhadap Norris, tetapi secara krusial berhasil mempertahankan performa ban.\r\n\r\nMcLaren kemudian bertanya kepada Piastri apakah dia bisa melakukan satu kali pit stop, pembalap Australia itu merespons dengan negatif.\r\n\r\nDengan tidak ada Ferrari yang berhenti lagi, Carlos Sainz berhasil melakukan perannya dalam menjaga Piastri untuk beberapa putaran sehingga Leclerc memiliki lebih banyak penyangga untuk dimainkan.\r\n\r\nHal ini berujung pada beberapa lap terakhir yang memukau dengan Piastri yang terus mengejar keunggulan pembalap Ferrari dengan keunggulan ban yang cukup besar - tetapi, pada akhirnya, hal itu tidak cukup. Leclerc justru memicu gelombang euforia di sekitar sirkuit Monza.\r\n\r\nPiastri mengakui bahwa \"menyakitkan\" untuk finis di urutan kedua, mencatat bahwa masalah graining yang menimpa McLaren mungkin bisa diatasi dengan lebih banyak putaran. Tapi, tetap saja ia telah memangkas jarak yang mencapai 11,9 detik setelah melewati Sainz menjadi 2,7 detik hanya dalam sembilan putaran.\r\n\r\nNorris naik ke posisi ketiga, setelah tidak menduga langkah Piastri di tikungan pertama; keduanya diberi izin untuk balapan, tetapi Norris tidak dapat mendekati rekan setimnya sepanjang balapan - terutama karena dihalangi oleh pembalap yang berlawanan dengan strateginya, Max Verstappen, ketika pembalap Belanda itu berusaha untuk membantu perjuangannya dalam perebutan gelar juara.\r\n\r\nSainz mencapai batas kemampuan bannya meskipun memiliki keunggulan empat lap atas Leclerc, kehilangan kesempatan untuk naik podium dari kedua McLaren di akhir balapan, namun tetap memiliki margin yang cukup untuk tetap berada di depan Lewis Hamilton di posisi kelima.\r\n\r\nJuara F1 tujuh kali itu berhasil menangkal serangan awal dari Verstappen yang membuatnya berada di posisi kelima, saat pembalap Red Bull itu mengalami pemberhentian yang lambat. George Russell pulih dari kecelakaan di lap pertama, setelah terjepit oleh Piastri di awal, dan kerusakan pada sayap depan untuk finis di urutan ketujuh.\r\n\r\nPembalap Inggris ini bertarung dengan Sergio Perez dengan penuh semangat dan berhasil melewati pertahanan kuat pembalap Meksiko tersebut. Alex Albon menempati peringkat kesembilan, meskipun setelah finis di belakang Kevin Magnussen dalam perjalanan. Pembalap asal Denmark ini mendapat penalti 10 detik karena bentrokan kecil dengan Pierre Gasly. Kedua pembalap ini mengakhiri strategi satu putaran untuk meraih poin. \r\n\r\nFernando Alonso hanya gagal masuk 10 besar dengan selisih 0,143 detik saat penalti Magnussen diterapkan, sementara Franco Colapinto menyelesaikan balapan F1 pertamanya di urutan ke-12.', '1731410442.png', 7, '2024-11-12 02:20:42', '2024-11-12 02:20:42'),
(19, 'Lionel Messi Legenda, tapi Lamine Yamal Juga Bukan Kaleng-Kaleng!', 'Lionel Messi akan selalu jadi legenda terbesar Barcelona. Sosoknya tidak tergantikan. Dia telah membuktikan diri selama lebih dari 15 tahun, selalu gemilang saat turun ke lapangan. Kini, ada Lamine Yamal yang mengikuti.\r\n\r\nCerita Messi bersama tim inti Barca dimulai saat ia berusia 17 tahun, ketika ia menjalani debut resmi di La Liga melawan Espanyol di Montjuic, mengenakan nomor punggung 30.\r\n\r\nKini, Lamine Yamal mencapai usia yang sama, tepat beberapa jam setelah ia tampil gemilang melawan Espanyol di stadion yang sama.\r\n\r\nDebut Yamal bersama Barcelona terjadi saat usianya baru 15 tahun 9 bulan, melawan Real Betis. Sejak itu, permainannya terus berkembang dan statistiknya semakin mencengangkan.\r\n\r\nYamal kini memegang beberapa rekor, di antaranya sebagai pencetak gol termuda sepanjang masa Barcelona, pencetak gol termuda di La Liga, Copa del Rey, dan Piala Super Spanyol.\r\n\r\nIa juga menjadi pencetak gol termuda kedua di Liga Champions, dan pekan lalu ia mencetak sejarah sebagai pemain termuda yang mencetak gol dalam laga El Clasico pada usia 17 tahun 105 hari.\r\n\r\nPada usia ketika Messi baru memulai debutnya, Yamal sudah memiliki 83 penampilan bersama tim utama Barcelona dengan koleksi 13 gol dan 17 assist. Ia juga telah memenangi Kopa Trophy dan penghargaan Pemain Terbaik Bulan Ini di La Liga.\r\n\r\nTak hanya gemilang di level klub, Yamal juga sudah menjadi andalan di Tim Nasional Spanyol. Ia berperan penting dalam keberhasilan Spanyol menjuarai Euro 2024 dan terpilih sebagai pemain muda terbaik dalam turnamen tersebut.\r\n\r\nDengan tiga gol dan delapan assist untuk La Roja, ia kini menjadi pilihan utama di bawah pelatih Luis de la Fuente, dan di usia muda, ia telah menegaskan posisinya sebagai salah satu pemain masa depan Spanyol.', '1731410792.jpg', 8, '2024-11-12 02:26:32', '2024-11-12 02:26:32'),
(20, 'Kena Tendangan Keras, Wajah Pau Cubarsi Sampai Robek dan harus Dijahit', 'Pau Cubarsi jadi salah satu korban di balik kemenangan Barcelona. Dia harus menerima 10 jahitan di wajah, setelah menerima tendangan keras lawan di area wajah sebelah kanan.\r\n\r\nKamis 7 November 2024, Barcelona menyambangi Red Star Belgrade di Red Star Stadium dalam matchday 4 Liga Champions 2024/2025. Barcelona menang dengan skor telak 5-2, performa impresif lainnya dari skuad Hansi Flick.\r\n\r\nCubarsi mengalami insiden ketika ia berani mengejar bola di babak kedua, namun malah terkena tendangan di wajah hingga terjatuh. Rekan-rekan setimnya segera memanggil tim medis untuk memberikan penanganan cepat kepada pemain muda tersebut.\r\n\r\nCedera yang dialami Cubarsi terlihat cukup parah, sehingga ia tidak dapat melanjutkan pertandingan.\r\n\r\nCubarsi bahkan tampak berlumuran darah saat meninggalkan lapangan, meskipun kabar baiknya ia masih bisa berjalan keluar tanpa perlu tandu. Sergi Dominguez kemudian masuk sebagai penggantinya untuk sisa pertandingan.\r\n\r\nPau Cubarsi langsung dibawa ke ruang ganti bersama tim medis usai insiden cedera wajah yang dialaminya. Menurut laporan Mundo Deportivo, pemain berusia 17 tahun ini harus menerima 10 jahitan untuk menutup luka tersebut.\r\n\r\nMeski momen itu cukup mengerikan bagi Cubarsi, ada kabar baik bahwa ia sudah mendapatkan penanganan dan diharapkan kondisinya semakin membaik.\r\n\r\nPelatih Barcelona, Hansi Flick, juga memberikan update positif mengenai keadaan Cubarsi usai kemenangan 5-2 atas Red Star Belgrade Belgrade.\r\n\r\n“Cubarsi baik-baik saja, dia hanya punya bekas luka. Dia masih muda dan akan cepat pulih,” ujar Flick kepada wartawan.', '1731410945.jpg', 8, '2024-11-12 02:29:05', '2024-11-12 02:29:05'),
(21, 'Jika Juara MotoGP, Martin Bisa Samai Torehan Rossi', 'Jorge Martín hampir mencapai tujuannya. Setelah memimpin klasemen MotoGP hampir sepanjang musim, pembalap Pramac tersebut berpeluang meraih gelar juara dunia pertamanya akhir pekan ini di  Montmelo, yang menggantikan Valencia.\r\n\r\nSetelah kesalahan yang dilakukan rivalnya, Francesco Bagnaia, pada Sprint Race MotoGP Malaysia, dan setelah pertarungan sengit di lap-lap awal pada balapan utama hari Minggu, pembalap Spanyol ini tiba di Circuit de Barcelona-Catalunya dengan keunggulan 24 poin.\r\n\r\nIni berarti ia bisa menjadi juara paling cepat pada Sabtu (16/11/2024), dalam balapan singkat terakhir musim ini. Jika Martin unggul atas sang juara bertahan dengan total mencapai 26 poin.\r\n\r\nDengan demikian, Martín berada di ambang sejarah di kelas utama. Setelah kehilangan gelar pada 2023 dari pembalap pabrikan Ducati, tahun ini, ia dapat menjadi juara dunia pertama dengan tim satelit di seluruh era MotoGP, yaitu sejak motor berat menggantikan motor 500 cc pada 2002.\r\n\r\nPerlu diingat bahwa Pramac Racing berhasil memenangi juara umum tim musim lalu, dari struktur independen. Namun, pembalap skuad satelit yang mampu jadi kampiun, terakhir kali terjadi pada 2001, 23 tahun yang lalu, atas nama Valentino Rossi.\r\n\r\nPada tahun pertamanya di kelas utama, 2000, The Doctor mengendarai NSR500 milik tim Nastro Azzurro. Pembalap Italia ini kehilangan mahkota juara kepada Kenny Roberts Jr. Makin kenal dengan karakter motor berat, Rossi pun tak kenal ampun di musim keduanya.\r\n\r\nDengan dominasi yang luar biasa (ia memenangkan 11 dari 16 balapan), sang mitos #46 menutup gelar ketiganya, gelar pertama bersama para \'senior\'. Dia harus melakukannya di tim yang sama, karena posisi Repsol Honda ditempati oleh Alex Criville, di musim terakhirnya sebelum pensiun, dan Tohru Ukawa.\r\n\r\nNamun, perlu diingat bahwa Nastro Azzurro berstatus semi-resmi, karena materi yang disediakan oleh HRC adalah \'pata negra\'. Pembalap Italia itu sendiri memiliki orang-orang yang pernah bekerja dengan Mick Doohan, juara antara 1994 dan 1998, dan pensiun pada tahun 2000.\r\n\r\nSebelum itu, empat pembalap lain pernah menjadi juara di kelas utama 500 cc bersama tim non-pabrikan. Yang pertama adalah Kenny Roberts Sr. Pembalap asal California yang dijuluki \'King Kenny\' ini tampil memukau. Pada 1978, juga membalap di kelas 250 cc, ia mampu mencuri kemenangan Barry Sheene di atas motor satelit sebagai rookie Yamaha USA.\r\n\r\nHal ini terjadi setelah perusahaan yang berbasis di Iwata tersebut mulai memberikan materi lebih terbatas kepadanya, meskipun mereka akhirnya mendukungnya. Ia kemudian menang pada 1979 (masih bersama tim Amerika) dan 1980.\r\n\r\nDua kasus juara lainnya di luar tim pabrikan terjadi setelahnya. Pada tahun 1981 dan 1982, Marco Lucchinelli dan Franco Uncini merajai kompetisi dengan mengendarai Suzuki RG500 dari tim satelit Nava Gallina, yang dipimpin oleh Roberto Gallina, mantan pembalap era 1970-an.\r\n\r\nKasus terakhir sebelum Rossi adalah Eddie Lawson. Pembalap asal California ini merupakan kasus yang istimewa, karena pada 1980-an ia menjadi juara 500 cc bersama tim Marlboro Yamaha (pabrikan) pada 1984, 1986 dan 1988.\r\n\r\nNamun pada 1989, ia beralih ke Honda, karena tidak dapat menemukan slot tim pabrikan, karena kursi NSR500 diduduki oleh Wayne Gardner dan Mick Doohan. Namun, cedera serius yang dialami mantan pembalap tersebut di Laguna Seca membuat HRC memberikan dukungan lebih kepada \'Steady Eddie\', yang pindah ke Rothmans-Honda. Di sanalah ia menyegel kesuksesan keempatnya, sebelum era Wayne Rainey tiba.', '1731411062.png', 10, '2024-11-12 02:31:02', '2024-11-12 02:31:02'),
(22, 'Acosta Bidik Podium di Barcelona dan Label Rider KTM Terbaik', 'Pedro Acosta tiba di Grand Prix terakhir musim ini di posisi kelima dalam klasemen kejuaraan secara keseluruhan usai mengemas 209 poin. Ia tepat di belakang Ducati Jorge Martín, Pecco Bagnaia, Marc Marquez, dan Enea Bastianini, menjadi motor pertama yang bukan berasal dari Bologna.\r\n\r\nDalam MotoGP Solidaritas di Barcelona, peraih titel Rookie of the Year tersebut harus berjuang hingga tikungan terakhir untuk mempertahankan posisinya, karena Brad Binder (KTM) berada di belakangnya dengan selisih tiga poin. Maverick Vinales, ancaman berikutnya, berada di urutan ketujuh dengan 189 poin, tertinggal 20 poin dari pembalap GasGas Tech3.\r\n\r\nMempertahankan posisi kelima adalah tujuan utama Acosta untuk Gran Premio Solidario de Barcelona, yang berlangsung akhir pekan ini di Circuit de Barcelona, yang akan menjadi tuan rumah putaran penutup kejuaraan setelah pembatalan acara di Valencia karena badai dan banjir di wilayah tersebut.\r\n\r\nPemuda 20 tahun itu memanfaatkan waktu istirahat selama seminggu antara balapan terakhir di Sepang dan seri berikutnya di Montmelo.\r\n\r\n\"Kami telah beristirahat setelah berada di separuh Asia, jadi senang rasanya bisa kembali ke rumah,\" kata juara dunia Moto3 dan Moto2 tersebut, yang tidak berhenti berlatih. \"Kami akan pergi ke Barcelona untuk putaran terakhir, ini adalah sirkuit yang saya sukai, dan di mana saya merasa nyaman dan kompetitif.\"\r\n\r\nAcosta telah menyelesaikan tahun pertama yang spektakuler di kelas utama, dengan 5 podium pada balapan hari Minggu dan 4 podium pada balapan sprint, termasuk P3 di Barcelona, GP de Catalunya, akhir Mei lalu.\r\n\r\nTerlepas dari angka-angka yang bagus untuk seorang rookie non-Ducati, ia ingin menyelesaikan tahun ini dengan ambisi.\r\n\r\n\"Tujuan utamanya adalah menyelesaikan musim ini sebagai motor terbaik untuk Pierer Mobility (grup KTM), dan jika bisa naik podium di rumah, lebih baik lagi,\" kata Hiu dari Mazarrron itu.\r\n\r\nHal yang sulit dihindari oleh Acosta adalah mengakhiri tahun pertamanya di MotoGP sebagai pembalap yang paling sering terjatuh musim ini, sebuah daftar yang ia pimpin dengan 26 kecelakaan, dua lebih banyak dari Marc Marquez. Alex Marquez, dengan 20 kecelakaan, melengkapi podium, yang juga mencakup Jack Miller dan Aleix Espargaro dengan masing-masing 19 kecelakaan.', '1731411158.png', 10, '2024-11-12 02:32:38', '2024-11-12 02:32:38'),
(23, 'Hasil Kumamoto Masters Japan 2024 - Tikungan Mendebarkan Fikri/Daniel Hentikan Wakil Taiwan 1 Tingkat di Atas Mereka', 'BOLASPORT.COM - Pasangan ganda putra Indonesia, Muhammad Shohibul Fikri/Daniel Marthin, melaju ke babak kedua Kumamoto Masters Japan 2024.\r\n\r\nMenghadapi Chen Zhi Ray/Lin Yu Chieh (Taiwan) yang 1 tingkat di atas mereka dalam peringkat di Kumamoto Prefectural Gymnasium, Kumamoto, Jepang, Selasa (12/11/2024), Fikri/Daniel menang, 21-13, 16-21, 21-17.\r\n\r\nPasangan peringkat ke-42 dunia itu unggul 1-0 atas Chen/Lin yang ada di peringkat ke-41 dunia dalam pertemuan pertama antara kedua pasang pemain.\r\n\r\nFikri/Daniel mengawali gim pertama dengan keunggulan.\r\n\r\nChen/Lin kewalahan mengejar langkah Fikri/Daniel hingga interval.\r\n\r\nFikri/Daniel yang sudah memegang kendali permainan berhasil memastikan gim ini menjadi milik mereka.\r\n\r\nPada gim kedua, Chen/Lin berbalik memimpin, 14-8.\r\n\r\nFikri/Daniel mendekat, 12-14. Perlahan mereka mengejar ketinggalan, 13-14.\r\n\r\nNamun, pengembalian Fikri yang keluar membuat Chen/Lin menjauh.', '1731411427.jpg', 9, '2024-11-12 02:37:07', '2024-11-12 02:37:07'),
(24, 'Kumamoto Masters Japan 2024 - Alwi Ungkap Penyebab Sempat Tertinggal 3-8 Sebelum Comeback', 'Perjuangan Alwi dalam mengawali turnamen Kumamoto Masters Japan 2024 itu tidak mudah.\r\n\r\nHarus merangkak dari babak kualifikasi lebih dulu, tunggal putra Indonesia berusia 18 tahun itu justru langsung menemui kesulitan.\r\n\r\nMenghadapi wakil tuan rumah Shogo Ogawa, Alwi start dengan buruk.\r\n\r\nMeski pada akkhirnga menang dengan skor 21-16, 21-14, Juara Dunia Junior 2023 itu belum lega.\r\n\r\n\"Pertandingan pertama pasti sulit, baik saya maupun lawan masih melihat kondisi dan situasi lapangan seperti apa,\" kata Alwi dalam keterangan resmi PBSi.\r\n\r\n\"Di awal juga tadi saya kurang bisa bermain dengan tenang,\" ujarnya.\r\n\r\nPerubahan baru terlihat setelah momen interval.', '1731411512.jpg', 9, '2024-11-12 02:38:32', '2024-11-12 02:38:32'),
(25, 'LeBron James Disentil Mantan Juara UFC Usai Dapatkan Medali Emas dan Jadi MVP Olimpiade Paris 2024', 'Satu kesuksesan kembali didapatkan LeBron James dalam perjalanan kariernya sebagai seorang pemain basket profesional dunia.\r\n\r\nPemain milik LA Lakers tersebut baru saja membantu Amerika Serikat meraih medali emas basket pada ajang Olimpiade Paris 2024 belum lama ini.\r\n\r\nOlimpiade Paris 2024 sendiri merupakan olimpiade pertama bagi LeBron james setelah absen selama 12 tahun sejak Olimpiade London 2012.\r\n\r\nMedali emas didapatkan setelah LeBron membantu Amerika Serikat mengalahkan tuan rumah Prancis di laga final dengan skor 98-87.\r\n\r\nDi laga puncak tersebut, pemain berusia 39 tahun itu menorehkan total 14 poin, 10 asist, enam rebound dan dua steal dari total 33 menit permainannya.\r\n\r\nTak hanya medali emas, LeBron James juga menorehkan pencapaian individu dalam Olimpiade Paris 2024 dengan keluar sebagai MVP.\r\n\r\nGelar sebagai Most Valuable Player atau pemain terbaik ini didapatkan James lantaran dia dianggap memiliki peran penting bagi Amerika Serikat.\r\n\r\nSelain MVP, James juga masuk dalam Olimpiade All-Star Five bersama rekannya Stephen Curry.', '1731411620.jpg', 12, '2024-11-12 02:40:20', '2024-11-12 02:40:20'),
(26, 'Sudahi Dahaga, Pelita Jaya Jakarta Segel Titel Juara IBL 2024', 'Kemenangan yang dramatis ini diraih setelah mengalahkan rival sekotanya, Satria Muda Pertamina Jakarta , di final dengan skor 2-1.\r\n\r\nSetelah mengalami kekalahan di gim pertama, Pelita Jaya Bakrie Jakarta bangkit dengan semangat juang yang luar biasa dan memenangkan dua laga berikutnya.\r\n\r\nPada gim ketiga yang menentukan, Pelita Jaya meraih kemenangan dengan skor 73-65.\r\n\r\nIni adalah gelar keempat dalam sejarah Pelita Jaya Bakrie Jakarta, yang semakin mengukuhkan posisi mereka sebagai tim terbaik di IBL.\r\n\r\nSelain itu, kemenangan ini juga memastikan Pelita Jaya lolos ke FIBA Basketball Champions League (BCL) Asia qualifiers 2025.\r\n\r\nDi mana, pada musim sebelumnya Pelita Jaya berhasil duduk di 5 Besar Asia , menjadi kesempatan kedua Pelita Jaya membawa nama Indonesia di kancah Internasional.\r\n\r\nPerforma cemerlang dari Muhammad Arighi menjadi sorotan dalam final ini. Arighi mencetak 13 poin dalam 23 menit bermain.\r\n\r\nPelita Jaya Bakrie Jakarta telah mencapai final tiga musim berturut-turut, sebelum akhirnya musim 2024 meraih gelar juara.', '1731411713.jpg', 12, '2024-11-12 02:41:53', '2024-11-12 02:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `age` int NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `age`, `bio`, `address`, `photo_profile`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 18, 'Just Human', 'Timika', '1731220624.jpg', 1, '2024-11-09 03:38:41', '2024-11-09 21:37:04'),
(2, 18, 'Only god know me', 'Timika', '1731284593.jpg', 2, '2024-11-09 03:52:02', '2024-11-10 15:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(12, 13, 1, 'yepp, go charles', '2024-11-12 02:43:08', '2024-11-12 02:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `table_name`
--

CREATE TABLE `table_name` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cire', 'seyra@gmail.com', NULL, '$2y$10$7uW6OXTETCZsu.EEGzhdpexZsHerzTtiG6kBP5dvsqyqSjR7Mi0HG', NULL, '2024-11-09 03:38:41', '2024-11-09 03:38:41'),
(2, 'Sera', 'seyra1@gmail.com', NULL, '$2y$10$JyyGNouV4jbDjtRJkNX.yuOcN33yQWzFxHg/GyR/TTakdIsCVF1pS', NULL, '2024-11-09 03:52:02', '2024-11-09 03:52:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_news_id_foreign` (`news_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_foreign` (`comment_id`),
  ADD KEY `replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `table_name`
--
ALTER TABLE `table_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table_name`
--
ALTER TABLE `table_name`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`),
  ADD CONSTRAINT `replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
