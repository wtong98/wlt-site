---
title: "bayz: live coding + bayesian program learning"
date: 2020-10-19T20:54:57-05:00
preview: /images/bayz/preview.png
draft: true
toc: true
math: false
images:
tags:
  - project
  - music
---
Introducing bayz: a live coding platform that combines the latest and greatest
in Bayesian machine learning with ~~uber nerd~~ avant-garde performative music.

*audience: Professor Mark, and anyone else who stumbles here*
<!--more-->

{{< figure src="/images/bayz/bayz_band.png"
   alt="something programming and epic related"
   caption="bayz band interface in vscode"
   class="big">}}

## For the impatient
* A GitHub repo with everything you need to get started: [wtong98/bayz](https://github.com/wtong98/bayz)
* A publicly hosted bayz beat client: [bayz-beat](/cream/bayz)
  * this client connects to `localhost:42700`, the default port for a bayz server instance


## Background
bayz is the child of two very different fields: Baysian Progream Learning (BPL)
and live coding.

BPL is a relatively recent[^1] development in machine learning that seeks to
capture high-level aspects of human cognition. Its authors hypothesize that
human cognition stems from three basic ingredients:

1. **Causality**: we perceive things in cause-and-effect relationships
2. **Compositionality**: larger concepts are composed of smaller, more basic concepts
3. **Learning-to-learn**: as we learn, we learn how to get better at learning

{{< figure src="/images/bayz/bpl.jpg"
   alt="something programming and epic related"
   caption="Figure from the original paper that highlights the core cognitive process modeled in BPL. From the paper: \"A single example of a new concept (red boxes) can be enough information to support the (i) classification of new examples, (ii) generation of new examples, (iii) parsing an object into parts and relations (parts segmented by color), and (iv) generation of new concepts from related concepts.\" By using the three aspects above, humans have a remarkable ability to learn novel concepts from one or few examples. BPL tries to do the same. (Source: *Lake et. al 2015*)">}}

They took these three ingredients and smooshed them into one grand machine
learning framework: Bayesian Program Learning. The [original paper](https://science.sciencemag.org/content/350/6266/1332) 
applied the framework to character recognition, but it generalizes naturally
to other contexts --- like music composition. So a friend and I got together,
hashed out a way make BPL do music, and coded up [BayesClef](https://github.com/wtong98/4772-Project).[^2]

[Live coding](https://www.youtube.com/watch?v=ENfyOndcvP0) is a form of
performative music that turns programming into an instrument. It involves, well,
coding live. Performers will often project their code on a screen as they
write it, improvising algorithms that generate music. It's a unique blend of 
technology and creativity, taking very literally the notion that software is
art.

So what if we took all the music-compositional-awesomeness of BPL, and brought
it to a live-coding platform? Instead of improvising tunes on the spot, a
performer could rely on the machine to generate perfect notes for them. Instead
of worrying about the nitty-gritty details of the music, the performer can work
on the broad-strokes, shaping the music at a higher level. The live coder
becomes a live conductor, directing the efforts of a virtual, artificially
intelligent orchestra.


## bayz
bayz[^3] is a live coding platform that brings BPL to live coding. The platform
is implemented in Python[^4], and the full details for getting started can
be found on the [GitHub repo](https://github.com/wtong98/bayz).


### Architecture
bayz is composed of three parts:

1. **bayz band**: live coding interface
2. **bayz beat**: WebAudio client, for producing sound
3. **bayz server**: server that connects the two pieces above

bayz band is a simple [jupyter notebook](https://jupyter.org/) interface that allows a live coder to
input instructions and produce sound. The example notebook included in the repo
additionally sets up a server instance, which passes messages between bayz band
and bayz beat. 

bayz beat is a client that uses WebAudio to produce the actual
sounds. The relevant html for bayz beat is included in the GitHub, but for
convenience the website is also hosted [here](/cream/bayz). Ensure you have
a bayz server instance running locally and listening on port 42700 (the default),
hit start, and you're good to go!

{{< figure src="/images/bayz/bayz_beat.png"
   alt="something programming and epic related"
   caption="Hit start!">}}

### Making music with bayz band
bayz band is organized around the concept of a Band. In the spirit of the
algorithm-as-musician, you the live coder become the "conductor" of this
Band.

The example jupyter notebook starts by initializing a Band
```python
b = Band(pre_gen=3)
```
the argument `pre_gen` tells the Band to go ahead and sample three pieces of
music from the BPL model and prepare them to be played. Ideally, sampling
would happen in real time, but given the limitations of a Python
implementation, it doesn't quite happen fast enough. So instead, will sample
a few pieces ahead of time, and play them when the time comes.

Once that finishes (it may take a few moments), go ahead and try adding
a player to your Band

```python
b.add_player()
```
Hit `<ctrl>-<enter>` to execute the notebook cell and viola! We have music!

Add as many players as you like
```python
b.add_player()
b.add_player()
b.add_player()
b.add_player()
b.add_player()
# ...
```
but be warned, if you add more than the number in `pre_gen`, any extras will
need to first sample music from the BPL model, which will slow down your flow
considerably.

If you feel the need to take a more direct hand in your music, you can also
add a custom line of music
```python
b.add_line([60, 63, 67])
```

which will play an arpeggiated minor C chord. The integers refer to midi values.

If you'd like to vary the rhythm, you can also specify a rhythm list:
```python
b.add_line([60, 63, 67], rhythm=[1,2,3])
```

which gives the relative duration of each note. Hence, `60` will be played half
as long as `63`, and a third as long as `67`. The length of the rhythm list
doesn't have to match the length of the notes list
```python
b.add_line([60, 63, 67], rhythm=[1,2])
```

In this case, the rhythms cycle back, so `60` has length 1, `63` has length 2,
and `67` has length one again.

If you're tired of the default sound, you can try a new instrument:

```python
b.add_line([60, 63, 67], rhythm=[1,2], instrument='bell')
```
which will produce a church-bell-esque sound, or

```python
b.add_line([60, 63, 67], rhythm=[1,2], instrument='warble')
```
which will give you a somewhat haunting vibrato.

Both the `rhythm` and `instrument` keywords also work with `add_player()`.

Remember to re-execute the cell every time you make a change. Give a moment for
the changes to propagate, sync, then before long, you have new music!


## Looking ahead
bayz is still extremely new, highly experimental software (like pre-pre-pre
alpha v0.0.0.0.1), so there's still plenty of work to do before it's ready for
the [algoraves](https://en.wikipedia.org/wiki/Algorave). Some nice-to-haves
for a future iteration might include a

* C implementation of the BPL model, so we can achieve realtime sampling
* model of interactions between players
* additional genres of music in the training data[^5]
* bayz beat visuals that sync with the music
* anything else that sounds awesome!

Please enjoy, make it your own, and send me a PR if you find something buggy
(inevitable) or come up with something new (very much appreciated).

[^1]:
    Circa 2015, which I guess depending on your point of view, is either
    *blindingly* recent measured in academia years, or eons ago measured in ML
    years.

[^2]:
    If you're curious about the specifics, our original writeup is linked
    [here](https://drive.google.com/file/d/1-qiL9f9q0C35HLltZ0pOTgOAutBq8K63/view?usp=sharing) and music samples
    can be found [here](https://drive.google.com/drive/folders/1YnEc5bMvp6mEuBeyaldk5hdHaiaz0zAG?usp=sharing).

[^3]:
    For the record, "bayz" should be spelled all lowercase. Not "Bayz,"
    "BAYZ," "BayZ," and definitely not "bAYz."

[^4]:
    Need a brush up on some Python? Forget the difference between
    lists and tuples? Worry not! [I've got you covered]({{< ref "2020-05-12-programming-for-noobs-charming-the-python.md" >}}).

[^5]:
    The current BPL model is trained on a corpus of about 360 pieces by Bach.
    Why him? It was the most accessible corpus in the format I needed. Plus,
    Bach sounds surprisingly good in an electronic music context. If he were
    alive today, I have full faith he would be an electronica artist.