---
layout: default
title: Introduction
nav_order: 0
---

# Introduction


<style>
.carousel {
    margin-left: 0%;
    margin-right: 0%;
}

ul.slides {
    display: block;
    position: relative;
    height: 600px;
    margin: 0;
    padding: 0;
    overflow: hidden;
    list-style: none;
}

.slides * {
    user-select: none;
    -ms-user-select: none;
    -moz-user-select: none;
    -khtml-user-select: none;
    -webkit-user-select: none;
    -webkit-touch-callout: none;
}

ul.slides input {
    display: none; 
}


.slide-container { 
    display: block; 
}

.slide-image {
    display: flex;
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    opacity: 0;
    transition: all .7s ease-in-out;
}   

.slide-image iframe {
    width: auto;
    min-width: 100%;
    height: 100%;
}

.carousel-controls {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    z-index: 999;
    font-size: 100px;
    line-height: 600px;
    color: #fff;
}

.carousel-controls label {
    display: none;
    position: absolute;
    padding: 0 20px;
    opacity: 0;
    transition: opacity .2s;
    cursor: pointer;
}

.slide-image:hover + .carousel-controls label{
    opacity: 0.5;
}

.carousel-controls label:hover {
    opacity: 1;
}

.carousel-controls .prev-slide {
    width: 20%;
    height: 20%;
    text-align: left;
    left: 0;
}

.carousel-controls .next-slide {
    width: 20%;
    height: 20%;
    text-align: right;
    right: 0;
}

.carousel-dots {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 20px;
    z-index: 999;
    text-align: center;
}

.carousel-dots .carousel-dot {
    display: inline-block;
    width: 30px;
    height: 30px;
    border-radius: 50%;
    background-color: #fff;
    opacity: 0.5;
    margin: 10px;
}

input:checked + .slide-container .slide-image {
    opacity: 1;
    transform: scale(1);
    transition: opacity 1s ease-in-out;
}

input:checked + .slide-container .carousel-controls label {
     display: block; 
}

input#img-1:checked ~ .carousel-dots label#img-dot-1,
input#img-2:checked ~ .carousel-dots label#img-dot-2,
input#img-3:checked ~ .carousel-dots label#img-dot-3,
input#img-4:checked ~ .carousel-dots label#img-dot-4,
input#img-5:checked ~ .carousel-dots label#img-dot-5,
input#img-6:checked ~ .carousel-dots label#img-dot-6 {
	opacity: 1;
}


input:checked + .slide-container .nav label { display: block; }
</style>

<div>
  <div class="carousel">
    <ul class="slides">
      <input type="radio" name="radio-buttons" id="img-1" checked />
      <li class="slide-container">
        <div class="slide-image">
            <iframe src="./code-html/test.html"></iframe>
        </div>
        <div class="carousel-controls">
          <label for="img-3" class="prev-slide">
            <span>&lsaquo;</span>
          </label>
          <label for="img-2" class="next-slide">
            <span>&rsaquo;</span>
          </label>
        </div>
      </li>
      <input type="radio" name="radio-buttons" id="img-2" />
      <li class="slide-container">
        <div class="slide-image">
            <iframe src="new_benchmark.md"></iframe>
        </div>
        <div class="carousel-controls">
          <label for="img-1" class="prev-slide">
            <span>&lsaquo;</span>
          </label>
          <label for="img-3" class="next-slide">
            <span>&rsaquo;</span>
          </label>
        </div>
      </li>
      <input type="radio" name="radio-buttons" id="img-3" />
      <li class="slide-container">
        <div class="slide-image">
            <iframe src="new_benchmark.md"></iframe>
        </div>
        <div class="carousel-controls">
          <label for="img-2" class="prev-slide">
            <span>&lsaquo;</span>
          </label>
          <label for="img-1" class="next-slide">
            <span>&rsaquo;</span>
          </label>
        </div>
      </li>
      <div class="carousel-dots">
        <label for="img-1" class="carousel-dot" id="img-dot-1"></label>
        <label for="img-2" class="carousel-dot" id="img-dot-2"></label>
        <label for="img-3" class="carousel-dot" id="img-dot-3"></label>
      </div>
    </ul>
  </div>
</div>

_MultiPL-E_ is a multi-programming language benchmark for evaluating the code
generation performance of large language model (LLMs) of code.

We use a suite of compilers to translate the Python benchmarks from [Chen et al.
2021] into parallel benchmarks in 18 languages. MultiPL-E provides a way to
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

[chen et al. 2021]: https://arxiv.org/abs/2107.03374
[new languages]: ./new_language.html
[new benchmarks]: ./new_benchmark.html
[evaluating new models]: ./new_model.html
