<!DOCTYPE html>
<html>
<head>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
        <title>Bird List </title>
        <style>
			.highlight{ color:yellow;
			}
		</style>
</head>

<body>

<!--Begin Nav Bar-->>
<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: aliceblue;">
    <div class="container-fluid">
        <a class="navbar-brand" href="/birds"style="margin: 10px;"></a> 
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/birds">Home</a>
            </li>
            <div class="navbar-nav">
                
                <a class="nav-link active" aria-current="page" href="http://127.0.0.1:3002/src/details.html" class="learn-more-button">Featured-Eastern Bluebird</a>
                <a class="nav-link active" aria-current="page" href="http://127.0.0.1:3002/src/about.html" class="learn-more-button">About</a>
            </div>
        </div>
    </div>
</nav>
<!---End Nav Bar-->>

<div class="container"style = "margin-top: 15px;">
    <h1>${title}</h1>
    <div id="header">
        <h1>Welcome to Backyard Birds NC</h1>
    </div>
    <div id="content">
        <p>   Learn about birds native to North Carolina.</p>
    </div>
    <div id="sidebar">
        <p> <span class="highlight"> </span> </p>
    </div>
    <div id="footer">
        <p></p>
    </div>
</div>

<div id="cards-container">
  <ion-card>
    <ion-img src="https://via.placeholder.com/150"></ion-img>
  </ion-card>
  <ion-card>
    <ion-img src="https://via.placeholder.com/150"></ion-img>
  </ion-card>
  <ion-card>
    <ion-img src="https://via.placeholder.com/150"></ion-img>
  </ion-card>
  <ion-card>
    <ion-img src="https://via.placeholder.com/150"></ion-img>
  </ion-card>
  <ion-card>
    <ion-img src="https://via.placeholder.com/150"></ion-img>
  </ion-card>
</div>

<div class="card">
  <br>
  <img src="https://t4.ftcdn.net/jpg/03/52/35/99/360_F_352359980_Dymu5k3peC2vG7OxzzklQeVxYB6L5Q49.jpg" id= "Northern Cardinal"width="365" height="342">
  <div class="container">
    <br>
    <h4><b>Northern Cardinal</b></h4>
    <p>Cardinalis</p>
    <a href="details.html" class="learn-more-button">Learn more</a>
    <br>
    <br>
  </div>
</div>
<br>

<div class="card">
  <br>
  <img src="https://images.squarespace-cdn.com/content/v1/653ab97baabdf455835892a9/50d516a9-32d9-4a92-a3d1-2a15af441cb4/bluebird_280-scaled+on+branch.jpg" id="Eastern Bluebird" width="365" height="342">
  <div class="container">
    <br>
    <h4><b>Eastern Bluebird</b></h4>
    <p>Sialia</p>
    <a href="details.html" class="learn-more-button">Learn more</a>
    <br>
    <br>
  </div>
</div>
<br>

<div class="card">
  <br>
  <img src="https://www.innonmillcreek.com/wp-content/uploads/redbelliedwoodpecker-1024x700.jpg" id="Red-Bellied Woodpecker" width="365" height="342"">
  <br>
  <div class="container">
    <h4><b>Red-Bellied Woodpecker</b></h4>
    <p> Melanerpes Carolinus</p>
    <a href="details.html" class="learn-more-button">Learn more</a>
    <br>
    <br>
  </div>
</div>
<br>

<div class="card">
  <br>
  <img src="https://thebirdfoodstore.com/wp-content/uploads/2023/04/blue-jay.jpg"id="Blue Jay" width="365" height="342"">
  <div class="container">
    <br>
    <h4><b>Blue Jay</b></h4>
    <p>Cyanocitta Cristata</p>
    <a href="details.html" class="learn-more-button">Learn more</a>
    <br>
    <br>
  </div>
</div>
<br>

<div class="card">
  <br>
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjG4sKLl4v81lC5xIfgV7VQpgZ_FiYuYZudQ&s" id= "Barred Owl" width="365" height="342">
  <div class="container">
    <br>
    <h4><b>Barred Owl</b></h4>
    <p>Strix Varia</p>
    <a href="details.html" class="learn-more-button">Learn more</a>
    <br>
    <br>
  </div>
</div>
<br>

<div class="card">
  <br>
  <img src="https://championsforwildlife.org/wp-content/uploads/2021/03/7538D4D2-6D3D-4495-AE65-1EED4E293DAF_1_105_c.jpeg" id="Ruby-Throated Hummingbird" width="365" height="342"">
  <div class="container">
    <br>
    <h4><b>Ruby-Throated Hummingbird</b></h4>
    <p>Archilochus Colubris</p>
    <a href="details.html" class="learn-more-button">Learn more</a>
    <br>
    <br>
  </div>
</div>
<br>

  </body>
</html>