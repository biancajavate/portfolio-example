PK    إZZ             	 untitled/README.mdUT �}�g# Untitled

A Pen created on CodePen.

Original URL: [https://codepen.io/Ma-Cielito-Bianca-Javate/pen/PwobbQR](https://codepen.io/Ma-Cielito-Bianca-Javate/pen/PwobbQR).

PK�Ït�   �   PK    إZZ             	 untitled/LICENSE.txtUT �}�gThe MIT License (MIT)

Copyright (c) 2025 Ma. Cielito Bianca Javate (https://codepen.io/Ma-Cielito-Bianca-Javate/pen/PwobbQR)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
PK�C]~  ~  PK    إZZ             	 untitled/src/index.htmlUT �}�g<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bianca Javate</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #2d3142;
            --secondary-color: #4f5d75;
            --accent-color: #ef8354;
            --light-color: #f7f9fb;
            --dark-color: #333;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: var(--dark-color);
            background-color: var(--light-color);
        }
        
        .navbar {
            background-color: var(--primary-color);
            padding: 1rem 2rem;
        }
        
        .navbar-brand {
            font-weight: 700;
            font-size: 1.5rem;
            color: white;
        }
        
        .nav-link {
            color: rgba(255, 255, 255, 0.9);
            transition: color 0.3s;
            margin: 0 0.5rem;
            font-weight: 500;
        }
        
        .nav-link:hover {
            color: var(--accent-color);
        }
        
        .hero {
            height: 70vh;
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.5)), url('/api/placeholder/1200/800') center/cover no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }
        
        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }
        
        .hero-content p {
            font-size: 1.5rem;
            max-width: 800px;
            margin: 0 auto 2rem;
        }
        
        .btn-primary {
            background-color: var(--accent-color);
            border-color: var(--accent-color);
            color: white;
            padding: 0.5rem 1.5rem;
            font-weight: 600;
            transition: all 0.3s;
        }
        
        .btn-primary:hover {
            background-color: #e47244;
            border-color: #e47244;
            transform: translateY(-2px);
        }
        
        section {
            padding: 5rem 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }
        
        .section-title h2 {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-color);
            position: relative;
            display: inline-block;
            padding-bottom: 0.5rem;
        }
        
        .section-title h2::after {
            content: '';
            position: absolute;
            left: 50%;
            bottom: 0;
            transform: translateX(-50%);
            height: 3px;
            width: 70px;
            background-color: var(--accent-color);
        }
        
        .about-content {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .profile-img {
            border-radius: 10px;
            overflow: hidden;
        }
        
        .card {
            border: none;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s, box-shadow 0.3s;
            margin-bottom: 2rem;
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }
        
        .card-body {
            padding: 1.5rem;
        }
        
        .card-title {
            font-weight: 700;
            margin-bottom: 0.75rem;
            color: var(--primary-color);
        }
        
        .badge {
            background-color: var(--secondary-color);
            margin-right: 0.5rem;
            margin-bottom: 0.5rem;
            padding: 0.5rem 0.75rem;
            font-weight: 500;
        }
        
        .photography-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
        }
        
        .photo-item {
            position: relative;
            height: 250px;
            border-radius: 10px;
            overflow: hidden;
            cursor: pointer;
        }
        
        .photo-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        
        .photo-item:hover img {
            transform: scale(1.05);
        }
        
        .photo-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(transparent, rgba(0,0,0,0.8));
            padding: 1rem;
            color: white;
            opacity: 0;
            transition: opacity 0.3s;
        }
        
        .photo-item:hover .photo-overlay {
            opacity: 1;
        }
        
        .video-wrapper {
            position: relative;
            padding-bottom: 56.25%; /* 16:9 Aspect Ratio */
            height: 0;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 2rem;
        }
        
        .video-wrapper img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .play-btn {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.3);
            color: white;
            width: 70px;
            height: 70px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            transition: background-color 0.3s;
        }
        
        .video-wrapper:hover .play-btn {
            background-color: var(--accent-color);
        }
        
        .social-links {
            display: flex;
            justify-content: center;
            margin-top: 2rem;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: var(--secondary-color);
            color: white;
            margin: 0 0.75rem;
            font-size: 1.25rem;
            transition: all 0.3s;
        }
        
        .social-link:hover {
            background-color: var(--accent-color);
            transform: translateY(-5px);
        }
        
        .contact-form {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .contact-info {
            padding: 2rem;
        }
        
        .contact-item {
            display: flex;
            align-items: center;
            margin-bottom: 1.5rem;
        }
        
        .contact-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: var(--accent-color);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.25rem;
            margin-right: 1rem;
        }
        
        footer {
            background-color: var(--primary-color);
            color: white;
            padding: 2rem 0;
            text-align: center;
        }
        
        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            .hero-content p {
                font-size: 1.125rem;
            }
            
            section {
                padding: 3rem 0;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#home">Bianca Javate</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#writing">Writing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#photography">Photography</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#video">Video</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="container">
            <div class="hero-content">
                <h1>Bianca Javate</h1>
                <p>Journalist • Photographer • Videographer</p>
                <a href="#contact" class="btn btn-primary">Get In Touch</a>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="bg-light">
        <div class="container">
            <div class="section-title">
                <h2>About Me</h2>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-5 mb-4 mb-lg-0">
                    <div class="profile-img">
                        <img src="/api/placeholder/600/700" alt="Your Name" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="about-content">
                        <p class="lead mb-4">I'm a multimedia journalist with over 5 years of experience covering [your beat/specialty]. My work has appeared in [publications], where I focus on [your focus areas].</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p>
                        <p>Nullam lobortis justo et nunc aliquam aliquam. Sed efficitur neque justo, quis malesuada augue facilisis sed. Nam fermentum, eros at fermentum volutpat, tellus lorem tempus felis, non scelerisque enim risus vel orci.</p>
                        <div class="mt-4">
                            <h5>Skills</h5>
                            <span class="badge">Investigative Reporting</span>
                            <span class="badge">Feature Writing</span>
                            <span class="badge">Breaking News</span>
                            <span class="badge">Documentary Photography</span>
                            <span class="badge">Video Editing</span>
                            <span class="badge">Multimedia Storytelling</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Writing Section -->
    <section id="writing">
        <div class="container">
            <div class="section-title">
                <h2>Featured Writing</h2>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                        <img src="/api/placeholder/800/500" class="card-img-top" alt="Article 1">
                        <div class="card-body">
                            <h5 class="card-title">Article Title 1</h5>
                            <p class="card-text">A brief description of this article and what it covers. Highlight your key insights or important aspects of your reporting.</p>
                            <span class="badge">Investigation</span>
                            <span class="badge">Politics</span>
                            <a href="#" class="btn btn-primary mt-3">Read Full Article</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                        <img src="/api/placeholder/800/500" class="card-img-top" alt="Article 2">
                        <div class="card-body">
                            <h5 class="card-title">Article Title 2</h5>
                            <p class="card-text">A brief description of this article and what it covers. Highlight your key insights or important aspects of your reporting.</p>
                            <span class="badge">Feature</span>
                            <span class="badge">Human Interest</span>
                            <a href="#" class="btn btn-primary mt-3">Read Full Article</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                        <img src="/api/placeholder/800/500" class="card-img-top" alt="Article 3">
                        <div class="card-body">
                            <h5 class="card-title">Article Title 3</h5>
                            <p class="card-text">A brief description of this article and what it covers. Highlight your key insights or important aspects of your reporting.</p>
                            <span class="badge">Analysis</span>
                            <span class="badge">Technology</span>
                            <a href="#" class="btn btn-primary mt-3">Read Full Article</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="#" class="btn btn-primary">View All Articles</a>
            </div>
        </div>
    </section>

    <!-- Photography Section -->
    <section id="photography" class="bg-light">
        <div class="container">
            <div class="section-title">
                <h2>Photography</h2>
            </div>
            <div class="photography-grid">
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 1">
                    <div class="photo-overlay">
                        <h5>Photo Title 1</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 2">
                    <div class="photo-overlay">
                        <h5>Photo Title 2</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 3">
                    <div class="photo-overlay">
                        <h5>Photo Title 3</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 4">
                    <div class="photo-overlay">
                        <h5>Photo Title 4</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 5">
                    <div class="photo-overlay">
                        <h5>Photo Title 5</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 6">
                    <div class="photo-overlay">
                        <h5>Photo Title 6</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="#" class="btn btn-primary">View Full Gallery</a>
            </div>
        </div>
    </section>

    <!-- Video Section -->
    <section id="video">
        <div class="container">
            <div class="section-title">
                <h2>Video Work</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="video-wrapper">
                        <img src="/api/placeholder/800/450" alt="Video 1">
                        <div class="play-btn">
                            <i class="fas fa-play"></i>
                        </div>
                    </div>
                    <h4>Video Title 1</h4>
                    <p>A brief description of this video project and what it covers. Explain your role in the production and the impact of the piece.</p>
                </div>
                <div class="col-md-6">
                    <div class="video-wrapper">
                        <img src="/api/placeholder/800/450" alt="Video 2">
                        <div class="play-btn">
                            <i class="fas fa-play"></i>
                        </div>
                    </div>
                    <h4>Video Title 2</h4>
                    <p>A brief description of this video project and what it covers. Explain your role in the production and the impact of the piece.</p>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="#" class="btn btn-primary">View More Videos</a>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="bg-light">
        <div class="container">
            <div class="section-title">
                <h2>Contact Me</h2>
            </div>
            <div class="row">
                <div class="col-lg-7 mb-4 mb-lg-0">
                    <div class="contact-form">
                        <form>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <input type="text" class="form-control" placeholder="Your Name">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <input type="email" class="form-control" placeholder="Your Email">
                                </div>
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Subject">
                            </div>
                            <div class="mb-3">
                                <textarea class="form-control" rows="5" placeholder="Your Message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Send Message</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="contact-info">
                        <h3 class="mb-4">Get In Touch</h3>
                        <p>Feel free to reach out for assignments, collaborations, or just to say hello.</p>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Email</h5>
                                <p>your.email@example.com</p>
                            </div>
                        </div>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Phone</h5>
                                <p>(123) 456-7890</p>
                            </div>
                        </div>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Location</h5>
                                <p>Your City, State/Country</p>
                            </div>
                        </div>
                        
                        <div class="social-links">
                            <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2025 Your Name. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script>
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
        
        // Active navigation on scroll
        window.addEventListener('scroll', function() {
            const sections = document.querySelectorAll('section');
            const navLinks = document.querySelectorAll('.nav-link');
            
            let current = '';
            
            sections.forEach(section => {
                const sectionTop = section.offsetTop;
                const sectionHeight = section.clientHeight;
                
                if (pageYOffset >= (sectionTop - 200)) {
                    current = section.getAttribute('id');
                }
            });
            
            navLinks.forEach(link => {
                link.classList.remove('active');
                if (link.getAttribute('href') === `#${current}`) {
                    link.classList.add('active');
                }
            });
        });
    </script>
</body>
</html>PK���_�\  �\  PK    إZZ             	 untitled/dist/index.htmlUT �}�g<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Untitled</title>
  

</head>
<body>
<!-- partial:index.partial.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bianca Javate</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #2d3142;
            --secondary-color: #4f5d75;
            --accent-color: #ef8354;
            --light-color: #f7f9fb;
            --dark-color: #333;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: var(--dark-color);
            background-color: var(--light-color);
        }
        
        .navbar {
            background-color: var(--primary-color);
            padding: 1rem 2rem;
        }
        
        .navbar-brand {
            font-weight: 700;
            font-size: 1.5rem;
            color: white;
        }
        
        .nav-link {
            color: rgba(255, 255, 255, 0.9);
            transition: color 0.3s;
            margin: 0 0.5rem;
            font-weight: 500;
        }
        
        .nav-link:hover {
            color: var(--accent-color);
        }
        
        .hero {
            height: 70vh;
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.5)), url('/api/placeholder/1200/800') center/cover no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }
        
        .hero-content h1 {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }
        
        .hero-content p {
            font-size: 1.5rem;
            max-width: 800px;
            margin: 0 auto 2rem;
        }
        
        .btn-primary {
            background-color: var(--accent-color);
            border-color: var(--accent-color);
            color: white;
            padding: 0.5rem 1.5rem;
            font-weight: 600;
            transition: all 0.3s;
        }
        
        .btn-primary:hover {
            background-color: #e47244;
            border-color: #e47244;
            transform: translateY(-2px);
        }
        
        section {
            padding: 5rem 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }
        
        .section-title h2 {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-color);
            position: relative;
            display: inline-block;
            padding-bottom: 0.5rem;
        }
        
        .section-title h2::after {
            content: '';
            position: absolute;
            left: 50%;
            bottom: 0;
            transform: translateX(-50%);
            height: 3px;
            width: 70px;
            background-color: var(--accent-color);
        }
        
        .about-content {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .profile-img {
            border-radius: 10px;
            overflow: hidden;
        }
        
        .card {
            border: none;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s, box-shadow 0.3s;
            margin-bottom: 2rem;
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }
        
        .card-body {
            padding: 1.5rem;
        }
        
        .card-title {
            font-weight: 700;
            margin-bottom: 0.75rem;
            color: var(--primary-color);
        }
        
        .badge {
            background-color: var(--secondary-color);
            margin-right: 0.5rem;
            margin-bottom: 0.5rem;
            padding: 0.5rem 0.75rem;
            font-weight: 500;
        }
        
        .photography-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
        }
        
        .photo-item {
            position: relative;
            height: 250px;
            border-radius: 10px;
            overflow: hidden;
            cursor: pointer;
        }
        
        .photo-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        
        .photo-item:hover img {
            transform: scale(1.05);
        }
        
        .photo-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(transparent, rgba(0,0,0,0.8));
            padding: 1rem;
            color: white;
            opacity: 0;
            transition: opacity 0.3s;
        }
        
        .photo-item:hover .photo-overlay {
            opacity: 1;
        }
        
        .video-wrapper {
            position: relative;
            padding-bottom: 56.25%; /* 16:9 Aspect Ratio */
            height: 0;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 2rem;
        }
        
        .video-wrapper img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .play-btn {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.3);
            color: white;
            width: 70px;
            height: 70px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            transition: background-color 0.3s;
        }
        
        .video-wrapper:hover .play-btn {
            background-color: var(--accent-color);
        }
        
        .social-links {
            display: flex;
            justify-content: center;
            margin-top: 2rem;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: var(--secondary-color);
            color: white;
            margin: 0 0.75rem;
            font-size: 1.25rem;
            transition: all 0.3s;
        }
        
        .social-link:hover {
            background-color: var(--accent-color);
            transform: translateY(-5px);
        }
        
        .contact-form {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .contact-info {
            padding: 2rem;
        }
        
        .contact-item {
            display: flex;
            align-items: center;
            margin-bottom: 1.5rem;
        }
        
        .contact-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: var(--accent-color);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.25rem;
            margin-right: 1rem;
        }
        
        footer {
            background-color: var(--primary-color);
            color: white;
            padding: 2rem 0;
            text-align: center;
        }
        
        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }
            
            .hero-content p {
                font-size: 1.125rem;
            }
            
            section {
                padding: 3rem 0;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#home">Bianca Javate</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#writing">Writing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#photography">Photography</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#video">Video</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="container">
            <div class="hero-content">
                <h1>Bianca Javate</h1>
                <p>Journalist • Photographer • Videographer</p>
                <a href="#contact" class="btn btn-primary">Get In Touch</a>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="bg-light">
        <div class="container">
            <div class="section-title">
                <h2>About Me</h2>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-5 mb-4 mb-lg-0">
                    <div class="profile-img">
                        <img src="/api/placeholder/600/700" alt="Your Name" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="about-content">
                        <p class="lead mb-4">I'm a multimedia journalist with over 5 years of experience covering [your beat/specialty]. My work has appeared in [publications], where I focus on [your focus areas].</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p>
                        <p>Nullam lobortis justo et nunc aliquam aliquam. Sed efficitur neque justo, quis malesuada augue facilisis sed. Nam fermentum, eros at fermentum volutpat, tellus lorem tempus felis, non scelerisque enim risus vel orci.</p>
                        <div class="mt-4">
                            <h5>Skills</h5>
                            <span class="badge">Investigative Reporting</span>
                            <span class="badge">Feature Writing</span>
                            <span class="badge">Breaking News</span>
                            <span class="badge">Documentary Photography</span>
                            <span class="badge">Video Editing</span>
                            <span class="badge">Multimedia Storytelling</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Writing Section -->
    <section id="writing">
        <div class="container">
            <div class="section-title">
                <h2>Featured Writing</h2>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                        <img src="/api/placeholder/800/500" class="card-img-top" alt="Article 1">
                        <div class="card-body">
                            <h5 class="card-title">Article Title 1</h5>
                            <p class="card-text">A brief description of this article and what it covers. Highlight your key insights or important aspects of your reporting.</p>
                            <span class="badge">Investigation</span>
                            <span class="badge">Politics</span>
                            <a href="#" class="btn btn-primary mt-3">Read Full Article</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                        <img src="/api/placeholder/800/500" class="card-img-top" alt="Article 2">
                        <div class="card-body">
                            <h5 class="card-title">Article Title 2</h5>
                            <p class="card-text">A brief description of this article and what it covers. Highlight your key insights or important aspects of your reporting.</p>
                            <span class="badge">Feature</span>
                            <span class="badge">Human Interest</span>
                            <a href="#" class="btn btn-primary mt-3">Read Full Article</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="card">
                        <img src="/api/placeholder/800/500" class="card-img-top" alt="Article 3">
                        <div class="card-body">
                            <h5 class="card-title">Article Title 3</h5>
                            <p class="card-text">A brief description of this article and what it covers. Highlight your key insights or important aspects of your reporting.</p>
                            <span class="badge">Analysis</span>
                            <span class="badge">Technology</span>
                            <a href="#" class="btn btn-primary mt-3">Read Full Article</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="#" class="btn btn-primary">View All Articles</a>
            </div>
        </div>
    </section>

    <!-- Photography Section -->
    <section id="photography" class="bg-light">
        <div class="container">
            <div class="section-title">
                <h2>Photography</h2>
            </div>
            <div class="photography-grid">
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 1">
                    <div class="photo-overlay">
                        <h5>Photo Title 1</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 2">
                    <div class="photo-overlay">
                        <h5>Photo Title 2</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 3">
                    <div class="photo-overlay">
                        <h5>Photo Title 3</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 4">
                    <div class="photo-overlay">
                        <h5>Photo Title 4</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 5">
                    <div class="photo-overlay">
                        <h5>Photo Title 5</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
                <div class="photo-item">
                    <img src="/api/placeholder/600/500" alt="Photo 6">
                    <div class="photo-overlay">
                        <h5>Photo Title 6</h5>
                        <p>Brief caption or location</p>
                    </div>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="#" class="btn btn-primary">View Full Gallery</a>
            </div>
        </div>
    </section>

    <!-- Video Section -->
    <section id="video">
        <div class="container">
            <div class="section-title">
                <h2>Video Work</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="video-wrapper">
                        <img src="/api/placeholder/800/450" alt="Video 1">
                        <div class="play-btn">
                            <i class="fas fa-play"></i>
                        </div>
                    </div>
                    <h4>Video Title 1</h4>
                    <p>A brief description of this video project and what it covers. Explain your role in the production and the impact of the piece.</p>
                </div>
                <div class="col-md-6">
                    <div class="video-wrapper">
                        <img src="/api/placeholder/800/450" alt="Video 2">
                        <div class="play-btn">
                            <i class="fas fa-play"></i>
                        </div>
                    </div>
                    <h4>Video Title 2</h4>
                    <p>A brief description of this video project and what it covers. Explain your role in the production and the impact of the piece.</p>
                </div>
            </div>
            <div class="text-center mt-5">
                <a href="#" class="btn btn-primary">View More Videos</a>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="bg-light">
        <div class="container">
            <div class="section-title">
                <h2>Contact Me</h2>
            </div>
            <div class="row">
                <div class="col-lg-7 mb-4 mb-lg-0">
                    <div class="contact-form">
                        <form>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <input type="text" class="form-control" placeholder="Your Name">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <input type="email" class="form-control" placeholder="Your Email">
                                </div>
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Subject">
                            </div>
                            <div class="mb-3">
                                <textarea class="form-control" rows="5" placeholder="Your Message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Send Message</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="contact-info">
                        <h3 class="mb-4">Get In Touch</h3>
                        <p>Feel free to reach out for assignments, collaborations, or just to say hello.</p>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Email</h5>
                                <p>your.email@example.com</p>
                            </div>
                        </div>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Phone</h5>
                                <p>(123) 456-7890</p>
                            </div>
                        </div>
                        
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div>
                                <h5 class="mb-1">Location</h5>
                                <p>Your City, State/Country</p>
                            </div>
                        </div>
                        
                        <div class="social-links">
                            <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2025 Your Name. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script>
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
        
        // Active navigation on scroll
        window.addEventListener('scroll', function() {
            const sections = document.querySelectorAll('section');
            const navLinks = document.querySelectorAll('.nav-link');
            
            let current = '';
            
            sections.forEach(section => {
                const sectionTop = section.offsetTop;
                const sectionHeight = section.clientHeight;
                
                if (pageYOffset >= (sectionTop - 200)) {
                    current = section.getAttribute('id');
                }
            });
            
            navLinks.forEach(link => {
                link.classList.remove('active');
                if (link.getAttribute('href') === `#${current}`) {
                    link.classList.add('active');
                }
            });
        });
    </script>
</body>
</html>
<!-- partial -->
  
</body>
</html>
PK�rќ]  �]  PK    إZZ�Ït�   �    	         ��    untitled/README.mdUT �}�gPK    إZZ�C]~  ~   	         ���   untitled/LICENSE.txtUT �}�gPK    إZZ���_�\  �\   	         ���  untitled/src/index.htmlUT �}�gPK    إZZ�rќ]  �]   	         ���b  untitled/dist/index.htmlUT �}�gPK      1  ��    