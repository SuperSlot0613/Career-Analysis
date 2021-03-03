<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam</title>
<style>
  .home {
      display: flex;
      background:gray;
      height: 100vh;
      color: #fff;
      min-height: 500px;
      background-size: cover;
      background-attachment: fixed;
      font-family: 'Ubuntu', sans-serif;
    }

    .home .max-width {
      margin: auto 0 auto 30px;
    }

    .home .home-content .text-1 {
      font-size: 27px;
    }

    .home .home-content .text-2 {
      font-size: 75px;
      font-weight: 600;
      margin-left: -3px;
    }

    .home .home-content .text-3 {
      font-size: 40px;
      margin: 5px 0;
    }

    .home .home-content .text-3 span {
      color: crimson;
      font-weight: 500;
    }

    .home .home-content a {
      display: inline-block;
      background: crimson;
      color: #fff;
      font-size: 25px;
      padding: 12px 36px;
      margin-top: 20px;
      font-weight: 400;
      border-radius: 6px;
      border: 2px solid crimson;
      transition: all 0.3s ease;
    }

    .home .home-content a:hover {
      color: crimson;
      background: none;
    }
</style>
</head>
<body>

  <section class="home" id="home">
    <div class="max-width">
      <div class="home-content">
        <div class="text-1">Hello</div>
        <div class="text-2">WHICH TEST DID ARE YOU?</div>
        <div class="text-3">CLICK ON THAT BUTTON<span class="typing"></span></div>
        <a href="Registration" target="blank">JEE</a>
        <a href="Registration"target="blank">MHT-CET</a>
        <a href="Registration"target="blank">NEET</a>
        <a href="Registration"target="blank">JEE-ADVANCE</a>
        <a href="Registration"target="blank">GATE</a>
      </div>
    </div>
  </section>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
</body>
</html>