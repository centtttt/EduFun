<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Article;
use App\Models\Writer;

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Article::create([
            'title' => 'Machine Learning',
            'writer_id' => '1',
            'imageURL' => '/Images/ml.jpg',
            'category' => 'Data Science',
            'published_date' => '2024-01-30',
            'content' => 'Machine learning adalah cabang kecerdasan buatan (AI) yang memungkinkan sistem untuk belajar dari data dan meningkatkan kinerja tanpa perlu diprogram secara eksplisit. Dalam machine learning, algoritma digunakan untuk mengidentifikasi pola dari sejumlah besar data, kemudian menggunakan pola tersebut untuk membuat prediksi atau mengambil keputusan di masa depan. Terdapat beberapa jenis machine learning, seperti supervised learning, di mana model dilatih menggunakan data berlabel; unsupervised learning, yang tidak menggunakan label dan bertujuan menemukan struktur data; serta reinforcement learning, yang melatih model berdasarkan hasil dari aksi yang dilakukan dalam suatu lingkungan tertentu. Implementasi machine learning saat ini sudah banyak digunakan, misalnya dalam rekomendasi produk pada platform e-commerce, deteksi penipuan di perbankan, dan analisis sentimen di media sosial.',
            'click_count' => random_int(1, 100)
        ]);
        Article::create([
            'title' => 'Deep Learning',
            'writer_id' => '1',
            'imageURL' => '/Images/dl.jpg',
            'category' => 'Data Science',
            'published_date' => '2024-05-26',
            'content' => 'Deep learning adalah cabang dari machine learning yang berfokus pada penggunaan jaringan saraf tiruan dengan banyak lapisan untuk memproses data dan mengambil pola yang kompleks. Berbeda dengan algoritma machine learning tradisional, deep learning mampu menangani data dalam jumlah besar dan beragam seperti gambar, teks, dan suara. Ini karena deep learning menggunakan jaringan saraf dalam yang tersusun dari lapisan-lapisan neuron buatan. Setiap lapisan dalam jaringan tersebut mengekstrak fitur yang semakin abstrak dari data, mulai dari pola sederhana hingga pola yang kompleks. Misalnya, dalam pengenalan gambar, lapisan awal dapat mendeteksi garis atau tepi, sementara lapisan lebih dalam mampu mengenali objek yang lebih kompleks. Dengan model seperti Convolutional Neural Network (CNN) dan Recurrent Neural Network (RNN), deep learning telah membawa revolusi di berbagai bidang, seperti pengenalan wajah, penerjemahan bahasa, hingga sistem rekomendasi yang lebih akurat.',
            'click_count' => random_int(1, 100)
        ]);
        Article::create([
            'title' => 'Natural Language Processing',
            'writer_id' => '2',
            'imageURL' => '/Images/nlp.jpg',
            'category' => 'Data Science',
            'published_date' => '2024-06-01',
            'content' => 'Natural Language Processing (NLP) adalah bidang kecerdasan buatan yang berfokus pada interaksi antara komputer dan bahasa manusia. NLP menggabungkan teknik linguistik, pemrosesan data, dan pembelajaran mesin untuk memungkinkan komputer memahami, menganalisis, dan menafsirkan bahasa manusia secara efektif. Proses NLP melibatkan berbagai tahapan, seperti tokenisasi, stemming, lemmatization, dan analisis sintaksis, yang memungkinkan mesin memproses kata-kata menjadi unit yang dapat dianalisis. Selain itu, NLP juga melibatkan penerapan teknik pembelajaran mendalam, seperti Recurrent Neural Networks (RNN) dan Transformer, untuk meningkatkan akurasi dalam tugas-tugas kompleks seperti penerjemahan otomatis, analisis sentimen, dan chatbot. Dengan perkembangan teknologi, NLP memainkan peran penting dalam aplikasi modern, seperti mesin pencarian, asisten virtual, dan analisis opini di media sosial.',
            'click_count' => random_int(1, 100)
        ]);
        Article::create([
            'title' => 'Apa itu Network Security',
            'writer_id' => '3',
            'imageURL' => '/Images/ns.jpg',
            'category' => 'Network Security',
            'published_date' => '2024-01-23',
            'content' => 'Network security adalah praktik untuk melindungi integritas, kerahasiaan, dan ketersediaan jaringan dan data yang ada di dalamnya dari ancaman atau akses yang tidak sah. Hal ini mencakup berbagai langkah, mulai dari perangkat keras hingga perangkat lunak, seperti firewall, enkripsi data, sistem deteksi intrusi, dan pemantauan aktivitas jaringan. Keamanan jaringan menjadi sangat penting dalam dunia digital saat ini, di mana ancaman seperti serangan malware, phishing, dan DDoS dapat merusak infrastruktur, mencuri informasi sensitif, atau bahkan melumpuhkan operasi bisnis. Dengan menerapkan langkah-langkah keamanan yang efektif, organisasi dapat melindungi aset digital mereka, menjaga kepercayaan pelanggan, dan memastikan kelangsungan operasional di tengah ancaman yang semakin kompleks.',
            'click_count' => random_int(1, 100)
        ]);
        Article::create([
            'title' => 'Software Security',
            'writer_id' => '3',
            'imageURL' => '/Images/ss.jpg',
            'category' => 'Network Security',
            'published_date' => '2024-08-12',
            'content' => 'Keamanan perangkat lunak mengacu pada praktik, langkah-langkah, dan teknik yang dirancang untuk melindungi aplikasi dan sistem perangkat lunak dari ancaman dan kerentanan keamanan. Keamanan perangkat lunak melibatkan upaya memastikan bahwa perangkat lunak tahan terhadap serangan seperti akses tidak sah, pelanggaran data, dan manipulasi jahat. Komponen utama keamanan perangkat lunak meliputi praktik pengodean yang aman, penilaian kerentanan rutin, enkripsi, dan autentikasi pengguna. Dengan menggabungkan langkah-langkah keamanan di seluruh siklus pengembangan, dari desain hingga penerapan, pengembang dapat mengurangi risiko dan melindungi data sensitif. Seiring berkembangnya ancaman siber, keamanan perangkat lunak harus terus beradaptasi, mengintegrasikan teknologi dan strategi keamanan canggih untuk melindungi dari risiko yang muncul.',
            'click_count' => random_int(1, 100)
        ]);
        Article::create([
            'title' => 'Popular Network Technology',
            'writer_id' => '3',
            'imageURL' => '/Images/pnt.jpg',
            'category' => 'Network Security',
            'published_date' => '2024-06-11',
            'content' => 'Teknologi jaringan yang populer merupakan komponen penting dalam sistem komunikasi dan komputasi modern. Teknologi ini memungkinkan transmisi data, konektivitas, dan berbagi sumber daya yang lancar di seluruh perangkat dan jaringan. Contoh yang menonjol termasuk Wi-Fi, yang menyediakan akses internet nirkabel dalam jarak pendek hingga menengah, dan Ethernet, teknologi jaringan kabel yang banyak digunakan untuk jaringan area lokal (LAN). Teknologi utama lainnya adalah 5G, generasi kelima teknologi jaringan seluler, yang menawarkan internet berkecepatan tinggi dan latensi rendah untuk perangkat seluler dan IoT. Selain itu, komputasi awan bergantung pada teknologi jaringan untuk menghubungkan pengguna ke server dan penyimpanan jarak jauh, yang memungkinkan manajemen data yang dapat diskalakan dan efisien. Teknologi ini terus berkembang, membentuk masa depan komunikasi digital dan memengaruhi industri di seluruh dunia.',
            'click_count' => random_int(1, 100)
        ]);
    }
}
