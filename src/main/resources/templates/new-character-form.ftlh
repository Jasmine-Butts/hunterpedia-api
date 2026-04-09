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
            <input type="text" id="search-input" placeholder="Search for a Hunter...">
            <button id="search-button">Search</button>
        </div>

        <div id="logo">
            <img src="/images/Hunter-x-Hunter-Emblem.png" alt="Hunter x Hunter Logo" width="100">
        </div>

    </section>

    <section id="nav">
        <nav>
            <ul>
                <li><a href="/index.html">Home</a></li>
                <li><a href="/details.html">Details</a></li>
                <li><a href="/about.html">Learn More</a></li>
                <li><a href="/new-character-form.html">Add a Hunter</a></li>
            </ul>
        </nav>
    </section>

    <section class="container" id="main">
        <h2>Add a New Hunter</h2>
        <form id="new-character-form">
            <label for="name">Name:</label><br>
            <input type="text" id="name" name="name"><br><br>

            <label for="image">Image URL:</label><br>
            <input type="text" id="image" name="image"><br><br>

            <label for="description">Description:</label><br>
            <textarea id="description" name="description"></textarea><br><br>

            <input type="submit" value="Add Hunter">
        </form>
    
</body>
</html>