<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/stel.css">
   <link rel="stylesheet" href="css/swiper-bundle.min.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about us</h3>
   <p> <a href="home.php">Home</a> / About </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/about-img.jpg" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p>Our website features an extensive catalog of books across various genres, ensuring that you'll find something to suit your reading preferences, no matter how niche. <br>
         We're not just a store; we're a meeting place for book lovers. Engage in discussions, attend author signings, or join one of our book clubs to connect with fellow enthusiasts.
         </p>
         <a href="https://wa.link/8ax3cx" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">User's reviews</h1>
   <div class="slide-container swiper">
            <div class="slide-content">
                <div class="card-wrapper swiper-wrapper">

                    <div class="card swiper-slide">

                        <div class="card-content">
                        <img src="images/Panji.jpeg" alt="" class="card-img">
                            <h2 class="name">Panji</h2>
                            <p class="description">I love everything about this website! The layout is intuitive, making it easy to find what I'm looking for, and the detailed book descriptions help me make informed decisions. I've also enjoyed participating in the online book club discussions. It's like having a virtual book club right at my fingertips. Keep up the excellent work</p>

                            <div class="stars">
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="card swiper-slide">

                        <div class="card-content">
                        <img src="images/usup.jpeg" alt="" class="card-img">
                            <h2 class="name">Yusuf</h2>
                            <p class="description">I stumbled upon this bookstore website while searching for a rare edition of my favorite novel, and I'm so glad I did! Not only did they have the book I was looking for, but their customer service was exceptional. <br>Fast shipping and excellent packaging. In conclusion, I Love this Website. Highly recommend</p>

                            <div class="stars">
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="card swiper-slide">

                        <div class="card-content">
                        <img src="images/syachrul.jpeg" alt="" class="card-img">
                            <h2 class="name">Syachrul</h2>
                            <p class="description">As an avid reader, I'm always on the lookout for new books to add to my collection. This bookstore website has become my go-to destination. Their selection is extensive, their prices are competitive, and the checkout process is seamless. <br>Plus, the community features are a fantastic. easy 5 stars</p>

                            <div class="stars">
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="card swiper-slide">

                        <div class="card-content">
                        <img src="images/adit.jpeg" alt="" class="card-img">
                            <h2 class="name">Adit</h2>
                            <p class="description">I recently ordered a set of books from this website, and I couldn't be happier with the experience. The books arrived earlier than expected, and they were meticulously packaged to ensure they arrived in perfect condition. It's clear that the team behind this website cares about their customers. I'll definitely be a repeat customer</p>

                            <div class="stars">
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="card swiper-slide">

                        <div class="card-content">
                        <img src="images/rais.jpeg" alt="" class="card-img">
                            <h2 class="name">Rais</h2>
                            <p class="description">This website is a book lover's paradise! From the vast selection of titles to the user-friendly interface, everything about it is designed with readers in mind. I appreciate the special deals and promotions they offer, making it even more affordable to indulge in my reading habit. Highly recommend checking them out</p>

                            <div class="stars">
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="card swiper-slide">

                        <div class="card-content">
                        <img src="images/rasen.jpeg" alt="" class="card-img">
                            <h2 class="name">Rasen</h2>
                            <p class="description">I've been buying books from this website for years, and they never disappoint. Whether I'm looking for the latest bestseller or a hard-to-find classic, they always have what I need. Their customer service is top-notch, and I appreciate the attention to detail they put into every order. you'll love shopping here!</p>

                            <div class="stars">
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                             <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="swiper-button-next swiper-navBtn"></div>
            <div class="swiper-button-prev swiper-navBtn"></div>
    </div>

   <br>
</section>

<section class="authors">

   <h1 class="title">goat authors</h1>

   <div class="box-container">

   <div class="box">
         <img src="images/nhd.jpg" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>N.H Dini</h3>
      </div>

      <div class="box">
         <img src="images/pat.jpg" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>Pramoedya Ananta Toer</h3>
      </div>

      <div class="box">
         <img src="images/lsc.jpg" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/leilachudori/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>Leila S. Chudori</h3>
      </div>

      <div class="box">
         <img src="images/trly.png" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/tereliyewriter/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>Tere Liye</h3>
      </div>

      <div class="box">
         <img src="images/jp.png" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>Joko Pinurbo</h3>
      </div>

      <div class="box">
         <img src="images/ah.jpg" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/hirataandrea/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>Andrea Hirata</h3>
      </div>

      <div class="box">
         <img src="images/dl.jpg" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/deelestari/" class="fab fa-instagram"></a>
            <a href="https://facebook.com" class="fab fa-linkedin"></a>
         </div>
         <h3>Dewi "Dee" Lestari</h3>
      </div>

      <div class="box">
         <img src="images/ek.jpg" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://x.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>Eka Kurniawan</h3>
      </div>

      <div class="box">
         <img src="images/rs.jpg" alt="">
         <div class="share">
            <a href="https://facebook.com" class="fab fa-facebook-f"></a>
            <a href="https://facebook.com" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/rintiksedu/" class="fab fa-instagram"></a>
            <a href="https://facebook.com" class="fab fa-linkedin"></a>
         </div>
         <h3>Rintik Sedu</h3>
      </div>

   </div>

</section>







<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>
    <!-- Swiper JS -->
    <script src="js/swiper-bundle.min.js"></script>

    <!-- JavaScript -->
    <script src="js/scriptswiper.js"></script>

</body>
</html>