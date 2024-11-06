-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 05:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufundb`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `category` enum('Data Science','Network Security') NOT NULL,
  `published_date` date NOT NULL,
  `content` text NOT NULL,
  `click_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `writer_id`, `imageURL`, `category`, `published_date`, `content`, `click_count`, `created_at`, `updated_at`) VALUES
(1, 'Machine Learning', 1, '/Images/ml.jpg', 'Data Science', '2024-01-30', 'Machine learning adalah cabang kecerdasan buatan (AI) yang memungkinkan sistem untuk belajar dari data dan meningkatkan kinerja tanpa perlu diprogram secara eksplisit. Dalam machine learning, algoritma digunakan untuk mengidentifikasi pola dari sejumlah besar data, kemudian menggunakan pola tersebut untuk membuat prediksi atau mengambil keputusan di masa depan. Terdapat beberapa jenis machine learning, seperti supervised learning, di mana model dilatih menggunakan data berlabel; unsupervised learning, yang tidak menggunakan label dan bertujuan menemukan struktur data; serta reinforcement learning, yang melatih model berdasarkan hasil dari aksi yang dilakukan dalam suatu lingkungan tertentu. Implementasi machine learning saat ini sudah banyak digunakan, misalnya dalam rekomendasi produk pada platform e-commerce, deteksi penipuan di perbankan, dan analisis sentimen di media sosial.', 37, '2024-11-06 07:40:49', '2024-11-06 09:38:40'),
(2, 'Deep Learning', 1, '/Images/dl.jpg', 'Data Science', '2024-05-26', 'Deep learning adalah cabang dari machine learning yang berfokus pada penggunaan jaringan saraf tiruan dengan banyak lapisan untuk memproses data dan mengambil pola yang kompleks. Berbeda dengan algoritma machine learning tradisional, deep learning mampu menangani data dalam jumlah besar dan beragam seperti gambar, teks, dan suara. Ini karena deep learning menggunakan jaringan saraf dalam yang tersusun dari lapisan-lapisan neuron buatan. Setiap lapisan dalam jaringan tersebut mengekstrak fitur yang semakin abstrak dari data, mulai dari pola sederhana hingga pola yang kompleks. Misalnya, dalam pengenalan gambar, lapisan awal dapat mendeteksi garis atau tepi, sementara lapisan lebih dalam mampu mengenali objek yang lebih kompleks. Dengan model seperti Convolutional Neural Network (CNN) dan Recurrent Neural Network (RNN), deep learning telah membawa revolusi di berbagai bidang, seperti pengenalan wajah, penerjemahan bahasa, hingga sistem rekomendasi yang lebih akurat.', 40, '2024-11-06 07:40:49', '2024-11-06 07:47:11'),
(3, 'Natural Language Processing', 2, '/Images/nlp.jpg', 'Data Science', '2024-06-01', 'Natural Language Processing (NLP) adalah bidang kecerdasan buatan yang berfokus pada interaksi antara komputer dan bahasa manusia. NLP menggabungkan teknik linguistik, pemrosesan data, dan pembelajaran mesin untuk memungkinkan komputer memahami, menganalisis, dan menafsirkan bahasa manusia secara efektif. Proses NLP melibatkan berbagai tahapan, seperti tokenisasi, stemming, lemmatization, dan analisis sintaksis, yang memungkinkan mesin memproses kata-kata menjadi unit yang dapat dianalisis. Selain itu, NLP juga melibatkan penerapan teknik pembelajaran mendalam, seperti Recurrent Neural Networks (RNN) dan Transformer, untuk meningkatkan akurasi dalam tugas-tugas kompleks seperti penerjemahan otomatis, analisis sentimen, dan chatbot. Dengan perkembangan teknologi, NLP memainkan peran penting dalam aplikasi modern, seperti mesin pencarian, asisten virtual, dan analisis opini di media sosial.', 47, '2024-11-06 07:40:49', '2024-11-06 09:06:50'),
(4, 'Apa itu Network Security', 3, '/Images/ns.jpg', 'Network Security', '2024-01-23', 'Network security adalah praktik untuk melindungi integritas, kerahasiaan, dan ketersediaan jaringan dan data yang ada di dalamnya dari ancaman atau akses yang tidak sah. Hal ini mencakup berbagai langkah, mulai dari perangkat keras hingga perangkat lunak, seperti firewall, enkripsi data, sistem deteksi intrusi, dan pemantauan aktivitas jaringan. Keamanan jaringan menjadi sangat penting dalam dunia digital saat ini, di mana ancaman seperti serangan malware, phishing, dan DDoS dapat merusak infrastruktur, mencuri informasi sensitif, atau bahkan melumpuhkan operasi bisnis. Dengan menerapkan langkah-langkah keamanan yang efektif, organisasi dapat melindungi aset digital mereka, menjaga kepercayaan pelanggan, dan memastikan kelangsungan operasional di tengah ancaman yang semakin kompleks.', 23, '2024-11-06 07:40:49', '2024-11-06 07:47:37'),
(5, 'Software Security', 3, '/Images/ss.jpg', 'Network Security', '2024-08-12', 'Keamanan perangkat lunak mengacu pada praktik, langkah-langkah, dan teknik yang dirancang untuk melindungi aplikasi dan sistem perangkat lunak dari ancaman dan kerentanan keamanan. Keamanan perangkat lunak melibatkan upaya memastikan bahwa perangkat lunak tahan terhadap serangan seperti akses tidak sah, pelanggaran data, dan manipulasi jahat. Komponen utama keamanan perangkat lunak meliputi praktik pengodean yang aman, penilaian kerentanan rutin, enkripsi, dan autentikasi pengguna. Dengan menggabungkan langkah-langkah keamanan di seluruh siklus pengembangan, dari desain hingga penerapan, pengembang dapat mengurangi risiko dan melindungi data sensitif. Seiring berkembangnya ancaman siber, keamanan perangkat lunak harus terus beradaptasi, mengintegrasikan teknologi dan strategi keamanan canggih untuk melindungi dari risiko yang muncul.', 48, '2024-11-06 07:40:49', '2024-11-06 07:49:31'),
(6, 'Popular Network Technology', 3, '/Images/pnt.jpg', 'Network Security', '2024-06-11', 'Teknologi jaringan yang populer merupakan komponen penting dalam sistem komunikasi dan komputasi modern. Teknologi ini memungkinkan transmisi data, konektivitas, dan berbagi sumber daya yang lancar di seluruh perangkat dan jaringan. Contoh yang menonjol termasuk Wi-Fi, yang menyediakan akses internet nirkabel dalam jarak pendek hingga menengah, dan Ethernet, teknologi jaringan kabel yang banyak digunakan untuk jaringan area lokal (LAN). Teknologi utama lainnya adalah 5G, generasi kelima teknologi jaringan seluler, yang menawarkan internet berkecepatan tinggi dan latensi rendah untuk perangkat seluler dan IoT. Selain itu, komputasi awan bergantung pada teknologi jaringan untuk menghubungkan pengguna ke server dan penyimpanan jarak jauh, yang memungkinkan manajemen data yang dapat diskalakan dan efisien. Teknologi ini terus berkembang, membentuk masa depan komunikasi digital dan memengaruhi industri di seluruh dunia.', 30, '2024-11-06 07:40:49', '2024-11-06 07:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_04_063111_create_writer_table', 1),
(5, '2024_11_04_063143_create_article_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('azlmMPBU5x9UISd7xFcoVvLmgzriyqCMnZ9HXfaL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGI2SDVWUFdqb3hJRWI4UnUwTllUcXl6bmd3VXZSdTJ2YnRaQkcybyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2VyL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730911153);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE `writer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` enum('Data Science','Network Security') NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `name`, `category`, `imageURL`, `created_at`, `updated_at`) VALUES
(1, 'Eka Tantri Kuswandari S.T.', 'Data Science', '/Images/writer.jpg', '2024-11-06 07:40:45', '2024-11-06 07:40:45'),
(2, 'Bagya Sitompul', 'Data Science', '/Images/writer.jpg', '2024-11-06 07:40:45', '2024-11-06 07:40:45'),
(3, 'Laila Agustina', 'Network Security', '/Images/writer.jpg', '2024-11-06 07:40:45', '2024-11-06 07:40:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writer`
--
ALTER TABLE `writer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
