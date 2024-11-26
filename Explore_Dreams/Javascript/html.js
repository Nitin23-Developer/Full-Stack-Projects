let slideIndex = 0;
showSlides();

// Function to show slides and automatically change every 5 seconds
function showSlides() {
    const slides = document.querySelectorAll('.slide');
    const dots = document.querySelectorAll('.nav-dot');

    slides.forEach((slide, index) => {
        slide.style.display = 'none';
        dots[index].classList.remove('active');
    });

    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1; }

    slides[slideIndex - 1].style.display = 'block';
    dots[slideIndex - 1].classList.add('active');

    setTimeout(showSlides, 5000); // Change slide every 5 seconds
}

// Function to manually go to a specific slide
function currentSlide(n) {
    slideIndex = n - 1;
    showSlides();
}
