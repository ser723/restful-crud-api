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
            <li class = "nav-item">
                <a class="nav-link active" aria-current="page" href="http://127.0.0.1:3002/src/details.html" class="learn-more-button">Featured-Eastern Bluebird</a>
            
            </li>
                
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

<div class="container" style="margin-top: 15px;">
    <h1>${title}</h1>
    <a href="/birdss/createForm" class="btn btn-outline-primary" style="float:right;">Create New Bird</a>

    <form action="/birds/name">
        <input type="text" name="key" placeholder="Search By Name &#128270;">
    </form>

    <!-- Birds Table -->
    <table class="table table-striped rounded-3 overflow-hidden">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Species</th>
        </tr>
        <#list birdsList as bird>
        <tr>
            <td>
                <a href="/birds/${bird.birdId?c}" style="color:#000000">${bird.birdId?c}</a>
            </td>
            <td>${bird.name}</td>
            <td>
                <a href="/birds/species/${bird.species}" style="color:#000000">${bird.species}</a>
            </td>
        </tr>
        </#list>
    </table>




  </body>
</html>