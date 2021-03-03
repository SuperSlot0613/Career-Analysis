<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>College List</title>
</head>
<body>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style1.css">
    <title>Career Analysis System</title>
    <style>
            .navbar {
        background-color: white;;
         border-radius: 3px;
    }

    .navbar ul {
        overflow: auto;
    }

    .navbar li {
        float: left;
        list-style: none;
        margin: 3px 3px;
    }

    .navbar li a {
        padding: 3px 3px;
        text-decoration: none;
        color: black;
    }
    .search{
        float: right;
        padding: 3px 9px;
    }
    *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #151320;
    height: 100vh;
    display: grid;
    place-items: center center;
    font-family: 'Poppins',sans-serif;
}
.cards{
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(400px,1fr));
    padding: 20px;
    grid-gap: 40px;
}
.card{
    background-color: #1c1b29;
    border-radius: 20px;
    box-shadow: 0 0 30px rgba(0,0,0,0.18);
}
.container{
    position: relative;
    clip-path: polygon(0 0,100% 0, 100% 85%, 0 100%);
}
img{
    width: 100%;
    display: block;
    border-radius: 20px 20px 0 0;
}
.container:after{
    content: "";
    height: 100%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    border-radius: 20px 20px 0 0;
    opacity: 0.7;
}
.card1>.container:after{
    background-image: linear-gradient(
        135deg,
        
    );
}
.card2>.container:after{
    background-image: linear-gradient(
        135deg,
      
    );
}
.card3>.container:after{
    background-image: linear-gradient(
        135deg,
       
    );
}
.details{
    padding: 20px 10px;
}
.details>h3{
    color: #ffffff;
    font-weight: 600;
    font-size: 18px;
    margin: 10px 0 15px 0;
}
.details>p{
    color: #a0a0a0;
    font-size: 15px;
    line-height: 30px;
    font-weight: 400;
}
    </style>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark navbar-expand-lg navbar-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>&nbsp;&nbsp;
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                &nbsp;&nbsp;
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        About Us
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#"></a>
                        <a class="dropdown-item" href="#">Join Us</a>
                    </div>
                </li>
                &nbsp;
                &nbsp;
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                &nbsp;&nbsp;
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</header>
<div class="cards">
    <div class="card card1">
        <div class="container">
            <img src="tcet.jpg" alt="las vegas">
        </div>
        <div class="details">
            <h3>Thakur College of Engineering and Technology</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card2">
        <div class="container">
            <img src="coep.jpg" alt="New York">
        </div>
        <div class="details">
            <h3>College Of Engineering Pune</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card3">
        <div class="container">
            <img src="vjti.jpg" alt="Singapore">
        </div>
        <div class="details">
            <h3>Veermata Jijabai Technological Institute</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card1">
        <div class="container">
            <img src="walchand.jpg" alt="las vegas">
        </div>
        <div class="details">
            <h3>Walchand College of Engineering</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card1">
        <div class="container">
            <img src="chemical.jpg" alt="las vegas">
        </div>
        <div class="details">
            <h3>Institute of Chemical Technology</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card6">
        <div class="container">
            <img src="lr.jpg" alt="las vegas">
        </div>
        <div class="details">
            <h3>Shree L R Tiwari College of Engineering</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card1">
        <div class="container">
            <img src="usha.jpg" alt="las vegas">
        </div>
        <div class="details">
            <h3>Usha Mittal Institute of Technology</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card1">
        <div class="container">
            <img src="yavatmal.jpg" alt="las vegas">
        </div>
        <div class="details">
            <h3>Government College of Engineering, Yavatmal</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
    <div class="card card1">
        <div class="container">
            <img src="shriguru.jpg" alt="las vegas">
        </div>
        <div class="details">
            <h3>Shri Guru Gobind Singhji Institute of Engineering and Technology</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium dignissimos, minus aperiam adipisci exercitationem.</p>
        </div>
    </div>
</div>
 
    <footer>
        <span>Created By Group 11</a> | <span class="far fa-copyright"></span> 2020 All rights reserved.</span>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    

</body>

</html>
</body>
</html>