---
title: "A composer, a professor, and a computer walk into a bar..."
date: 2022-07-07T20:43:41-04:00
preview: /images/ai-composer/preview.jpg
draft: true
toc: true
math: false
images:
tags:
  - project
  - education
---
... and have a contest about who writes the best music! Who wins? Read on to
find out.

*Audience: you! Especially if you're interested in AI and music*
<!--more-->

--- 

As AI becomes progressively more integrated in our everyday lives, it is not
altogether improbable that these technologies might one day dominate in creative
domains. Here, we'll focus specifically on music. Can an algorithm ever attain
the level of a human composer? Or will there always remain something indefinable
and transcendent about a human creation, irreproducible by a machine imitator?

{{< figure src="/images/ai-composer/ai_composer.jpg"
   alt="Robot at the piano"
   caption="[Source](https://unsplash.com/photos/U3sOwViXhkY)"
   class="big">}}

This post started life as a project for a data science ethics class. Together
with my excellent collaborators [Zach
Murray](https://astronomy.fas.harvard.edu/people/zack-murray) and [Kimon
Vogt](https://www.linkedin.com/in/kimon-aristotelis-v-5695b7174/), we explored a
tentative, prescriptive criteria for evaluating personhood in AI systems. Our
original discussion, from which parts of this piece has been cribbed, can be
found
[here](https://wtong-harvard.notion.site/A-criteria-for-personhood-in-artificially-intelligent-systems-1c3d3ce61d5041e3af5f6bb590050b3d).


## A concert like no other
*October, 1997.* A crisp, autumn afternoon at the University of Oregon. Excited
chatter bubbles from the growing crowd of students, professors, and music
enthusiasts gathering at the concert hall, anticipating an hour of
cerebral music and Baroque discussion. A sudden hush descends as esteemed
pianist Winifred Kerner strides across the stage to the waiting Steinway.

She performed three pieces. 

Only one was a true Bach.

---

In a musical showdown not dissimilar to the famous match between chess grandmaster [Gary
Kasperov and IBM's Deep Blue](https://en.wikipedia.org/wiki/Deep_Blue_versus_Garry_Kasparov), or the more recent headliner pitting [Go
master Lee Sedol against DeepMind’s
AlphaGo](https://en.wikipedia.org/wiki/AlphaGo_versus_Lee_Sedol), the Bach
concert was organized as a competition between a human composer and a machine
opponent. The contestants were as follows:

**For the humans**: Professor Steve Larson of the UO Music Department. Bach expert
and music composer.

{{< figure src="/images/ai-composer/david_cope.jpg"
   alt="David Cope"
   caption="David Cope, creator of EMI. [Source](https://archive.nytimes.com/www.nytimes.com/library/cyber/week/111197music.html)"
   class="right" >}}

**For the machines**: EMI ("Experiments in Musical Intelligence," pronounced like
"Emmy"). The brainchild of
David Cope, a professor of algorithmic and computer music at UC Santa Cruz. EMI
learns to imitate the style of various composers by studying their compositions.

Upon hearing about EMI, Larson took offense to the notion that a mere algorithm
could approach the nuance and sublimity of a human composer. That EMI would
*dare* to imitate of composer of Bach's stature was nothing short of blasphemy.
So Larson proposed a challenge. Three pieces would be performed before a public
audience:

1. A genuine Bach
2. A composition by EMI, in the "style of Bach"
3. A composition by Professor Larson himself

Then the audience, composed of music scholars, professionals, and students from
the University of Oregon area, must vote on the authorship of each piece. The
results were striking.

{{< figure src="https://img.youtube.com/vi/Xm-GCAPidaY/0.jpg"
   alt="David Cope"
   caption="Listen to EMI for yourself! Click to hear"
   link="https://www.youtube.com/watch?v=Xm-GCAPidaY"
   target="_blank">}}

Much to Larson's chagrin, the audience decided that EMI's piece *was the genuine
Bach.* Somewhat ironically, Larson's own composition was mis-attributed to
EMI. (As for the real Bach, it was mis-attributed to Larson.) In a remarkable
triumph for computer-generated music, EMI duped an audience of experienced
listeners into believing its music was written by a compositional master.[^1]

When later interviewed about his creation, David Cope reflected that "when
[listeners] assume the music is human, they are obviously moved and speak in the
same terms as if it had been by Chopin [a famous composer]. But when I tell them
that there is nothing behind the music but cold hard machinery doing addition
and subtraction, then they won’t admit they were moved."[^2] 
There seems to be something profoundly uncomfortable with attributing human
qualities -- artistry, creativity, emotion -- to a machine-generated artifact.
Why?

{{< figure src="/images/ai-composer/sims.png"
   alt="The Sims"
   caption="The Sims. [Source](https://www.origin.com/usa/en-us/store/the-sims/the-sims-4)"
   class="left">}}

Perhaps listeners are uneasy with attributing emotional valence to a
machine? And yet, if you're old enough (but not too old) to have owned a
[Tamagotchi](https://en.wikipedia.org/wiki/Tamagotchi), you might recall how
easy and natural it was to develop a real emotional bond with an entirely
simulated pet. If you've ever played [The
Sims](https://en.wikipedia.org/wiki/The_Sims) (or video games broadly), you
might have experienced deep attachment and real emotional investment in the game
characters. On an rational level, players may understand that the characters are
nothing more than software abstractions. But it's still easy to believe that a
Sim experiences love, pain, hunger, excitement -- the spectrum of human emotion --
as evidenced by their interactions with the player.

Many recent examples in film ([Her](https://en.wikipedia.org/wiki/Her_(film)),
[Ex Machina](https://en.wikipedia.org/wiki/Ex_Machina_(film)), [Blade
Runner](https://en.wikipedia.org/wiki/Blade_Runner)) and culture
([fictosexuality](https://www.nytimes.com/2022/04/24/business/akihiko-kondo-fictional-character-relationships.html),
[LaMDA](https://www.wired.com/story/lamda-sentient-ai-bias-google-blake-lemoine/))
explore the deep emotional investment individuals can place in machine
creations. So if people are generally okay with extending emotional currency to
digital artifacts, what is it about EMI exactly that makes it hard for
people to accept its music?

## Human or machine?
Let's try our own version of Larson's contest.

Below are links to two different pieces. One was written by a human. The other
was written by a machine. Listen to both, multiple times if you'd like, then
decide which is which.

* [Piece A](/audio/ai-composer/piece_a.mp3)
* [Piece B](/audio/ai-composer/piece_b.mp3)

Which piece did you like better? Which sounded more "human"? Did you feel
any emotions for either, or both? For the piece that sounds like a machine's,
what "gives it away"?

When you're ready, scroll below the ACII art to find out the answer!

```
                                    _____
                                   | |   \
                                   | |    \
                                   | |     \___
                                   | |         \
                                   | |          \
                            0     _|_|___________|
                           /\/  /____|____________) 
                        . /  \_|__________________| 
                        |/__    | )(            )(
                        | |\\  :| )(   ejm 97   )(





                                    ,-.
                                   ((o))
                              _  ,-,,-'
                             ( `/=//_
                            _  /=/='_)
                           ( `/=//_
                             /=/='_)
                            /_/ |
                           / /`.'   ===========.
                          / //       ##--------^`
                         / //
                        / //
                       / //
                      / / |
                   _ / / -._
                 .' / /     `.
                /  / /       `-.
               /  /_/        ' `
              '             :  '
             '.       ,-  ,-'.:
             / /     /.  /  ,-'
            /  __   7   / /
         .,'  '  ` '   `._
         /    |/\|      ,'.
        / _   _        / ,'
        :' ` | /     ,' /
        `.PG |/ _ , ' ,'
           ---""__ ,-'
                                                    



                                                       =_
                                                       ||\
                     C                   C             |||\
       C      c     (\/     C           (\/            ||||\O
      (\/    (\/    /|     (\/     c    /|             ||||\/\
      /|     /|    / |     /|     (\/  / |             ||||// \
     / |    / |   /__|    / |     /|  /__|             |||/  __\|
    /__|   /__|     "    /__|    / |    "              |__: //| |
      "      "             "    /__|              -
                        c       ! "             (   )
           c           (\/       \                -\
          (\/     c    /|     ___ \O              - \O
          /|     (\/  / |    /   \/|)           ( & )/)
         / |     /|  /__|   |   ./||\      _____  -\/|\
        /__|    / |    "     \___/ | \    /\ | (_)   | \ 
          "    /__|           /|\  |__\   -- |       |__\
                 "                  "       /|\       "
          O     ______________           
         /\/  /________________)     O @                          
        /  \_|___O /___________|    _|/_   \                 O @   
      |/__      /_oo-#=        |   /( )_\   \-O               \|_  
      | |\\  :|(/| \/            ;/_)_(_     \_\    O        / |_\
                ||__      |O      _(   )      \|   /|       / ( )
       O /      | |\\ =#-@@|     /  /  /     __\| / |     ;/__)_(
     /_oo-#=            \/ |                //| | __||       (   )
      | \/               __||    ___O            //| |       /_|_|
     ||__      ejm97    //| |     \ \/             )>==O     '  '
     | |\\                          |      O          \/)         
                                  __||    /|            |   .-O    
               -#-----           //| |   / |          __|| (=) )   
                 \                       __||        //| |  \(/|  
               _ _\O==                  //| |               ___||
           =#-(_X_)/)                                      // | |
                \/ |\ 
                   | \
                   |__\
                    "




All artwork are human generated. asciiart.eu
```

I have a confession to make -- as it happens, **both** pieces are written by
a machine! [^3]

But before you found it, did you genuinely believe one of the pieces was
authored by a human? Does knowing the truth alter your listening experience?


## "Real" music?
The modern-day successor to EMI is AIVA, which composed both pieces you listened
to. The algorithm is designed by Aiva Technologies, a European startup that
develops machine learning solutions for composing themed, cinematic music. As
you may have experienced, AIVA’s music is often characterized as being
emotional, coherent, and difficult to distinguish from a score written by a
human composer. In fact, AIVA has been officially recognized as a composer by a
European artists' guild, [the first algorithm to earn this
distinction](https://aibusiness.com/document.asp?doc_id=760181#:~:text=Founded%20in%202016%20by%20Pierre,and%20Luxembourg%20authors'%20right%20society%2C).

Yet however convincing the music sounds, it remains unalterable that AIVA is
an algorithm. Under the hood, its compositions are produced by processes no
more inspired or creative than the shifting of bits and adding of numbers. In
contrast, a composer (or any artist, for that matter) seems closer to the divine.
From the whispers of Muses, the mysterious Inner Spark, the deep sensitivity
to all that is Beautiful and Sublime, the true Composer draws on any number of
suitably mystical inspirations to weave subtle melodies uniquely capable
of touching the soul. Surely, they are a world apart from anything as mundane as
a simple computer?

Perhaps the root of the discomfort in regarding EMI and AIVA as true musicians
rests in the elevated status of music, and art broadly. As creative endeavors,
we hold artistic works as the prime example of *human* sensitivity and
achievement. To grant equal status to a machine would discount the experience
for both artists and audiences alike. If a machine can do it, what's so special
about the human artist? In this sense, the debate over EMI and AIVA stems not
from a critique over the quality of their output, but from the danger they
represent to the art community.

It doesn't have to be this way. There is growing momentum among composers (and
tech companies) to incorporate AI and machine learning in the creative pipeline.
Google's open source platform [Magenta](https://magenta.tensorflow.org/) offers
a suite of tools aimed at complementing the creative process, rather than
replacing it.[^4] Stuck on a melody? Use
[MusicVAE](https://magenta.tensorflow.org/music-vae) to come up with additional
ideas. Struggling to nail down that exact synth sound you want?
[NSynth](https://magenta.tensorflow.org/nsynth) is here to help. I've
experimented in this space myself, building an [AI-assisted tool for live coding
music performances](/posts/2020-10-19-bayz-live-coding/). Developing creative
aids like these is virtually unthinkable without modern AI techniques. With
these tools in hand, AI-as-composer-aid is well positioned to leverage the
strengths of AI-driven composition, without wholly sacrificing the human artist.


{{< figure src="https://img.youtube.com/vi/iTXU9Z0NYoU/0.jpg"
   alt="NSynth and Magenta"
   caption="Short clip about NSynth, from Magenta. Click to view"
   link="https://www.youtube.com/watch?v=iTXU9Z0NYoU"
   target="_blank">}}


## Composers of tomorrow
What's after AIVA? As these technologies improve, it is likely the
AI composers of the future will become ever more compelling in their work.
Will we ever reach a point where an AI composer gains widespread acceptance?
Could an AI-composed piece make it on a Top 40 chart? Where would that leave
human artists?

Perhaps in the future, music might be partitioned into two new categories:
"standard" and "artisanal." Standard music is written by AI. Press a button
on a computer and presto! An instant hit. No whiny artists to pay, no lengthy
wait for new music, a studio can produce quality music quickly and cheaply.
And heck, if it sounds good, why not?

For listeners who remain resolutely bothered by AI composers, there is the
second category. As the name suggests, "artisanal" music is still composed by
a living, breathing artist. It's more expensive to produce, and the quality
might not match the carefully-tuned perfection achievable by a machine, but
it nonetheless commands a premium for that indefinable "human touch."

In the not-that-far future, we may arrive at a coexistance between machine and
human artistry, but other questions remain. Highlighting a few:

* **Credit**: algorithms like AIVA must have a *training dataset* in order to
learn how to compose music. Typically, the pieces in the training set were
written by humans. If AIVA composes a new piece, does the credit go to the
algorithm, or to the artists in the training set? Before you answer, consider
that AIVA could very well be copying entire measures directly from its
training set, with most listeners none the wiser. Before you answer again,
consider that human musicians also learn from a training set, and occasionally
copy entire measures directly from their training set, with most listeners none the wiser.
* **Copyright**: does an algorithm own the pieces it composes? Or do they belong
to the company that made them? In [one striking court case](https://www.lavan.com.au/advice/intellectual_property_technology/copyright_in_source_code_and_digital_products), the Federal Court of Autralia
ruled that a particular piece of source code could not be copyrighted by the
company because it was generated by a software agent, not a human author.
Does a company have any more right over music that it didn't compose?
Can an algorithm claim meaningful ownership over its creations?
* **Personhood**: as our algorithms become progressively more sophisticated,
will they ever gain a measure of autonomy, or even sentience? This is a gnarly
can of worms to open. If you're interested, please do refer to the original
[essay](https://wtong-harvard.notion.site/A-criteria-for-personhood-in-artificially-intelligent-systems-1c3d3ce61d5041e3af5f6bb590050b3d)
that inspired this post, where this issue is explored somewhat more deeply.



{{< figure src="/images/ai-composer/xkcd.png"
   alt="Computers vs. Humans"
   caption="[Source](https://xkcd.com/1875/)">}}

## Recommended readings
Looking for more? Check out the following resources if you want to...

* **start building something!** The [Magenta docs](https://magenta.tensorflow.org/get-started/)
and [some](https://arxiv.org/abs/2108.12290) [of](https://www.tandfonline.com/doi/full/10.1080/09298215.2018.1515233)
[the](https://arxiv.org/abs/1803.05428) [literature](https://ieeexplore.ieee.org/abstract/document/8581038) in the field
are a great place to start.
Also, [music21](https://web.mit.edu/music21/) is an excellent Python library for
experimenting in algorithmic music composition.

* **gripe about the intrusion of AI in music** You might find a kindred soul in
[Walter Benjamin](https://web.mit.edu/allanmc/www/benjamin.pdf), who grappled
with related issues around the relationship between art and technology.

* **learn more about broader issues around AI, creativity, and personhood** [This review](https://oxford.universitypressscholarship.com/view/10.1093/oso/9780198844037.001.0001/oso-9780198844037-chapter-7)
is a great place to start. You might also be interested in
[Edmond de Belamy](https://en.wikipedia.org/wiki/Edmond_de_Belamy), a striking
application of AI to portraiture.





[^1]:
    In a related vein, a few years ago, Google released an AI capable of composing Bach-like
    music as a [Doodle](https://www.google.com/doodles/celebrating-johann-sebastian-bach).
    The underlying algorithms are entirely different, but the spirit is much the same.

[^2]:
    https://archive.nytimes.com/www.nytimes.com/library/cyber/week/111197music.html

[^3]:
    "Piece A" is ["A Bucket of Spring"](https://www.youtube.com/watch?v=57v6z1YikNA).
    "Piece B" is ["Evening Star"](https://www.youtube.com/watch?v=UAlJIp3J7io).
    Both pieces are composed by [AIVA](https://www.aiva.ai/). If you liked them, more are readily accessible on [YouTube](https://www.youtube.com/channel/UCykVChITx5kqBoGkzfz8iZg)
    and [Spotify](https://open.spotify.com/artist/785Ystnoa1blYHi5DmBcqp).

[^4]:
    I am in no way endorsed by Google or the Magenta team.

<!-- [^4]: So how can EMI and AIVA sound so good? A few reasons. Rather than compose
    a piece from scratch, EMI mostly scrambles and recombines existing pieces in
    novel patterns to produce an "original" composition in the style of a target
    composer. With the advent of [deep
    learning](https://en.wikipedia.org/wiki/Deep_learning) in the last decade,
    it is becoming more feasible to design algorithms that generate compositions
    from scratch, without explicitly referencing existing pieces. Magenta uses
    these techniques to design its creative aids, but as of this writing, no
    algorithm is yet good enough to produce an entire piece, on its own, at the
    level of a human composer. So then, what about AIVA? AIVA's algorithm is
    proprietary, and the company is quite secretive about its design. It
    uses deep learning techniques like Magenta, but little else is
    known. For the pieces you heard above, it is likely there is some level
    of human supervision guiding the creative process, if only filtering
    out the bad examples that AIVA composes, and publishing only the 1-in-100
    excellent outputs on YouTube. -->


















