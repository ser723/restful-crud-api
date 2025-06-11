<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <title>Bird List</title>

    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body>

<!-- Begin Nav Bar -->
<nav class="navbar navbar-expand-lg  navbar-dark" style="background-color: #799351;">
    <a class="navbar-brand" href="/birds" style="margin: 10px;">
        <img src="/logo.jpg" alt="" width="80" height="60">
    </a>
    <ul class="nav justify-content-end">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/birds">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Second</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Third</a>
        </li>
    </ul>
</nav>

<div class="container" style="margin-top: 15px;" >
    <h1>${title}</h1>
    <form id="new-bird" action="/birds" method="post" enctype="multipart/form-data">
        <input type="text" id="name" name="name" placeholder="Name"/>
        
        <input type="text" id="species" name="species" placeholder="Species"/>
        <input type="number" id="lifespan" name="lifespan" step="0.01" placeholder="LifeSpan"/>
        <input type="file" id="picture" name="picture" required/>
        <button type="submit" class="btn btn-primary">Save</button>
       <a href="/birdss" class="btn btn-outline-danger" >Cancel</a>
    </form>

</div>
</body>
</html>