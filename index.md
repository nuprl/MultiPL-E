---
layout: default
title: Introduction
nav_order: 0
---

# Introduction


<style>
@import url("https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@500&display=swap");
.carousel__wrapper {
  padding: 20px;
}
.carousel__content {
  max-width: 1200px;
  margin: 0 auto;
  position: relative;
}
.carousel__container {
  overflow-x: scroll;
  overflow-y: hidden;
  display: flex;
  align-items: center;
  height: 100%;
  -webkit-overflow-scrolling: touch;
  scroll-behavior: smooth;
}
.carousel__container::-webkit-scrollbar {
  display: none;
}
.carousel__slide {
  min-width: 90%;
}
.card__description {
  display: flex;
  column-gap: 10px;
  align-items: center;
}
.card__description img {
  width: 20px;
}
.card__description span {
  padding: 5px 15px;
  border-radius: 5px;
  color: #fff;
}
.card__description span.fire {
  background-color: orange;
}
.card__description span.psychic {
  background-color: rgb(146, 100, 108);
}
.card__description span.electric {
  background-color: rgb(231, 210, 88);
}
.card__description span.rock {
  background-color: rgb(114, 102, 32);
}
.card__description span.grass {
  background-color: rgb(32, 114, 69);
}

.card__inner {
  box-shadow: rgba(3, 102, 214, 0.3) 0px 0px 0px 3px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 15px;
  flex-direction: column;
  row-gap: 0.5rem;
  height: 300px;
  border-radius: 15px;
  background-color: #fff;
  padding: 2rem 4rem;
}
.card__inner h4 {
  font-size: 1.5rem;
  margin: 0;
  color: rgb(170, 155, 155);
}
.card__image img {
  max-height: 150px;
  margin-bottom: 1rem;
}
.arrow {
  display: none;
  position: absolute;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  top: calc(50% - 10px);
  background-color: rgba(3, 101, 214, 0.664);
  padding: 5px;
  align-items: center;
  justify-content: center;
  cursor: pointer;
}
.arrow i {
  font-size: 1.5rem;
  color: #fff;
}
.arrow.arrow--right {
  right: 0%;
}
.arrow.arrow--left {
  left: 0%;
}

@media screen and (min-width: 1180px) {
  .carousel__wrapper {
    padding: 50px;
  }
  .carousel__slide {
    min-width: 33.33%;
    scroll-snap-align: center;
    position: relative;
  }
  .arrow {
    display: flex;
  }
}
</style>
<link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet" />
<section class="carousel" id="carousel">
  <div class="carousel__wrapper">
    <div>
      <div class="carousel__content">
        <div class="carousel__container">
          <div class="carousel__slide">
            <div class="card">
              <div class="card__inner">
                <div class="card__image">
                  <img src="https://i.imgur.com/p3FfEL6.png" alt="Charmander" />
                </div>
                <h4>Charmander</h4>
                <div class="card__description">
                  <img src="https://i.imgur.com/FldDlNb.png" alt="Pokeball" />
                  <span class="fire">Fire</span>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel__slide">
            <div class="card">
              <div class="card__inner">
                <div class="card__image">
                  <img src="https://i.imgur.com/pGKpAlb.png" alt="Psyduck" />
                </div>
                <h4>Psyduck</h4>
                <div class="card__description">
                  <img src="https://i.imgur.com/FldDlNb.png" alt="Pokeball" />
                  <span class="psychic">Psychic</span>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel__slide">
            <div class="card">
              <div class="card__inner">
                <div class="card__image">
                  <img src="https://i.imgur.com/KQ4FREg.png" alt="Pikachu" />
                </div>
                <h4>Pikachu</h4>
                <div class="card__description">
                  <img src="https://i.imgur.com/FldDlNb.png" alt="Pokeball" />
                  <span class="electric">Electric</span>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel__slide">
            <div class="card">
              <div class="card__inner">
                <div class="card__image">
                  <img src="https://i.imgur.com/JpHWJa4.png" alt="Sandshrew" />
                </div>
                <h4>Sandshrew</h4>
                <div class="card__description">
                  <img src="https://i.imgur.com/FldDlNb.png" alt="Pokeball" />
                  <span class="rock">Rock</span>
                </div>
              </div>
            </div>
          </div>

          <div class="carousel__slide">
            <div class="card">
              <div class="card__inner">
                <div class="card__image">
                  <img src="https://i.imgur.com/vJZ4agX.png" alt="Caterpie" />
                </div>
                <h4>Caterpie</h4>
                <div class="card__description">
                  <img src="https://i.imgur.com/FldDlNb.png" alt="Pokeball" />
                  <span class="grass">Grass</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="prev-slide" class="arrow arrow--left">
          <i class="bx bx-chevron-left"></i>
        </div>
        <div id="next-slide" class="arrow arrow--right">
          <i class="bx bx-chevron-right"></i>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
/*--------------------------------------------------------
    Set carousel config here

    @autoload : true / false
    @itemsToBeVisible: Defines how many items should be visible
    @speed: Speed at which items will be passed in milliseconds
    ----------------------------------------------------------*/
const config = {
  autoload: true,
  itemsToBeVisible: 1,
  speed: 5000
};

/*-------------------
  Entry point 
  ---------------------*/
function start() {
  window.onload = function () {
    setSlidersStyle(config);

    const prevSlideButton = document.getElementById("prev-slide");
    const nextSlideButton = document.getElementById("next-slide");

    prevSlideButton.addEventListener("click", () => {
      navigate("backward", config);
    });

    nextSlideButton.addEventListener("click", () => {
      navigate("forward", config);
    });

    if (config.autoload) {
      playCarousel(nextSlideButton, config);
    }
  };
}

/*--------------------------------------------------------------
    Sets the style of slides based on the number of visible items.
  ---------------------------------------------------------------*/
function setSlidersStyle(config) {
  document.querySelector(
    "style"
  ).textContent += `@media screen and (min-width:1180px) { .carousel__slide{ min-width: ${
    100 / config.itemsToBeVisible
  }% } }`;
}

/*----------------------------------------
   Performs the sliding behavior of items.
  ----------------------------------------*/
function navigate(position, config) {
  const carouselEl = document.getElementById("carousel");
  const slideContainerEl = carouselEl.querySelector(".carousel__container");
  const slideEl = carouselEl.querySelector(".carousel__slide");
  let slideWidth = slideEl.offsetWidth;
  slideContainerEl.scrollLeft = this.getNewScrollPosition(
    position,
    slideContainerEl,
    slideWidth,
    config
  );
}

/*-------------------------------
   Get the new scroll position.
  ---------------------------------*/
function getNewScrollPosition(position, slideContainerEl, slideWidth, config) {
  const maxScrollLeft =
    slideContainerEl.scrollWidth - slideWidth * config.itemsToBeVisible;
  if (position === "forward") {
    const x = slideContainerEl.scrollLeft + slideWidth;
    return x <= maxScrollLeft ? x : 0;
  } else {
    const x = slideContainerEl.scrollLeft - slideWidth;
    return x >= 0 ? x : maxScrollLeft;
  }
}

/*-------------------------------
  Autoplay
  ---------------------------------*/
function playCarousel(nextButton, config) {
  const play = () => {
    nextButton.click();
    setTimeout(play, config.speed);
  };
  play();
}

start();
</script>


*MultiPL-E* is a multi-programming language benchmark for evaluating the code
generation performance of large language model (LLMs) of code.

We use a suite of compilers to translate the Python benchmarks from [Chen et al.
2021] into parallel benchmarks in 18 languages.  MultiPL-E provides a way to
evaluate code generation models on a consistent set of benchmark problems across
many languages. The 18 languages capture a broad spectrum of language features,
application areas, and popularity, allowing us to explore the impact of these
factors on model performance.

For example, the following graph shows the success rate of OpenAI Codex on the
benchmark problems across the full suite of programming languages:

<img src="codex.png">

Our paper also reports the performance on InCoder, and presents more
in depth analyses. Some of our findings include:

1. Codex performs best on JavaScript and equally well on C++, Scala, and
   TypeScript as on Python.

2. Model perplexity is not strongly correlated with the correctness of generated
   code.

3. Type annotations have limited impact on model performance for gradually typed
   languages.

4. Model performance is correlated with language popularity, but some niche
   languages perform as well as more popular languages.

## Using MultiPL-E

The MultiPL-E benchmark and associated tools are open source and easy to extend.
Each compiler translates Python unit tests, doctests, and function signatures to
its target language. Because these program regions do not contain arbitrary
Python code, each compiler is much simpler than a full-fledged compiler. It is
easy to add new benchmark programs and to extend the benchmark to additional
languages. The [tutorial](./tutorial.html) walks you through
running our benchmarks and gives guidance on adding support for [new languages],
[new benchmarks], and evaluating [new code generation models].


[Chen et al. 2021]: https://arxiv.org/abs/2107.03374
[new languages]: ./new_language.html
[new benchmarks]: ./new_benchmark.html
[evaluating new models]: ./new_model.html
