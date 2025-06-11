
    <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hi</title>
    <link rel="stylesheet"href="css\styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
			.highlight{ color:rgb(255, 94, 0);
			}
		</style>
  </head>
  <body>

    <!--Begin Nav Bar-->>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">

                <a class="nav-link active" aria-current="page" href="/birds">Home</a>

                <a class="nav-link active" aria-current="page" href="http://127.0.0.1:3002/src/details.html" class="learn-more-button">Featured-Eastern Bluebird</a>
                 <a class="nav-link active" aria-current="page" href="http://127.0.0.1:3002/src/about.html" class="learn-more-button">About</a>
            
            </div>
        </div>
    </div>
</nav>
<!--End Nav Bar-->>

<div class = "container" style="margin-top:15px;">
    <h1>${title}</h1>
    <div class = "card">
        <h5 class = "card header">${bird.name}</h5>
        <img src="/profile-pictures/${(bird.profilePicturePath)!'avatar.png'}" class = "card-img-top"
            style ="height: 100px," alt="profile picture">
            <div class="card body">
                <span style = "float:right"><a href= "/birds/updateForm/${bird.birdId?c}" class= "btn btn-primary">Edit Bird</a></span>
                <h5 class = "card-title">ID: ${bird.birdId?c}</h5>
                <p class = "card-text">Name: ${bird.name}</p>
                <p class = "card-text">Species: ${bird.species}</p>
                <p class = "card-text">LifeSpan: ${bird.lifeSpan}</p>
                <a href = "/birds/delete/${bird.birdId?c}" class = "btn btn-danger"> Delete Bird</a>
                <a href = "/birds" class="btn btn-primary"> Go back</a>
            </div>
     </body>
</html>