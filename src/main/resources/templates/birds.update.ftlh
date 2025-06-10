ln 48 hard coded birds
update to <tr></tr> to enhanced for loop

<#list birdList as bird>
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">${animal.name}</h5>
        <h6 class="card-subtitle mb-2 text-body-secondary">${.type}</h6>
        <p class="card-text">${animal.description}</p>
        <a href="#" class="card-link">View</a>
</div>
</div>
</#list>


ln 56 <a>href="birds/$bird.birdId)" style="color: black>$birds.birdID}</a>