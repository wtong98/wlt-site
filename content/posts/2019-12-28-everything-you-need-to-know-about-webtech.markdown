---
title: Everything you need to know about webtech
date: "2019-12-28T13:25:00Z"
preview: /images/everything-you-need-to-know-about-webtech/preview.jpg
tags:
- tech
- education
toc: true
---

React, Angular, ES6 Javascript, Typescript, JS-in-CSS, Express, Django, NoSQL,
ORMs -- webtech is a dizzying world with diverse technologies, wacky lingo, and
more frameworks than stars in the sky. Looking for a way in? You just found it.

*Audience: burgeoning programmers looking for an intro to webtech*
<!--more-->

{{< figure src="/images/everything-you-need-to-know-about-webtech/internet.jpg"
           alt="Internet"
           caption="Source: https://askleo.askleomedia.com/wp-content/uploads/2018/10/internet.jpg" >}}

---
Webtech[^1] is a *monster*. The barrier to entry is high for a number of reasons:
1. **Lightning pace**: technologies popular three years ago
are already becoming obsolete
2. **Informal training**: teaching something that changes this fast is challenging.
Most of the education happens on the job or via blog tutorials (like this one!)
3. **Sheer volume**: the raw number of tools, packages, and frameworks for modern
web development is overwhelming

But that's why posts like this exist. Whether you're a casual programmer or
thinking of a career in web dev, you've made it to the right place.

## Internet
{{< figure src="/images/everything-you-need-to-know-about-webtech/arpanet.jpg"
           alt="Arpanet"
           caption="Source: http://mercury.lcs.mit.edu/~jnc/tech/arpageo.html" >}}

Open your favorite browser. Type `www.google.com`. Hit enter.

The moment your finger brushes the key, your laptop's wireless card sends a beam
of light[^2] encoding information like `www.google.com`, `1:25 pm`, and `I am
coming from Jane's laptop` to a tiny computer in your home/office called a
router. The router then transmits the information as electrical impulses through
a tangle of cables to a supercomputer. Depending on where you live and the location
of the nearest Google servers, these electrical impulses will get rocketed around
the country, potentially under the ocean, until they arrive at last to routers
owned by Google. From here, they feed to a Google computer, which interprets
the information, assembles the Google search page, and sends that data back
through the routers, tangle of cables, supercomputers, and finally the router
in your home or office, where it can be beamed back to your laptop as light --
and lo! Google search appears on your screen.[^3]

If this whole process sounds immensely cool and complicated, it is. Check out
[this article](https://www.vox.com/a/internet-maps) from Vox with impressive
graphics about the whole process.

Most of this process lies in the realm of telecom giants and hardcore engineers.
For the software geeks, there's only one part that really matters: assembling
the page. All the hard stuff -- getting the users' signals to your computer, sending
your page out to users -- is handled by the Internet. The real work for us
is figuring out how to make that page in the first place.


## Web stack
That page -- which I'll now call a web application -- requires three parts:
1. Frontend: what the user sees
2. Backend: data and logic powering the web app
3. Server: software that glues everything together

{{< figure src="/images/everything-you-need-to-know-about-webtech/frontend_backend.png"
           alt="Full stack"
           caption="Source: https://www.seobility.net/en/wiki/Frontend" >}}

A world of technology goes into building these three components. Software
engineers then pick their favorite and assemble them into a [web stack](https://whatis.techtarget.com/definition/Web-stack).
For example, a traditional choice is to pick <b>L</b>inux and <b>A</b>pache for the server,
<b>M</b>ySQL and <b>P</b>HP for the backend, and more PHP for the frontend. The
[LAMP](https://en.wikipedia.org/wiki/LAMP_(software_bundle)) stack. Let's walk
through each part in greater detail below:

### Frontend
Arguably the gnarliest part of the whole stack, the frontend governs everything
the user sees, touches, and hears. Everything you interact with directly on the
Internet lies in the realm of frontend.

Three core technologies to know:
1. [HTML](https://www.w3schools.com/html/)
2. [CSS](https://www.w3schools.com/css/)
3. [Javascript](https://www.w3schools.com/js/)

**HTML** (short for Hypertext Markup Language) describes the structure of a
webpage. It looks something like this:

```html
<p>
    <strong>HTML</strong> describes the structure of a webpage.
    It looks something like this:
</p>
```
The funny-looking sections enclosed in angle brackets are called *tags*. They
denote sections of an HTML document. For example `<p>` denotes the beginning
of a paragraph, and `</p>` denotes the end. Closing tags always include the `/`
between the brackets. The tag `<strong>` denotes really important text, which
should be emphasized. To view the HTML of this webpage, you can right-click
on the page and select "View page source."

**CSS** (short for Cascading Style Sheet) describes how a webpage should look.
It looks like this:

```css
p {
    color: blue;
}
```
This snippet means that the text color for all paragraphs should be blue. You
can use CSS to stylize just about any visual element on your webpage, from the
color to the spacing to the placement, and even animations. Whereas HTML
gives you content and structure, CSS gives you visuals.

Just HTML + CSS is enough to build a decent webpage. But for the fancy stuff
like [this](http://weavesilk.com/), you'll need **JavaScript**.

JavaScript is a fully-fledged programming language.[^4] Webpages rely on them
for animation, logic, interfaces, basically anything a general programming
language can do. In fact, JavaScript is so powerful that some websites are built
purely from it. No HTML. No CSS. Pure JavaScript. It's a large topic and
deserving of its own post.

JavaScript, by the way, has nothing to do with [Java](https://en.wikipedia.org/wiki/Java_(programming_language)).
The name was chosen for hype, back when Java was all the rage. But nowadays
Java has about as much relation to JavaScript as "car" to "carpet."

### Backend
For a lot of websites (like this one), the frontend is all you need. But if
you want a higher degree of interaction with your users -- like a
browser-based video game, web email, online gradebook, basically anything that
requires you to log on -- you'll also need a backend.

The primary job of the backend is to host a **database**. A database is a
collection of structured information. Think Excel, but with multiple spreadsheets
that connect to each other. Using it, you might store usernames, passwords,
favorite color, preferred pizza parlor, opinion on bananas vs plantains, virtually
any data you'd like. A popular database is [MySQL](https://en.wikipedia.org/wiki/MySQL),
and it uses a special querying language called [SQL](https://www.w3schools.com/sql/)
to store and retrieve information.

{{< figure src="/images/everything-you-need-to-know-about-webtech/database.jpg"
           alt="Full stack"
           caption="Source: https://www.seobility.net/en/wiki/Frontend" >}}

The rest of the backend includes code that connects the database to the rest of
the website. Suppose your website orders pizza from a user's favorite pizza
parlor. Then once the user hits "Order!" your backend might query the database,
discover that the user likes "Pizza Hut," connect to Pizza Hut's online ordering
system, and submit an order for a large pepperoni with extra cheese.

The code itself can be written in virtually any popular programming language.
Traditionally, the choice is [PHP](https://www.w3schools.com/php/), but no
modern website will touch it. Other common choices include (in my personal
order of preference) Java, [Python](https://www.djangoproject.com/), and even
[JavaScript](https://nodejs.org/en/) itself. But if you're a hardcore disciple
of SomeObscureLanguage, chances are, someone somewhere has written a package
that lets you use it for a backend.

### Server
Often paired with the backend, the server is a piece of software that connects
users to the actual website.[^5] Its primary job is to direct traffic: when
a user types `google.com` and hits enter, servers at Google receive that
request, give it to the backend to process, and return the assembled
webpage to the user.

In practice, the server is not something a web developer touches directly.
Instead, clever people have already written multitudes of servers ready
for you to plug-and-play. The traditional go-to has been
[Apache](https://httpd.apache.org/), though a popular option today is [nginx](https://www.nginx.com/)
(pronounced like "engine - X").


## Frameworks
And that's about it! Those three building blocks -- frontend, backend, server --
form the core of any web project. The rest of webtech is an endless elaboration
on these three themes.

One last thing to talk about is the **web framework**. Take a look at these
two websites:

[TACO](http://www.taco.com/)
{{< figure src="/images/everything-you-need-to-know-about-webtech/taco.png"
           alt="TACO"
           caption="A very old-fashioned, 90s era website. Likely written by hand with traditional HTML and CSS techniques." >}}

[Feed](http://www.feedmusic.com/)
{{< figure src="/images/everything-you-need-to-know-about-webtech/feed.png"
           alt="Full stack"
           caption="Beautifully animated, sleek, modern website." >}}

Imagine trying to write the website for Feed by hand using plain HTML, CSS, and
JavaScript. It's doable, but doable in the same sense that building the Great
Wall of China brick-by-brick is doable.

To build something beautiful, interactive, and *modern*, you need a framework.
These are software packages that in some way make your life easier when
building a website. Some help structure your project. Others provide starting
templates. Many blur the line between frontend, backend, and server, providing
one complete solution that encompasses all parts.

Each framework is itself the topic of a whole post. Below is a short overview of
some popular ones, plus my unsolicited opinions:

* [React](https://reactjs.org/): frontend framework that helps your write beautiful web apps. It
does away entirely with HTML (and often CSS) and allows you to code the whole
thing in JavaScript. The project is headed by Facebook, and [facebook.com](https://facebook.com)
is an excellent example of a website built with React.
* [Angular](https://angular.io/): also a frontend framework, it's a primary competitor to React
made by Google. Personally, I'm not a huge fan. It's clunky, finicky, and
difficult to learn. If you have the choice, I recommend React.
* [Express](https://expressjs.com/): backend framework for JavaScript. Often
you'll find it in a MERN stack: MongoDB (database) + Express + React + Node (JavaScript engine).
* [Django](https://www.djangoproject.com/): backend framework for Python.
It's got a little bit of everything you might need to build an enterprise-grade
website.[^6]
* [Flask](https://flask.palletsprojects.com/en/1.1.x/): a competitor to Django.
Whereas Django gives you everything, including an opinionated way to organize
your project, Flask takes a leaner, simpler, minimalist approach. They say
if Django is the Navy, then Flask is the pirates.

If you're curious, this website is built using [Jekyll](/tech/2019/01/04/getting-started-with-jekyll.html).
It's a blog-oriented framework that crunches text files containing my posts into
the web pages you see now.


## Footnotes
Some extra tidbits to color your reading experience:

[^1]:
    I use the term "webtech" to broadly cover everything related to building
    a web page or web-based application.

[^2]:
    In fact, it's the same kind of light that your microwave uses on leftovers.
    Check out [this interesting article](https://scienceblogs.com/builtonfacts/2009/09/17/wifi-and-radiation)
    for more information.

[^3]:
    Remember, all this happens on the order of seconds. And it has to happen
    every time you click on a link, browse to a new page, or generally use
    the Internet.

[^4]:
    For more on programming languages themselves, check out my
    [guide to programming](http://localhost:4000/tech/2019/02/22/programming-for-n00bs-an-introduction-to-our-craft.html)

[^5]:
    Sometimes, people refer to the "server" as the physical machine that runs
    your backend code. In this article, I refer to "server" exclusively in
    the software sense.

[^6]:
    Except built-in support for asynchronous Python, in which case you'll
    need [Celery](http://www.celeryproject.org/) and a message broker like
    [RabbitMQ](https://www.rabbitmq.com/). The extra bulk is why I prefer
    JavaScript, which has async built in.
