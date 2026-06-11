$products = @(
  @{ ID="6613"; Model="66"; Name="1.0L / 1.3L / 1.6L / 1.9L"; Category="airpot"; CatDisplay="Airpot" },
  @{ ID="6616"; Model="66"; Name="2.5L / 3.0L / 3.5L / 4.0L / 4.5L / 5.0L"; Category="airpot"; CatDisplay="Airpot" },
  @{ ID="6619E"; Model="66E"; Name="1.9L / 2.2L / 2.5L / 3.0L"; Category="airpot"; CatDisplay="Airpot" },
  @{ ID="6622E"; Model="68"; Name="2.5L / 3.0L / 3.5L / 4.0L"; Category="airpot"; CatDisplay="Airpot" },
  @{ ID="6625E"; Model="67"; Name="2.5L / 3.0L / 3.5L / 4.0L"; Category="airpot"; CatDisplay="Airpot" },
  @{ ID="8620"; Model="86"; Name="2.0L Vacuum Jug"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="8810"; Model="88"; Name="1.0L / 1.5L / 2.0L"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="8820"; Model="88"; Name="1.0L / 1.5L / 2.0L"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="W8710"; Model="87"; Name="1.0L / 1.5L / 2.0L"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="8710"; Model="W87"; Name="1.0L / 1.5L / 2.0L"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="8515"; Model="85"; Name="1.5L / 2.0L Coffee Pot"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="9515"; Model="99"; Name="1.2L / 1.5L / 2.0L Vacuum Jug"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="89075"; Model="89"; Name="0.75L / 1.0L / 1.5L / 2.0L"; Category="coffee"; CatDisplay="Coffee Pot" },
  @{ ID="8910"; Model="78"; Name="0.6L / 0.8L / 1.0L / 1.2L / 1.5L / 2.0L"; Category="coffee"; CatDisplay="Coffee Pot" },
  @{ ID="8320"; Model="83"; Name="2.0L / 3.0L Vacuum Jug"; Category="vacuum"; CatDisplay="Vacuum Jug" },
  @{ ID="9420"; Model="94"; Name="2.0L / 3.0L Vacuum Jug"; Category="vacuum"; CatDisplay="Vacuum Jug" }
)

foreach ($p in $products) {
  $id = $p.ID
  $model = $p.Model
  $name = $p.Name
  $cat = $p.Category
  $catDisplay = $p.CatDisplay

  $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$name - Model $model | BaoAo Vacuum Flask &amp; Airpot</title>
  <meta name="description" content="Model $model $catDisplay - $name. Professional stainless steel vacuum flask and airpot manufacturer. OEM/ODM service available.">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap');

    :root {
      --text-primary: #1d1d1f;
      --text-secondary: #6e6e73;
      --text-tertiary: #86868b;
      --bg-white: #ffffff;
      --bg-gray: #f5f5f7;
      --bg-dark: #000000;
      --blue: #0071e3;
      --blue-hover: #0077ed;
      --border-light: rgba(0,0,0,0.08);
      --shadow-sm: 0 2px 8px rgba(0,0,0,0.04);
      --shadow-md: 0 4px 20px rgba(0,0,0,0.06);
      --shadow-lg: 0 8px 40px rgba(0,0,0,0.08);
      --radius-sm: 12px;
      --radius-md: 18px;
      --radius-lg: 24px;
    }

    * { margin: 0; padding: 0; box-sizing: border-box; }
    html { scroll-behavior: smooth; }

    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'SF Pro Display', 'SF Pro Text', 'Helvetica Neue', sans-serif;
      color: var(--text-primary);
      background: var(--bg-white);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    .container { max-width: 1080px; margin: 0 auto; padding: 0 24px; }

    header {
      position: fixed; top: 0; left: 0; right: 0; z-index: 9999;
      background: rgba(255,255,255,0.72);
      backdrop-filter: saturate(180%) blur(20px);
      -webkit-backdrop-filter: saturate(180%) blur(20px);
      border-bottom: 1px solid rgba(0,0,0,0.06);
    }
    header .container { display: flex; align-items: center; justify-content: space-between; height: 52px; }
    .logo { display: flex; align-items: center; gap: 10px; text-decoration: none; color: var(--text-primary); }
    .logo-name { font-size: 15px; font-weight: 600; letter-spacing: -0.3px; }
    nav { display: flex; gap: 28px; }
    nav a { color: var(--text-secondary); text-decoration: none; font-size: 13px; font-weight: 400; transition: color 0.3s; }
    nav a:hover { color: var(--text-primary); }
    .lang-links { display: flex; gap: 4px; }
    .lang-links-a { display: inline-block; padding: 4px 10px; border-radius: 980px; font-size: 12px; font-weight: 500; text-decoration: none; color: var(--text-secondary); transition: all 0.3s; border: 1px solid transparent; }
    .lang-links-a:hover { background: var(--bg-gray); }
    .lang-links-a.active { background: var(--text-primary); color: #fff; }

    .back-link {
      display: inline-flex; align-items: center; gap: 6px;
      color: var(--blue); text-decoration: none; font-size: 14px; font-weight: 500;
      margin-bottom: 32px; transition: color 0.3s;
    }
    .back-link:hover { color: var(--blue-hover); text-decoration: underline; }

    .product-detail { padding: 100px 0 60px; background: var(--bg-white); }
    .product-layout { display: grid; grid-template-columns: 1fr 1fr; gap: 64px; align-items: start; }

    .carousel-wrapper { position: relative; }
    .carousel {
      position: relative; overflow: hidden; border-radius: var(--radius-lg);
      background: var(--bg-gray); aspect-ratio: 1 / 1;
    }
    .carousel-track {
      display: flex; transition: transform 0.5s cubic-bezier(0.25, 0.46, 0.45, 0.94);
      height: 100%;
    }
    .carousel-slide {
      min-width: 100%; height: 100%; display: flex; align-items: center; justify-content: center;
    }
    .carousel-slide img {
      width: 100%; height: 100%; object-fit: contain; padding: 32px;
    }
    .carousel-btn {
      position: absolute; top: 50%; transform: translateY(-50%);
      width: 40px; height: 40px; border-radius: 50%;
      background: rgba(255,255,255,0.85); backdrop-filter: blur(10px);
      border: 1px solid rgba(0,0,0,0.08); cursor: pointer;
      display: flex; align-items: center; justify-content: center;
      font-size: 18px; color: var(--text-primary); z-index: 10;
      transition: all 0.3s; box-shadow: var(--shadow-sm);
    }
    .carousel-btn:hover { background: #fff; box-shadow: var(--shadow-md); }
    .carousel-btn-prev { left: 12px; }
    .carousel-btn-next { right: 12px; }
    .carousel-dots {
      display: flex; justify-content: center; gap: 8px; margin-top: 20px;
    }
    .carousel-dot {
      width: 8px; height: 8px; border-radius: 50%;
      background: var(--border-light); border: none; cursor: pointer;
      transition: all 0.3s;
    }
    .carousel-dot.active { background: var(--text-primary); transform: scale(1.2); }

    .product-info { padding-top: 8px; }
    .product-category {
      font-size: 13px; font-weight: 600; color: var(--blue);
      letter-spacing: 0.5px; text-transform: uppercase; margin-bottom: 8px;
    }
    .product-model {
      font-size: clamp(32px, 4vw, 48px); font-weight: 700; color: var(--text-primary);
      letter-spacing: -0.03em; line-height: 1.1; margin-bottom: 12px;
    }
    .product-name {
      font-size: 21px; color: var(--text-secondary); line-height: 1.5;
      font-weight: 300; margin-bottom: 32px;
    }
    .product-specs {
      background: var(--bg-gray); border-radius: var(--radius-md); padding: 28px;
    }
    .product-specs h3 {
      font-size: 13px; font-weight: 600; color: var(--text-tertiary);
      letter-spacing: 0.5px; text-transform: uppercase; margin-bottom: 16px;
    }
    .spec-list { list-style: none; }
    .spec-list li {
      display: flex; align-items: center; gap: 12px;
      padding: 12px 0; border-bottom: 1px solid var(--border-light);
      font-size: 15px; color: var(--text-primary);
    }
    .spec-list li:last-child { border-bottom: none; }
    .spec-list li::before {
      content: ''; width: 6px; height: 6px; border-radius: 50%;
      background: var(--blue); flex-shrink: 0;
    }
    .product-cta { margin-top: 32px; }
    .btn-apple {
      display: inline-flex; align-items: center; gap: 6px; padding: 12px 28px; border-radius: 980px;
      font-size: 15px; font-weight: 500; text-decoration: none; transition: all 0.3s;
      cursor: pointer; border: none; font-family: inherit; letter-spacing: -0.2px;
    }
    .btn-blue { background: var(--blue); color: #fff; }
    .btn-blue:hover { background: var(--blue-hover); transform: scale(1.02); }

    .detail-section { padding: 80px 0 120px; background: var(--bg-white); }
    .detail-section .section-header { text-align: center; margin-bottom: 56px; }
    .section-eyebrow { font-size: 14px; font-weight: 600; color: var(--blue); letter-spacing: -0.2px; margin-bottom: 12px; }
    .section-headline { font-size: clamp(32px, 5vw, 56px); font-weight: 700; color: var(--text-primary); letter-spacing: -0.03em; line-height: 1.08; margin-bottom: 16px; }
    .section-subhead { font-size: 19px; color: var(--text-secondary); line-height: 1.5; max-width: 600px; font-weight: 300; }
    .detail-section .section-subhead { margin: 0 auto; }
    .detail-images { display: flex; flex-direction: column; gap: 24px; }
    .detail-img-wrap {
      border-radius: var(--radius-lg); overflow: hidden; background: var(--bg-gray);
    }
    .detail-img-wrap img {
      width: 100%; display: block;
    }
    .fade-in {
      opacity: 0; transform: translateY(40px);
      transition: opacity 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94), transform 0.8s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    }
    .fade-in.visible { opacity: 1; transform: translateY(0); }

    footer { background: var(--bg-gray); padding: 48px 0; }
    .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr; gap: 48px; }
    .footer-brand h3 { font-size: 15px; font-weight: 600; margin-bottom: 12px; letter-spacing: -0.2px; }
    .footer-brand p { font-size: 13px; color: var(--text-secondary); line-height: 1.7; }
    .footer-col h4 { font-size: 13px; font-weight: 600; margin-bottom: 12px; color: var(--text-tertiary); letter-spacing: 0.3px; }
    .footer-col a { display: block; color: var(--text-secondary); text-decoration: none; font-size: 13px; margin-bottom: 8px; transition: color 0.3s; }
    .footer-col a:hover { color: var(--text-primary); }
    .footer-bottom { margin-top: 36px; padding-top: 20px; border-top: 1px solid var(--border-light); text-align: center; font-size: 12px; color: var(--text-tertiary); }

    @media (max-width: 768px) {
      nav { display: none; }
      .product-detail { padding: 80px 0 40px; }
      .product-layout { grid-template-columns: 1fr; gap: 40px; }
      .detail-section { padding: 60px 0 80px; }
      .footer-grid { grid-template-columns: 1fr; gap: 32px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container">
    <a href="../../index.html" class="logo">
      <div class="logo-name">BaoAo Vacuum Flask&amp;Airpot Manufacturer</div>
    </a>
    <nav>
      <a href="../../index.html#about">About</a>
      <a href="../../index.html#products">Products</a>
      <a href="../../index.html#process">Process</a>
      <a href="../../index.html#quality">Quality</a>
      <a href="../../index.html#designs">Designs</a>
      <a href="../../news/index.html">News</a>
      <a href="../../index.html#contact">Contact</a>
    </nav>
    <div class="lang-links">
      <a href="../../index.html" class="lang-links-a active">EN</a>
      <a href="../../index-pt.html" class="lang-links-a">PT</a>
      <a href="../../index-es.html" class="lang-links-a">ES</a>
    </div>
  </div>
</header>

<section class="product-detail">
  <div class="container">
    <a href="../../index.html#products" class="back-link">&larr; Back to Products</a>
    <div class="product-layout">
      <div class="carousel-wrapper fade-in">
        <div class="carousel" id="carousel">
          <div class="carousel-track" id="carouselTrack">
            <div class="carousel-slide"><img src="square/01.jpg" alt="$id - View 1"></div>
            <div class="carousel-slide"><img src="square/02.jpg" alt="$id - View 2"></div>
            <div class="carousel-slide"><img src="square/03.jpg" alt="$id - View 3"></div>
          </div>
          <button class="carousel-btn carousel-btn-prev" id="prevBtn" aria-label="Previous">&#8249;</button>
          <button class="carousel-btn carousel-btn-next" id="nextBtn" aria-label="Next">&#8250;</button>
        </div>
        <div class="carousel-dots" id="carouselDots">
          <button class="carousel-dot active" data-index="0" aria-label="Slide 1"></button>
          <button class="carousel-dot" data-index="1" aria-label="Slide 2"></button>
          <button class="carousel-dot" data-index="2" aria-label="Slide 3"></button>
        </div>
      </div>
      <div class="product-info fade-in">
        <p class="product-category">$catDisplay</p>
        <h1 class="product-model">Model $model</h1>
        <p class="product-name">$name</p>
        <div class="product-specs">
          <h3>Available Capacities</h3>
          <ul class="spec-list" id="specList"></ul>
        </div>
        <div class="product-cta">
          <a href="../../index.html#contact" class="btn-apple btn-blue">Get a Quote</a>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="detail-section">
  <div class="container">
    <div class="section-header fade-in">
      <p class="section-eyebrow">Product Details</p>
      <h2 class="section-headline">Model $model Features</h2>
      <p class="section-subhead">Explore the design and craftsmanship of the Model $model $catDisplay series.</p>
    </div>
    <div class="detail-images" id="detailImages">
      <div class="detail-img-wrap fade-in"><img src="detail/01.jpg" alt="$id Detail 1"></div>
      <div class="detail-img-wrap fade-in"><img src="detail/02.jpg" alt="$id Detail 2"></div>
      <div class="detail-img-wrap fade-in"><img src="detail/03.jpg" alt="$id Detail 3"></div>
    </div>
  </div>
</section>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand"><h3>Jiangmen BaoAo Hardware Appliances Manufactor</h3><p>Add: Chuang Yi Xin Wu Jin Chang Xi Bei (Jiang Du Dong Lu Bei), Peng Jiang Qu, Guang Dong Sheng, China</p></div>
      <div class="footer-col"><h4>Product Series</h4><a href="../../index.html#products">Airpot</a><a href="../../index.html#products">Vacuum Jug</a><a href="../../index.html#products">Coffee Pot</a></div>
      <div class="footer-col"><h4>Services</h4><a href="../../index.html#about">OEM/ODM Service</a><a href="../../index.html#about">ODM Custom Design</a><a href="../../index.html#about">Stock Wholesale</a><a href="../../index.html#designs">Custom Patterns</a></div>
    </div>
    <div class="footer-bottom">&copy; 2024 Jiangmen BaoAo Hardware Appliances Manufactor. All rights reserved.</div>
  </div>
</footer>

<script>
  (function() {
    var nameText = '$name';
    var specList = document.getElementById('specList');
    var capacities = nameText.split(' / ');
    capacities.forEach(function(cap) {
      var li = document.createElement('li');
      li.textContent = cap.trim();
      specList.appendChild(li);
    });
  })();

  (function() {
    var track = document.getElementById('carouselTrack');
    var slides = track.querySelectorAll('.carousel-slide');
    var dots = document.querySelectorAll('.carousel-dot');
    var prevBtn = document.getElementById('prevBtn');
    var nextBtn = document.getElementById('nextBtn');
    var current = 0;
    var total = slides.length;

    function goTo(index) {
      if (index < 0) index = total - 1;
      if (index >= total) index = 0;
      current = index;
      track.style.transform = 'translateX(-' + (current * 100) + '%)';
      dots.forEach(function(d, i) { d.classList.toggle('active', i === current); });
    }

    prevBtn.addEventListener('click', function() { goTo(current - 1); });
    nextBtn.addEventListener('click', function() { goTo(current + 1); });
    dots.forEach(function(dot) {
      dot.addEventListener('click', function() { goTo(parseInt(this.dataset.index)); });
    });

    var startX = 0;
    var carousel = document.getElementById('carousel');
    carousel.addEventListener('touchstart', function(e) { startX = e.touches[0].clientX; }, { passive: true });
    carousel.addEventListener('touchend', function(e) {
      var diff = startX - e.changedTouches[0].clientX;
      if (Math.abs(diff) > 50) { diff > 0 ? goTo(current + 1) : goTo(current - 1); }
    }, { passive: true });
  })();

  var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) { if (entry.isIntersecting) entry.target.classList.add('visible'); });
  }, { threshold: 0.1 });
  document.querySelectorAll('.fade-in').forEach(function(el) { observer.observe(el); });
</script>

</body>
</html>
"@

  $filePath = "e:\onedrive\vaccumflask\website\public\products\$id\index.html"
  [System.IO.File]::WriteAllText($filePath, $html, [System.Text.Encoding]::UTF8)
  Write-Host "Written: $filePath"
}

Write-Host "`nAll 16 product detail pages created."
