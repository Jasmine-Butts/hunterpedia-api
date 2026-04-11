<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Character Form</title>
    <link rel="stylesheet" href="/header.css">
    <link rel="stylesheet" href="/character-form.css">
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
        <h2>Add a New Hunter</h2>
        <form id="new-character-form" action="/hunters/new" method="post">
          
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${hunter.name!''}" required>
            <br><br>

            <label for="Nen Type">Nen Type:</label>
            <input type="text" id="nen type" name="nenType" value="${hunter.nenType!''}" required>
            <br><br>

            <label for="Abilities">Abilities:</label>
            <textarea id="Abilities" name="abilities">${hunter.abilities!''}</textarea>
            <br><br>

            <label for="Background">Background:</label>
            <textarea id="Background" name="background">${hunter.background!''}</textarea>
            <br><br>

            <label for="image">Image URL:</label>
            <input type="text" id="image" name="imageUrl" value="${hunter.imageUrl!''}" required>
            <br><br>

            <button type="submit">Add Hunter</button>

        </form>
    </section>
    
</body>
</html>