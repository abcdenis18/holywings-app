String homeText = "What would you like\nto eat today?";
String popular = "Popular for you";
String recommend = "Recommend for you";
String viewAll = "View All";
String searchTxt = "Search an article...";

List<String> categories = [
    "All",
    "Foods",
    "Sports",
    "Health",
    "Technology"
  ];

List<String> urlBanner = [
  "https://t3.ftcdn.net/jpg/03/08/62/46/240_F_308624602_fdfR9rDbMCqe5xF6ODEKrjv1kcOFe8yA.jpg",
  "https://t3.ftcdn.net/jpg/02/81/50/18/240_F_281501867_XI5OBa4UuGVxMbv5gNLCcCkPDjsX6r0U.jpg",
  "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555352834/shape/mentalfloss/smokydrinkshed.jpg"
];

List<Map<String, dynamic>> popularFoods = [
  {
    'name' : 'Cripsy Chicken Burger',
    'fav' : 4.8,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg',
    'type' : 'chicken'
  },
  {
    'name' : 'Black Pepper Gyudon',
    'fav' : 4.6,
    'price' : 65,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://3.bp.blogspot.com/-SYdASLvSIic/WJn5m6ubUQI/AAAAAAAAf4g/0WHrvD3k804SMsJ-KF_yq4sBwMNlTLJWgCLcB/s1600/SAM_4628.jpg',
    'type' : 'beef'
  },
  {
    'name' : 'Salted Egg Chicken',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/08/salted-egg-yolk-fried-chicken-recipe-4606w-500x500.jpg',
    'type' : 'chicken'
  },
  {
    'name' : 'Apple Lime Mojito',
    'fav' : 4.8,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2016/12/9/1/original-sam-henderson-apple-mojito1.jpg.rend.hgtvcom.1280.1707.suffix/1481298554585.jpeg',
    'type' : 'cocktail'
  },
  {
    'name' : 'Chamisul',
    'fav' : 4.9,
    'price' : 145,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://media.karousell.com/media/photos/products/2019/02/08/jinro_chamisul_soju_original_korea_berat_072kg_botol_kadar_alkohol_178__original_soju__green_grape___1549627087_02d8e253_progressive.jpg',
    'type' : 'beer'
  },
];

List<Map<String, dynamic>> recommendFoods = [
  {
    'name' : 'Chamisul',
    'fav' : 4.9,
    'price' : 145,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://media.karousell.com/media/photos/products/2019/02/08/jinro_chamisul_soju_original_korea_berat_072kg_botol_kadar_alkohol_178__original_soju__green_grape___1549627087_02d8e253_progressive.jpg',
    'type' : 'beer'
  },
  {
    'name' : 'Salted Egg Chicken',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/08/salted-egg-yolk-fried-chicken-recipe-4606w-500x500.jpg',
    'type' : 'chicken'
  },
  {
    'name' : 'Apple Lime Mojito',
    'fav' : 4.8,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2016/12/9/1/original-sam-henderson-apple-mojito1.jpg.rend.hgtvcom.1280.1707.suffix/1481298554585.jpeg',
    'type' : 'cocktail'
  },
  {
    'name' : 'Cripsy Chicken Burger',
    'fav' : 4.8,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg',
    'type' : 'chicken'
  },
  {
    'name' : 'Black Pepper Gyudon',
    'fav' : 4.6,
    'price' : 65,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://3.bp.blogspot.com/-SYdASLvSIic/WJn5m6ubUQI/AAAAAAAAf4g/0WHrvD3k804SMsJ-KF_yq4sBwMNlTLJWgCLcB/s1600/SAM_4628.jpg',
    'type' : 'beef'
  },
];

List<Map<String, dynamic>> articles = [
  {
    "title" : "Tips Bikin Cimol Kenyal Pakai Tepung Tapioka",
    "content" : "Sous chef Teraskita Hotel Jakarta Managed by Dafam Heru Sudrajat menjelaskan mengenai pemilihan tepung untuk membuat cimol. Menurutnya, bahan utamanya tepung tapioka. Penggunaan tepung tapioka dalam membuat cimol bisa diganti dengan tepung sagu.",
    "imgUrl" : "https://asset.kompas.com/crops/SIXoPmLVoPpJjt2_q32iQltxAb4=/0x107:1280x960/750x500/data/photo/2021/02/25/60378d59efaa3.jpg",
    "date" : '9 March 2021',
    'type' : 'Foods'
  },
  {
    "title" : "McDonald\'s Bagi-bagi Sarapan Gratis",
    "content" : "\"National Breakfast Day atau NBD adalah sebuah momen penting bagi McDonald’s. Kami adalah satu-satunya restoran yang secara konsisten selama sembilan tahun ini melakukan kampanye tentang pentingnya sarapan,\" kata Associate Director of Communications McDonald’s Indonesia, Sutji Lantyka lewat jumpa pers virtual, Senin (8/3/2021).",
    "imgUrl" : "https://asset.kompas.com/crops/0IqaDEhhxUPKI6RqgPlVwmMsOi8=/935x351:4986x3051/750x500/data/photo/2021/03/08/6045de7f92907.jpg",
    "date" : '9 March 2021',
    'type' : 'Foods'
  },
  {
    "title" : "8 Cara Menghilangkan Muka Berminyak",
    "content" : "Sebum adalah zat berminyak yang terbuat dari lemak. Zat ini dihasilkan tubuh bukannya tanpa alasan. Gunanya untuk menjaga kelembaban kulit. Namun, produksi sebum berlebihan bisa menyebabkan beragam masalah kulit seperti yang sudah disinggung di atas. Banyak faktor yang bisa menyebabkan kulit muka berminyak. Antara lain genetika, perubahan hormon, pola makan, sampai stres.",
    "imgUrl" : "https://asset.kompas.com/crops/F5cEw2amiFhgcE3H76FJJoPlRlI=/0x0:1000x667/750x500/data/photo/2018/09/12/370856781.jpg",
    "date" : '9 March 2021',
    'type' : 'Health'
  },
  {
    "title" : "5 Manfaat Bermain Puzzle",
    "content" : "Faktanya, banyak riset telah membuktikan bermain puzzle juga memiliki segudang manfaat untuk orang dewasa. Selain mendorong rasa bahagia, bermain puzzle juga bisa mengurangi stres, menciptakan rasa tenang dan tentram. Tentunya, semua itu turut meningkatkan kesehatan mental.",
    "imgUrl" : "https://asset.kompas.com/crops/k8mfWuFCaSuTv-3IUNvo0IRG4A0=/82x11:1465x932/750x500/data/photo/2021/03/07/604470ee71ff8.jpeg",
    "date" : '9 March 2021',
    'type' : 'Health'
  },
  {
    "title" : "Prediksi Dortmund vs Sevilla di Liga Champions",
    "content" : "Jakarta, CNN Indonesia -- Borussia Dortmund mengusung modal penting saat menjamu Sevilla pada leg kedua babak 16 besar Liga Champions di Signal Iduna Park, Rabu (10/3) dini hari WIB. Hal itu berupa kemenangan 3-2 atas Sevilla pada leg pertama. Dortmund menyambut laga ini dengan kondisi terluka. Die Borussen baru saja takluk 2-4 saat menghadapi Bayern Munchen di kompetisi domestik.",
    "imgUrl" : "https://akcdn.detik.net.id/visual/2021/02/18/sevilla-vs-dortmund-7_169.jpeg?w=650",
    "date" : '9 March 2021',
    'type' : 'Sports'
  },
  {
    "title" : "Pandemi, Piala Dunia Senam Artistik Batal",
    "content" : "Piala Dunia Senam Artistik batal diselenggarakan lantaran pandemi corona. \"Kami membatalkan kejuaraan tersebut,\" kata pernyataan Federasi Senam Internasional (FIG). Sedianya, kegiatan itu berlangsung pada 5 Mei 2021 di Tokyo. ",
    "imgUrl" : "https://asset.kompas.com/crops/IVZAC_lVzIphTyD8oOSnujKt8IQ=/6x6:698x467/750x500/data/photo/2021/01/23/600bcdc5a8cbb.jpg",
    "date" : '9 March 2021',
    'type' : 'Sports'
  },
  {
    "title" : "Teknologi 5G Bukan Sekedar Kecepatan Download",
    "content" : "eknologi seluler generasi kelima, alias 5G memiliki kemampuan yang lebih mumpuni dibanding 4G. Salah satunya adalah kecepatan unduh (download) yang diklaim bisa mencapai 20 Gbps. Namun, tujuan dari teknologi 5G sendiri disebut bukan untuk sekadar menawarkan kecepatan internet ngebut yang bisa dipakai untuk mengunduh dokumen, menonton film, atau bermain game saja.",
    "imgUrl" : "https://asset.kompas.com/crops/GtFAeefZ6dIUH2mgXlDdhqkkdRQ=/166x4:966x538/750x500/data/photo/2018/08/14/3108355128.jpg",
    "date" : '9 March 2021',
    'type' : 'Technology'
  },
  {
    "title" : "Elon Mush Tidur Tak Kurang dari 6 Jam",
    "content" : "Elon Musk memang diketahui memiliki sederet perusahaan teknologi yang perlu ia kelola setiap harinya. Sebut saja perusahaan mobil listrik Tesla dan perusahaan antariksa SpaceX. Tak ayal, ia memiliki sederet urusan yang harus ia tangani setiap harinya. Bahkan, pria kelahiran Afrika Selatan itu mengungkapkan bahwa dirinya kerap melakukan rapat hingga pukul satu atau dua dini hari.",
    "imgUrl" : "https://asset.kompas.com/crops/uEXtsNClr-vfk3iWGapZqQNHef0=/0x0:780x390/750x500/data/photo/2013/10/07/1338316elon-musk780x390.jpg",
    "date" : '9 March 2021',
    'type' : 'Technology'
  },
];

List<Map<String, dynamic>> foodsList = [
  {
    'name' : 'Chicken Wings',
    'fav' : 4.9,
    'price' : 145,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.thechunkychef.com/wp-content/uploads/2017/11/Slow-Cooker-Honey-Buffalo-Wings-feat.jpg',
    'type' : 'chicken',    
  },
  {
    'name' : 'Chicken Katsudon',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/08/salted-egg-yolk-fried-chicken-recipe-4606w-500x500.jpg',
    'type' : 'chicken',    
  },
  {
    'name' : 'Chicken Teriyaki',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/08/salted-egg-yolk-fried-chicken-recipe-4606w-500x500.jpg',
    'type' : 'chicken',    
  },
  {
    'name' : 'Cripsy Thai Chicken',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/08/salted-egg-yolk-fried-chicken-recipe-4606w-500x500.jpg',
    'type' : 'chicken',    
  },
  {
    'name' : 'Salted Egg Chicken',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://iamafoodblog.b-cdn.net/wp-content/uploads/2020/08/salted-egg-yolk-fried-chicken-recipe-4606w-500x500.jpg',
    'type' : 'chicken',    
  },
  {
    'name' : 'Crispy Chicken Skin',
    'fav' : 4.8,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2016/12/9/1/original-sam-henderson-apple-mojito1.jpg.rend.hgtvcom.1280.1707.suffix/1481298554585.jpeg',
    'type' : 'chicken',    
  },
  {
    'name' : 'Cripsy Chicken Burger',
    'fav' : 4.8,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg',
    'type' : 'chicken',    
  },
  {
    'name' : 'Gyutandon',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.nibble.id/wp-content/uploads/2018/04/gyu-tan-don-di-jakarta-01.jpg',
    'type' : 'beef',    
  },
  {
    'name' : 'Black Pepper Gyudon',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/11/12/e42b4843-f5db-4ab7-bbaa-920bc39fb493.jpg',
    'type' : 'beef',    
  },
  {
    'name' : 'Meatball',
    'fav' : 4.7,
    'price' : 15,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://lilluna.com/wp-content/uploads/2019/06/easy-meatball-recipe-resize-5.jpg',
    'type' : 'beef',    
  },
  {
    'name' : 'Sirloin',
    'fav' : 4.8,
    'price' : 58,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.simplybeefandlamb.co.uk/media/1534/bone-in-sirloin-steak-shot.jpg?width=550&height=570&mode=crop',
    'type' : 'beef',    
  },
  {
    'name' : 'Tenderloin',
    'fav' : 4.8,
    'price' : 58,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/2/17/372227262/372227262_7d1d1dfa-3f69-4d6a-9498-76c32dd9fc8a_986_986.jpg',
    'type' : 'beef',    
  },
  {
    'name' : 'Cube Salted Egg Pork',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://hw-media.herworld.com/public/salted_egg_yolk_pork_ribs_d.jpg',
    'type' : 'pork',    
  },
  {
    'name' : 'Pork Belly Sambal Matah',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://64.media.tumblr.com/03c3e55c963335bbc0545c7c72ca42d7/tumblr_owdggbkde31uqratmo1_1280.jpg',
    'type' : 'pork',    
  },
  {
    'name' : 'BBQ Pork Belly',
    'fav' : 4.7,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://glebekitchen.com/wp-content/uploads/2019/08/grilledporkbellyskewersclose.jpg',
    'type' : 'pork',    
  },
  {
    'name' : 'Korean Spicy Pork Belly',
    'fav' : 4.8,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://i2.wp.com/www.spicetheplate.com/wp-content/uploads/2015/02/Korean-style-pan-fried-pork-belly-6.jpg?resize=680%2C1020',
    'type' : 'pork',    
  },
  {
    'name' : 'Ubud Pork Belly',
    'fav' : 4.8,
    'price' : 45,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://media-cdn.tripadvisor.com/media/photo-s/11/c0/63/d5/superb-delicious-giant.jpg',
    'type' : 'pork',    
  },
  {
    'name' : 'Orange',
    'fav' : 4.9,
    'price' : 28,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.vitamix.com/media/other/images/xOrange-Juice-Plus-470x449.jpg.pagespeed.ic.lsJBGHFTad.jpg',
    'type' : 'juice',    
  },
  {
    'name' : 'Pineaple',
    'fav' : 4.7,
    'price' : 28,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://5.imimg.com/data5/LT/XB/MY-28787720/pineapple-drink-500x500.jpg',
    'type' : 'juice',    
  },
  {
    'name' : 'Cranberry',
    'fav' : 4.7,
    'price' : 28,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/cranberries-and-cranberry-juice-200-200-6e1ef46.jpg?quality=90&resize=504,458?quality=90&resize=504,459',
    'type' : 'juice',    
  },
  {
    'name' : 'Apple',
    'fav' : 4.7,
    'price' : 28,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.indianhealthyrecipes.com/wp-content/uploads/2017/03/homemade-apple-juice-recipe-480x270.jpg',
    'type' : 'juice',    
  },
  {
    'name' : 'Red Ruby Lychee',
    'fav' : 4.9,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://assets.punchdrink.com/wp-content/uploads/2019/08/02103754/Article-Suit-and-Tie-Giffard-Fruit-Liqueur-Lychee-Martini-Cocktail-Recipe.jpg',
    'type' : 'cocktail',    
  },
  {
    'name' : 'I Am Peach',
    'fav' : 4.7,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://i0.wp.com/www.imbored-letsgo.com/wp-content/uploads/2020/06/Pomegranate-Peach-Martini-scaled.jpg',
    'type' : 'cocktail',    
  },
  {
    'name' : 'Passion Fever',
    'fav' : 4.7,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://media2.s-nbcnews.com/i/newscms/2016_31/1148618/passion-fruit-cocktail-tease-today-160804_f60428d8efb5ef2177fea6986c2f4315.jpg',
    'type' : 'cocktail',    
  },
  {
    'name' : 'The Green Highlights',
    'fav' : 4.7,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.thespruceeats.com/thmb/dW-pzvVfdRv13WJjl-k41QJKNc0=/1885x1414/smart/filters:no_upscale()/green-melon-japanese-highball-657624482-247e4cf19bcf454c8cdada9a99402865.jpg',
    'type' : 'cocktail',    
  },
  {
    'name' : 'Fantastic',
    'fav' : 4.7,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://media.timeout.com/images/105578544/630/472/image.jpg',
    'type' : 'cocktail',    
  },
  {
    'name' : 'Berry Of My Eye',
    'fav' : 4.8,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://data.thefeedfeed.com/recommended/post_3950819.jpg',
    'type' : 'cocktail',    
  },
  {
    'name' : 'Apple Lime Mojito',
    'fav' : 4.8,
    'price' : 40,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2016/12/9/1/original-sam-henderson-apple-mojito2.jpg.rend.hgtvcom.1280.1707.suffix/1481298560111.jpeg',
    'type' : 'cocktail',    
  },
  {
    'name' : 'Chivas Regal 12 Y.O',
    'fav' : 4.9,
    'price' : 1200,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.whiskyhammer.com/uploads/images/products/large/1542101533IMG_0009.JPG',
    'type' : 'beer',    
  },
  {
    'name' : 'Chivas Regal 18 Y.O',
    'fav' : 4.7,
    'price' : 2800,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//97/MTA-3297382/chivas-brothers_regal-18-gold-signature_full10.jpg',
    'type' : 'beer',    
  },
  {
    'name' : 'Ballantine Finest',
    'fav' : 4.7,
    'price' : 900,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.bigbasket.com/media/uploads/p/xxl/40198444-2_3-ballantines-finest-blended-scotch-whisky.jpg',
    'type' : 'beer',    
  },
  {
    'name' : 'Drambuie',
    'fav' : 4.7,
    'price' : 1000,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://scene7.samsclub.com/is/image/samsclub/0008048030202_B',
    'type' : 'beer',    
  },
  {
    'name' : 'Drambuie 15 Y.O',
    'fav' : 4.7,
    'price' : 110,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://scene7.samsclub.com/is/image/samsclub/0008048030202_B',
    'type' : 'beer',    
  },
  {
    'name' : 'Black Douglas',
    'fav' : 4.8,
    'price' : 750,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/7/3/3148c48a-3bf3-475b-b025-2a9d003dda96.jpg',
    'type' : 'beer',    
  },
  {
    'name' : 'Monkey Shoulder',
    'fav' : 4.8,
    'price' : 1500,
    'desc' : 'Crispy Chicken Burger with Honey Mustard Coleslaw on a toasted brioche bun, with jalapenos and crunchy lettuce. Waaay better than takeout!',
    'imgUrl' : 'https://www.thespiritsbusiness.com/content/http://www.thespiritsbusiness.com/media/2018/11/Monkey-Shoulder.jpg',
    'type' : 'beer',    
  },
];