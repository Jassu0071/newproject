<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Premium UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
    --bg: #020617;
    --card: rgba(255,255,255,0.05);
    --glass: rgba(255,255,255,0.08);
    --primary: #ffffff;
    --accent: linear-gradient(135deg, #00d4ff, #7c3aed);
    --muted: #94a3b8;
    --radius: 16px;
}

/* GLOBAL */
body {
    margin:0;
    font-family:Inter;
    background: radial-gradient(circle at top, #1e293b, #020617);
    color:white;
}

.container {
    max-width:1200px;
    margin:auto;
    padding:20px;
}

/* HEADER */
header {
    position:sticky;
    top:0;
    background:var(--glass);
    backdrop-filter:blur(14px);
    border-bottom:1px solid rgba(255,255,255,0.1);
}

.header-inner {
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand {
    font-size:22px;
    font-weight:700;
    background:var(--accent);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

/* NAV */
nav ul {
    display:flex;
    gap:20px;
    list-style:none;
}

nav a {
    color:white;
    text-decoration:none;
    transition:.3s;
}

nav a:hover {
    opacity:.7;
}

/* HERO */
.hero {
    text-align:center;
    padding:80px 20px;
    background:
    linear-gradient(180deg, rgba(0,0,0,0.6), rgba(0,0,0,0.8)),
    url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover;
}

.hero h1 {
    font-size:48px;
}

.hero p {
    color:#cbd5f5;
}

/* BUTTON */
.btn {
    padding:12px 20px;
    border-radius:999px;
    border:none;
    cursor:pointer;
}

.btn-primary {
    background:var(--accent);
    color:white;
}

/* GRID */
.grid {
    display:grid;
    gap:20px;
}

/* PRODUCTS */
.products {
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
}

.product {
    background:var(--card);
    backdrop-filter:blur(10px);
    border:1px solid rgba(255,255,255,0.1);
    border-radius:16px;
    overflow:hidden;
    transition:.3s;
}

.product:hover {
    transform:translateY(-8px);
}

.product img {
    width:100%;
    height:200px;
    object-fit:cover;
}

.product-body {
    padding:15px;
}

.price {
    color:#00d4ff;
    font-weight:bold;
}

.add-btn {
    width:100%;
    margin-top:10px;
    padding:10px;
    background:var(--accent);
    border:none;
    color:white;
    cursor:pointer;
}

/* FOOTER */
footer {
    text-align:center;
    padding:20px;
    color:#94a3b8;
}
</style>
</head>

<body>

<header>
<div class="container header-inner">
<div class="brand">NexusShop</div>
<nav>
<ul>
<li><a href="#">Home</a></li>
<li><a href="#">Products</a></li>
<li><a href="#">Deals</a></li>
</ul>
</nav>
</div>
</header>

<section class="hero">
<h1>Premium Collection</h1>
<p>Upgrade your lifestyle with curated products</p>
<button class="btn btn-primary">Shop Now</button>
</section>

<section class="container">
<h2>Products</h2>
<div class="grid products" id="products"></div>
</section>

<footer>
© 2026 NexusShop
</footer>

<script>
const PRODUCTS = [
{title:"iPhone 14 Pro",price:1099,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
{title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
{title:"Headphones",price:399,img:"https://images.unsplash.com/photo-1600185365483"},
{title:"Sneakers",price:150,img:"https://images.unsplash.com/photo-1542272604"}
];

const container = document.getElementById("products");

PRODUCTS.forEach(p=>{
const div=document.createElement("div");
div.className="product";
div.innerHTML=`
<img src="${p.img}">
<div class="product-body">
<h3>${p.title}</h3>
<div class="price">$${p.price}</div>
<button class="add-btn">Add to Cart</button>
</div>`;
container.appendChild(div);
});
</script>

</body>
</html>
