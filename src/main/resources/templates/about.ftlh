<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Page</title>
    <link rel="stylesheet" href="/header.css">
    <link rel="stylesheet" href="/about.css">


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
                    <option value="Transmutater">Transmutater</option>
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

    <h2>Welcome to the Hunterpedia!</h2>
    <section class="container" id="main">
        <p>Hunter x Hunter is basically what happens when you mix friendship, wild powers, and emotional damage into one iconic anime 🍃⚡
            <br>
        It follows Gon, a super-optimistic kid on a mission to become a Hunter and find his deadbeat-but-legendary dad. Along the way, he teams up with an assassin bestie, a revenge-driven scholar, and a walking embodiment of chaos, and together they face exams, monsters, villains who did <strong>not</strong> need to go that hard, and a power system (Nen) that’s way deeper than it looks.
            <br>
        It starts fun and adventurous… then slowly hits you with moral dilemmas, heartbreak, and moments that pull on your heart strings. Cute one minute, unhinged the next — <strong>Hunter x Hunter</strong> is a trap and fans love it</p>
            <br>
    <img src="/images/license.png" alt="Hunter x Hunter Logo" width="200">

    </section>
</body>
</html>