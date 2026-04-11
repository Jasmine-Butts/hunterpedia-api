<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${hunter.name}</title>
    <link rel="stylesheet" href="/details.css">

</head>
<body>
     <section id="header">
        <h1 id="title">Hunterpedia</h1>

        <div id="search">
            <form action="/hunters/search" method="get">
                <input type="text" id="search-input" name="name" placeholder="Search the Hunterpedia...">
                <select name="nenType">
                    <option value="">All Nen Types</option>
                    <option value="Enhancer">Enhancer</option>
                    <option value="Emitter">Emitter</option>
                    <option value="Transmuter">Transmuter</option>
                    <option value="Conjurer">Conjurer</option>
                    <option value="Specialist">Specialist</option>
                </select>
                <button id="search-button" type="submit">Search</button>
            </form> 
        </div>

        <div id="logo">
            <img src="/images/Hunter-x-Hunter-Emblem.png" alt="Hunter x Hunter Logo" width="100">
        </div>

    </section>

    <section id="nav">
        <nav>
            <ul>
                <li><a href="/hunters/all">Home</a></li>
                <li><a href="/hunters/about">Learn More</a></li>
                <li><a href="/hunters/new">Add a Hunter</a></li>
            </ul>
        </nav>
    </section>

    <section class="container" id="main">
        <div class="license-card">
            <img src="${hunter.imageUrl}" alt="${hunter.name}" width="150">
            <h2 id="character-name">${hunter.name}</h2>
        </div>

        <a href="/hunters/update/${hunter.hunterId}">
            <button type="button" id="update-button">Update Hunter</button>
        </a>
        
        <h3 id="abilities">Abilities</h3>
        <p id="ability-list">${hunter.abilities}</p>

        <p id="background-info">${hunter.background}</p> 

    </section>    

    
</body>
</html>