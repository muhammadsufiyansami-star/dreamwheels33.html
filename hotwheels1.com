<html lang="en"><head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="https://cdn.freebiesupply.com/logos/large/2x/hot-wheels-5-logo-black-and-white.png" type="image/png">
  <title>Luxury Shopify Style</title>

  <style>
    body {
      margin: 0;
      font-family: "Helvetica Neue", Arial, sans-serif;
      background: #111;
      color: #fff;
    }

    /* Header Styling */
    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 20px;
      background: linear-gradient(90deg, #000, #1a1a1a);
      position: sticky;
      top: 0;
      z-index: 1000;
      box-shadow: 0 3px 10px rgba(0,0,0,0.5);
    }

    .logo img {
      height: 45px;
      transition: transform 0.3s ease;
    }

    .logo img:hover {
      transform: scale(1.05);
    }

    .menu-icon img {
      width: 35px;
      height: 35px;
      filter: invert(1);
      cursor: pointer;
      transition: transform 0.3s ease;
    }

    .menu-icon img:hover {
      transform: rotate(90deg);
    }

    /* Mobile Menu */
    .nav-links {
      position: fixed;
      top: 0;
      right: -100%;
      height: 100%;
      width: 75%;
      max-width: 320px;
      background: #000;
      display: flex;
      flex-direction: column;
      padding-top: 80px;
      transition: right 0.4s ease;
      box-shadow: -5px 0 15px rgba(0,0,0,0.6);
    }

    .nav-links a {
      padding: 18px 25px;
      font-size: 18px;
      color: #fff;
      text-decoration: none;
      border-bottom: 1px solid #222;
      transition: color 0.3s, padding-left 0.3s;
    }

    .nav-links a:hover {
      color: gold;
      padding-left: 35px;
    }

    .nav-links .close-btn {
      position: absolute;
      top: 20px;
      right: 20px;
      font-size: 28px;
      color: #fff;
      cursor: pointer;
      transition: color 0.3s;
    }

    .nav-links .close-btn:hover {
      color: gold;
    }

    .nav-active {
      right: 0;
    }

    /* Section Title */
    h1.section-title {
      text-align: center;
      font-weight: bold;
      font-style: italic;
      color: white;
      margin: 30px 0;
      letter-spacing: 2px;
    }

    /* Product Cards */
    .container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 20px;
      max-width: 1200px;
      margin: auto;
      padding: 20px;
    }

    .card {
      background: #fff;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 4px 15px rgba(0,0,0,0.3);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      cursor: pointer;
      color: #000;
    }

    .card:hover {
      transform: translateY(-6px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.4);
    }

    .card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }

    .card-content {
      padding: 15px;
      text-align: center;
    }

    .card-content h3 {
      margin: 10px 0;
      font-size: 1.2rem;
    }

    .card-content p {
      font-size: 0.9rem;
      color: #555;
    }

    .btn {
      display: inline-block;
      margin-top: 10px;
      padding: 10px 15px;
      background: black;
      color: white;
      border-radius: 6px;
      text-decoration: none;
      font-size: 0.9rem;
      transition: background 0.3s ease, transform 0.2s;
    }

    .btn:hover {
      background: gold;
      color: black;
      transform: scale(1.05);
    }

    @media (max-width: 600px) {
      .card img {
        height: 160px;
      }
      .nav-links {
        width: 85%;
      }
    }
  </style>
</head>
<body>

  <!-- Header -->
  <header class="header">
    <a href="#" class="logo">
      <img src="https://logoeps.com/wp-content/uploads/2013/03/hot-wheels-art-vector-logo.png" alt="Luxury Logo">
    </a>
    <div class="menu-icon" onclick="toggleMenu()">
      <img src="https://cdn-icons-png.flaticon.com/128/8765/8765813.png" alt="Menu">
    </div>
  </header>

  <!-- Mobile Menu -->
  <nav id="mobileMenu" class="nav-links">
    <span class="close-btn" onclick="toggleMenu()">×</span>
    <a href="hotwheels1.html">Home</a>
    <a href="shope1.html">Shop</a>
    <a href="parts1.html">Parts</a>
    <a href="contact1.html">Contact</a>
  </nav>

  <script>
    function toggleMenu() {
      document.getElementById("mobileMenu").classList.toggle("nav-active");
    }
  </script>




  
  <nav id="mobileMenu" class="nav-links">
    <span class="close-btn" onclick="toggleMenu()">×</span>
    <a href="hotwheels.html">Home</a>
    <a href="shop.html">Shop</a>
    <a href="parts.html">Parts</a>
    <a href="contact.html">Contact</a>
  </nav>

  <script>
    function toggleMenu() {
      document.getElementById("mobileMenu").classList.toggle("nav-active");
    }
  </script>




 
<header class="hero-section">
  <img src="https://1000logos.net/wp-content/uploads/2020/09/Hot-Wheels-logo.png" alt="Hot Wheels Hero" class="hero">
</header>

<style>
  .hero-section {
    width: 100%;
    overflow: hidden;
    background: #000; /* fallback background */
    text-align: center;
    padding: 20px 0;
  }

  .hero {
    width: 100%;
    height: auto;
    max-width: 900px; /* keeps it from being too large on desktops */
    display: block;
    margin: 0 auto;
  }

  @media (max-width: 768px) {
    .hero {
      max-width: 100%; /* full width on tablets/mobiles */
      padding: 0 10px; /* spacing for small screens */
    }
  }
</style>

  <!-- Section Title -->
  <h1 class="section-title">MODELS</h1>

  <!-- Product Section -->
<div class="container">
  
  <!-- Box 1 -->
  <div class="card">
    <img src="https://carolinasdiecast.com/cdn/shop/files/B19149CC-31C1-414D-82C2-7AA42798DF4C.jpg?v=1733002368&amp;width=1445" alt="Product 1">
    <div class="card-content">
      <h3>Product One</h3>
      <p>Supra mk4 toy model.</p>
      <a href="https://www.daraz.pk/products/164-mk4-usa-i896938348.html?spm=a2a0e.searchlist.list.1.a7337ec0pQEkvw" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>

  <!-- Box 2 -->
  <div class="card">
    <img src="https://www.bigdtoys.com/cdn/shop/products/hot-wheels-mainline-ghf32-tesla-model-3-big-d-toys-622087_600x600_crop_center.jpg?v=1612969013" alt="Product 2">
    <div class="card-content">
      <h3>Product Two</h3>
      <p>Tesla model 3.</p>
      <a href="https://www.daraz.pk/products/-i258420280.html?spm=a2a0e.searchlist.list.13.426c4365tvJyuR" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>

  <!-- Box 3 -->
  <div class="card">
    <img src="https://i.ebayimg.com/images/g/NjgAAOSwYAZldqP5/s-l400.jpg" alt="Product 3">
    <div class="card-content">
      <h3>Product Three</h3>
      <p>Corvette C6.</p>
      <a href="https://www.daraz.pk/products/c6-164-hw-i478316645.html?spm=a2a0e.searchlist.list.7.77c54434OT3M6c" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>

  <!-- Box 4 -->
  <div class="card">
    <img src="https://carolinasdiecast.com/cdn/shop/files/83EEA4AD-4D42-4A87-9D48-5D2F88C65C55.jpg?v=1722801662&amp;width=1946" alt="Product 4">
    <div class="card-content">
      <h3>Product Four</h3>
      <p>BMW M3 Sand.</p>
      <a href="https://www.daraz.pk/products/hot-wheels-92-bmw-m3-i666283456.html?spm=a2a0e.searchlist.list.5.5c3e7556HngHDe" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>

  <!-- Box 5 -->
  <div class="card">
    <img src="https://images.collecthw.com/8deb6059-bf45-4fc0-b083-e29b822c380b_large.jpg" alt="Product 5">
    <div class="card-content">
      <h3>Product Five</h3>
      <p>Bugatti Bolide Sand.</p>
      <a href="https://www.daraz.pk/products/164-i793219859.html?spm=a2a0e.searchlist.list.5.6d132cd2PDHddf" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>

  <!-- Box 6 -->
  <div class="card">
    <img src="https://i.ebayimg.com/images/g/rdgAAOSwP2llo2uw/s-l1200.jpg" alt="Product 6">
    <div class="card-content">
      <h3>Product Six</h3>
      <p>Datsun Sunny Truck.</p>
      <a href="https://www.daraz.pk/products/hot-wheels-premium-75-datsun-sunny-truck-b120-hyper-hauler-series-metal-die-cast-car-100-original-i430323844.html?spm=a2a0e.searchlist.list.9.6df676094eTrW8" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>
  <!-- Box 7 -->
  <div class="card">
    <img src="https://m.media-amazon.com/images/I/51eqhSWs3LL.jpg" alt="Product 7">
    <div class="card-content">
      <h3>Product Seven</h3>
      <p>Subaru BRZ</p>
      <a href="https://www.daraz.pk/products/hot-wheels-subaru-brz-i914331386.html?spm=a2a0e.searchlist.list.17.cdae7e82AeMWWU" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>
  <!-- Box 8 -->
  <div class="card">
    <img src="https://m.media-amazon.com/images/I/717PYOc2NJL._UF894,1000_QL80_.jpg" alt="Product 8">
    <div class="card-content">
      <h3>Product Eight</h3>
      <p>Super Charger Dodge </p>
      <a href="https://www.daraz.pk/products/164-hw-3-i885774307.html?spm=a2a0e.searchlist.list.15.cdae7e82AeMWWU" class="btn" target="_blank">
        <img src="https://cdn-icons-png.flaticon.com/128/891/891462.png" alt="Cart" style="width:16px;height:16px;vertical-align:middle;margin-right:6px;">
        Shop Now
      </a>
    </div>
  </div>

</div>

  <!-- Script -->
  <script>
    function toggleMenu() {
      document.getElementById("mobileMenu").classList.toggle("nav-active");
    }
  </script>
<!-- Footer Section -->
<footer class="footer">
  <div class="footer-container">
    <!-- Logo & About -->
    <div class="footer-col">
      <h2 class="footer-logo">🔥 Hot Wheels</h2>
      <p>Collect. Race. Repeat. Explore our world of die-cast cars and thrilling models.</p>
    </div>

    <!-- Quick Links -->
    <div class="footer-col">
      <h3>Quick Links</h3>
      <ul>
        <li><a href="hotwheels1.html">Home</a></li>
        <li><a href="shope1.html">Shop</a></li>
        <li><a href="parts1.html">Part</a></li>
        <li><a href="contact1.html">Contact</a></li>
      </ul>
    </div>

    <!-- Customer Support -->
    <div class="footer-col">
      <h3>Support</h3>
      <ul>
        <li><a href="faqs.html">FAQs</a></li>
        <li><a href="shipping.html">Shipping &amp; Returns</a></li>
        <li><a href="contact1.html">Contact Us</a></li>
        <li><a href="track.html">Track Order</a></li>
      </ul>
    </div>

    <!-- Social Links -->
    <div class="footer-col">
      <h3>Follow Us</h3>
      <div class="social-icons">
        <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733547.png" alt="Facebook"></a>
        <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733579.png" alt="Instagram"></a>
        <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733635.png" alt="YouTube"></a>
      </div>
    </div>
  </div>

  <div class="footer-bottom">
    <p>© 2025 Hot Wheels. All rights reserved.</p>
  </div>
</footer>

<!-- Footer CSS -->
<style>
.footer {
  background: linear-gradient(135deg, #ff0000, #111);
  color: #fff;
  padding: 40px 20px 20px;
  font-family: Arial, sans-serif;
}

.footer-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 20px;
  max-width: 1200px;
  margin: auto;
}

.footer-col {
  flex: 1 1 220px;
}

.footer-logo {
  font-size: 26px;
  font-weight: bold;
  color: #ffd700;
}

.footer-col h3 {
  margin-bottom: 15px;
  color: #ffd700;
  font-size: 18px;
}

.footer-col ul {
  list-style: none;
  padding: 0;
}

.footer-col ul li {
  margin: 8px 0;
}

.footer-col ul li a {
  color: #fff;
  text-decoration: none;
  transition: color 0.3s;
}

.footer-col ul li a:hover {
  color: #ffd700;
}

.social-icons a img {
  width: 28px;
  margin-right: 10px;
  transition: transform 0.3s;
}

.social-icons a img:hover {
  transform: scale(1.2);
}

.footer-bottom {
  text-align: center;
  margin-top: 25px;
  border-top: 1px solid #444;
  padding-top: 10px;
  font-size: 14px;
  color: #ddd;
}
</style>



</body></html>