---
date: "2019-01-12T00:00:00Z"
math: true
preview: /images/from-1011-to-laptop/preview.png
tags:
- tech
- education
title: 'From 1011 to Laptop: How to build a computer from binary'
toc: true
---

How exactly do computers work? How do you go from simple electrical impulses to
this incredible wonder-box? Tucked beneath our palms, in our pockets, and on our
desks are veritable miracles of delicate wiring and clever engineering. For the
next few minutes, I'll take you on a whirlwind tour: from simple 1's and 0's to
the whole, hulking beast that we call a computer.

*Audience: anyone and everyone*
<!--more-->

{{< figure src="/images/from-1011-to-laptop/iconic_computer.png"
           alt="Iconic computer"
           caption="Source: https://en.wikipedia.org/wiki/Desktop_computer" >}}
Look here.

Well, not *here* here, exactly, but **here**.

The screen, I mean.

And more importantly, the machine it's attached to. Beneath the surface buzzes a sea
of electricity, performing calculations that might take you a month --- in **one second***.[^1]

Today, you will learn how this magic works, and it all starts with a simple switch.


## On and off
Consider the modern household light-switch. Flick it up. Light! Flick it down.
Dark! Profound stuff, I know. Let's put it in at table:

```
                            switch  |  light
                            --------|---------
                            up      |  on
                            down    |  off
```

What happens if we add a little extra machinery to it? Now, when you flick it
up, it turns the light **off**. When you flick it down, it turns the light **on**.
Basically the reverse of our original light switch. Let's call it a *"NOT switch"*,
because it does the opposite of our original. It's table looks like this:
```
                            switch  |  light
                            --------|---------
                            up      |  off
                            down    |  on
```

My hands are getting a little tired typing "up" and "off". Why don't we use a
shorthand: let's say "1" means "up" or "on," and "0" means "down" or "off"? Our
NOT switch table might look like this:

```
                            switch  |  light
                            --------|---------
                            1       |  0
                            0       |  1
```

Let's do something fancier. Say we have two switches connected to a single
light-bulb: switch A and B. When A **and** B are flicked up, the light turns
on. Otherwise, the light stays off. Let's call it an *"AND switch"*:

```
                            A | B |  light
                            --|---|---------
                            0 | 0 |   0
                            0 | 1 |   0
                            1 | 0 |   0
                            1 | 1 |   1
```

Now what if we have the opposite? If A **or** B (or both) are flicked up, the
light turns on. Otherwise, when neither switch is up, the light stays off. Why
don't we call this one an *"OR switch"*:

```
                            A | B |  light
                            --|---|---------
                            0 | 0 |   0
                            0 | 1 |   1
                            1 | 0 |   1
                            1 | 1 |   1
```

And there we have it. These three switches --- NOT, AND, OR --- are the
fundamental building blocks of computers. In the field, they're called
*logic gates*. They're not actually light-switches or bulbs, but wires carrying
electricity. When electricity flows through a wire, it's called a "1". When
it doesn't, you have a "0".

The logic gate itself is kind of like a microscopic box with wires sticking out.
If electricity flows into the wire going *in* to a NOT gate, no electricity will
flow through the wire pointing *out*. Similarly if you have electricity flowing
down two wires going *in* to an AND gate, electricity will also flow *out* of the
AND gate.

By etching circuit boards into logic gates and roping these into larger and
larger circuits, you can build just about any digital device.[^2]


## Binary
Before we move on to building circuits, let's pause for a moment and consider:
what can we actually do with just 1's and 0's? What about letters? Words?
Images?

Let's start easy and look at just numbers. We have 0. We have 1. What about the
other 8 digits? I have a clever idea. Check this out:

```
0 | 1 | 2 | 3  |  4  |  5  |  6  |  7  |  8   |  9   |  10
0 | 1 | 10| 11 | 100 | 101 | 110 | 111 | 1000 | 1001 | 1010
```

0 matches 0 and 1 matches 1. So far so good. But 2 = 10???

The key is to dissect the value "10" into component pieces. The number itself
is composed of two digits, a 1 on the right and a 0 on the left. Imagine that
the "1" on the right gets associated with $2^1$, and the "0"" on the left
gets associated with $2^0$. Then let's compute:

$$\mathbf{1} \times 2^1 + \mathbf{0} \times 2^0 = \mathbf{2}$$

The bolded values on the left are smooshed together to form our representation
using just 1's and 0's --- called *binary*. The value on the right is the
familiar number we're trying to represent.

Confused? Let's try again with "3". To get "3", I wrote "11" above. If we walk
through the same process, that means:

$$\mathbf{1} \times 2^1 + \mathbf{1} \times 2^0 = \mathbf{3}$$

which checks out.

Now let's do 4. But hang on, there's more than 2 binary digits.[^3] Let's have
the new digit on the left associated with $2^2$, the middle be $2^1$, and the far
right remain $2^0$. We then have:

$$\mathbf{1} \times 2^2 + \mathbf{0} \times 2^1 + \mathbf{0} \times 2^0 = \mathbf{4}$$

Do you see a pattern?.

As we keep tagging on digits to the left, the power of 2 increases. So with
"1110", we would have:

$$\mathbf{1} \times 2^3 + \mathbf{1} \times 2^2 + \mathbf{0} \times 2^1 + \mathbf{1} \times 2^0 = \mathbf{13}$$

So the value "13" is represented as "1101" in binary.

Why do things this way? Remember from grade school learning about the "ones
place", the "tens place", and the "hundreds place"? The number "356" for example
has a "3" in the hundreds place, a "5" in the tens place, and a "6" in the ones place.
It can be written like this:

$$\mathbf{3} \times 10^2 + \mathbf{5} \times 10^1 + \mathbf{6} \times 10^0 = \mathbf{356}$$

We're doing the exact same thing except instead of "hundreds" and "tens",
we're working with "fours" and "twos." Because in binary, we're limited to
just two numbers rather than 10, our "places" count off as powers of 2 rather
than powers of 10. Forming the number "5" in binary therefore requires a
"1" in the fours place, a "0" in the twos place, and a "1" in the ones place,
so 5 in binary would be "101".[^4]

Don't be worried if it doesn't click right away. It takes some time to grok.
Sit with it a little. Take a walk. When you're showering tomorrow morning
it'll all become clear like magic. In the meanwhile, [here's an excellent guide](https://ryanstutorials.net/binary-tutorial/) going into the concept with more depth.

Once you can represent numbers with 1's and 0's, the rest is just gravy. Just
about every other form of data can be represented numerically.
Letters? Easy. [Unicode](https://unicode-table.com/en/) is a system mapping
letters (English or otherwise) to numbers. Once you have letters, you can
string[^5] them together to make words. Images are a little tricker. One way
is to assign 3 numbers to each pixel, where the numbers represent the
[RGB](https://www.w3schools.com/colors/colors_rgb.asp) values of a color.

Audio, video, programs, all of it can be similarly encoded with numbers (and
therefore also with binary). I'll leave it up to Google to show you how.

## Components
We have logic gates. We have binary. We're now ready to build the actual beast.[^6]

{{< figure src="/images/from-1011-to-laptop/von_neumann.png"
           alt="Von neumann"
           caption="Source: https://en.wikipedia.org/wiki/Von_Neumann_architecture" >}}

Computers have four basic components: CPU, memory, input, and output. The CPU,
short for "central processing unit," is like a souped-up calculator. It's hooked
to memory, which allows it to store and load data, as well as input and output (I/O)
devices like your keyboard, monitor, and speakers. In the next few sections,
we'll go more depth into CPU and memory. I/O gets a little messy. I'll
touch on it a little, but will save the meat for a future post.

### Processor
The CPU (and memory) can be expressed as one, giant, virtually-unimaginably
complex web of AND, OR, and NOT logic gates. Check it out:

{{< figure src="/images/from-1011-to-laptop/complicated_schematic.png"
           alt="Schematic"
           caption="Source: http://www.sciencegeek.net/Biology/Presentations/Respiration/" >}}

Just kidding --- that's something different. At the risk of offending biologists,
I claim that, believe it or not, the intricacies in your laptop are just as
complicated, if not more so, than the above.

To deal with all that complexity, computer engineers use layer upon layer upon
layer of abstraction: using logic gates to build simple components, then
using simple components to build more complex systems, working up until we've
got a functioning laptop.

One simple component in the processor is called the "adder". It adds. Go figure.
And it looks something like this:

{{< figure src="/images/from-1011-to-laptop/adder.png"
           alt="Adder"
           caption="Source: me" >}}

You take two numbers (in binary), feed them to A and B, and out crunches your
answer (also in binary).[^7] Additional I/O circuitry can be crafted from more
logic gates to convert familiar numbers into binary, and from binary back
to familiar numbers, but we don't need them just yet.

With the adder, you can rope in additional logic gates to perform other operations
like subtraction and [bit shifts](https://en.wikipedia.org/wiki/Bitwise_operation).
The end result is called an Arithmetic Logic Unit (ALU).[^8] Together with
additional logic gates to connect it to memory and I/O, the ALU and supporting
infrastructure makes up the central processing unit.

### Memory
Up until this point, we can add and we can subtract. We're basically a calculator.
The magic ingredient that boosts us into Computerhood is memory.

The fundamental circuit of memory is called a [latch](https://en.wikipedia.org/wiki/Flip-flop_(electronics)).
It's made of two NOR gates (like OR, with a NOT gate in front) hooked together
cleverly so that the circuit "remembers" the last value inputted. Below is a
neat graphic stolen from the Wikipedia page illustrating how this works:

{{< figure src="/images/from-1011-to-laptop/latch.gif"
           alt="Flip flop"
           caption="Source: https://en.wikipedia.org/wiki/Flip-flop_(electronics)" >}}

The weird shapes that look like fishes are the NOR gates, with two inputs
on the left and one output on the right.

The circuit stores exactly 1 bit: either a 1 or a 0. It's in the "1" state when
the "Q" output lights up. It's in the "0" state when the other output, called
"Q bar", lights up. The "R" stands for "reset": triggering it causes the
circuit to store a "0" (i.e. Q-bar lights up). The "S" stands for "set". Sending
a current to this input will tell the circuit to store a "1," causing Q to light
up. When neither input is triggered, the circuit will hold its state --- so if it
was storing a "0", it will continue to store a "0" until the "S" gets triggered.
If both inputs are triggered simultaneously, **kabloosh** the world explodes.

Just kidding. Formally, when both R and S are triggered, the behavior is
[undefined](http://www.catb.org/jargon/html/N/nasal-demons.html). In practice,
that means it'll never happen.

Using the above circuit, we can store exactly 1 binary digit. If you're reading
this on a standard laptop, your machine probably has a memory of about 8 gigabytes, or
over 8 *billion* bits. 8 billion of those little circuits, clicking on and
off a bajillion times each second to store your computer data.

In reality, to make computer memory cheap, it looks a little different than
pictured, but the principle is the same. Take a bunch of those circuits. Rope
them into giant chunks. Feed to your CPU for data storage.

### I/O
I/O gets super complicated super fast, so we'll focus on just one, tiny, specific
sliver: encoders and decoders.[^9]

Remember from earlier, when we were talking about the adder, how it takes input
as binary and spits out a binary result? For a computer, binary is awesome. For
a human, WTF. Your TI-84 would be practically useless if all it gave was binary.

To help computers read and output human-friendly symbols, we use special circuits
called decoders and encoders.

A decoder "decodes" binary into human symbols. It's a box that looks something
like this:

{{< figure src="/images/from-1011-to-laptop/decoder.png"
           alt="Decoder"
           caption="Source: me" >}}

The inner circuitry is a mess of AND and NOT gates, but let's focus on just a clean,
plain box. Going in is your binary output. Exactly one of the outputs will be
triggered.

To make this happen, it manually maps each possible binary input to an output.
For example, we know the binary "101" represents the value "5". We could
hook up a decoder such that feeding in the binary "101" will trigger the
output that sends electricity to a big sign that says "5". Brute-force, but
that's how your calculator translates "101 + 100" to "9"

Encoders are the reverse. They take something human-readable, and encode it
into binary. Take a look at your keyboard. How does
your laptop know that, when you press the key "A," it should type the letter
"a"? The moment your finger presses the key, the wire underneath picks up the
signal and brings it to an encoder, where it trickles through a mess of logic
gates and eventually outputs "101111001..." for your CPU to handle.


## Programs
Congrats. At this point, you have a legitimate computer: CPU, memory, I/O. Press
the power button and --- a blank screen.

What's missing?

Software.

Otherwise, all you've got is a hunk of expensive, intricate metal. We need a
software soul to bring our digital Frankenstein to life.

At its most fundamental, software is simply a stream of 1's and 0's. Remember
a computer can only understand binary. To tell the CPU to
do anything, you need to give the instructions in binary. Want to print
 "Hello World" to the screen? It might look like this:

```
1101010100101010101010010101100101011111101010`11111100010001001
0000110101010010101010101001011101010100101010101010011111111111
0000000000001111111010101001010101010100101011110101010010101010
1110000000000011111110000000000000000001111111110101010100101111
1101010111 # ... and thousands more lines ...
```

In this primitive form, it's called "machine code". Imagine trying to
write a program like that. It's tedious. It's error prone. It's stupid for
any self-respecting programmer to try.[^10]

To make things easier, early coders developed a system called *assembly*. Instead
of hand writing 1's and 0's, they used short mnemonics instead. A special
program called an *assembler* then converts the mnemonics to machine code. It looks
something like this:

```
addi    $a0, $a0, 4
addi    $a1, $a1, 4
jal AddAndVerify

lw      $ra, 12($sp)
lw      $a0, 8($sp)
lw      $a1, 4($sp)
lw      $a2, 0($sp)
addi    $sp, $sp, 16
```

Looks better. Still not brilliant.

The real jump came when computer scientists invented *compilers*. These are
special programs that take a human-readable text file, and "compiles" it into
machine code or assembly. For example, you might write something like:

```c
#include <stdio>

int main() {
    print("Hello world!\n");
}
```

It's written in a programming language called "C." [^11] Feed it to a compiler,
and we'll get thousands of lines worth of 1's and 0's that will tell our
laptop to print "Hello world!"

If you're familiar with other languages like Java, the principle is the same.
You take a simple text file written in readable English, then give it to a special
program that translates the English into the binary a computer can understand.

Once the software is written, to get it into the machine, the 1's and 0's are
stored in memory. When a program is run, the CPU pulls the instructions
line-by-line from memory, and executes whatever the binary tells it to.

One especially important program is the *operating system* (OS). It's
the program that drives your laptop or mobile device. Nearly everything you
touch depends on the OS. The desktop. The home screen. The file explorer. The
login system. Even the other programs we rely on --- our Internet browser, word
processor, messaging apps --- these are programs that run on top of the OS,
relying on the operating system to function. Common ones you might know include
Microsoft Windows, macOS, and Linux (the mobile OS "Android" is a flavor of
Linux).  

Here's a problem to leave you with: operating systems, like any other programs,
are written on a computer. A developer turns on their laptop, opens up a text file, types in millions
of lines of code, saves, compiles, and you have [Linux](https://github.com/torvalds/linux)
(or Windows or macOS). But to use the computer in the first place, you need
an operating system.

Huh.

You need an OS to use the laptop, but you need a laptop to write the OS.

So which came first?

{{< figure src="/images/from-1011-to-laptop/chicken_egg.jpg"
           alt="chicken and egg"
           caption="Source: http://signlanguageco.com/the-chicken-and-the-egg-and-the-interpreter/" >}}


## Final thoughts
And there you have. From logic gates to binary to hardware to software, we've
done it. A complete computer.

I've touched the high points, but there's a ton I left out. If you're deeply interested
in the material and want to learn more, I can't recommend enough, [Code by Charles Petzold](https://www.amazon.com/Code-Language-Computer-Hardware-Software/dp/0735611319). I'm not being paid to recommend it. It's simply
a fantastic tour from absolute fundamentals to a fully-fledged machine. Be
prepared to have your mind blown.

If you're even *more* interested in computers, it's never too late (or too
early) to consider a career in Computer Science. There are roughly three, broad routes
you can take:

1. **High level** (software engineer, UIUX designer): Write code. Have fun.
Get paid lots. These are the guys writing apps, building websites, doing the
programming that most often gets associated with CS.
2. **Low level** (systems programmer, computer engineer, electrical engineer): Most
of this article covered the low level functions of a computer. If you found it
wildly interesting, you might enjoy working in the area, designing computers
from basic circuits and writing code that runs [close to the metal](https://www.quora.com/What-does-it-mean-for-a-programming-language-to-be-closer-to-the-metal).
3. **Theory** (scientists, researchers): Maybe the true "computer scientist," these
guys push the math and models to figure out even more epic ways of computing.
Machine Learning is also a hot-spot in this area.

I'm biased when I say this, but there's really endless opportunity in CS. There's
art. There's engineering. There's fun. Google is an awesome place to [start](https://www.google.com/search?q=learn+python&oq=learn+python)


## Footnotes

These footnotes contain information above and beyond the information presented
in text. They assume a more technical background than the main article, but with
the power of Google, I'm confident anyone can get the gist.

[^1]:
    How did I get these numbers? Let's assume a super basic processor (by 2019
    standards) that trucks along at a mighty 330 thousand instructions per second.
    This number is stolen from the [Intel 8086](https://en.wikipedia.org/wiki/Intel_8086)
    microprocessor, the chip driving the original IBM PC and whose design likely graces
    the `x86_64` architecture of your own laptop's processor. From here, let's
    say it takes a human on average 5 seconds to process a single instruction.
    I'm being hand-wavy since an instruction like `add` might take a human
    many more seconds to crunch, but an instruction like `lw` (load word) might
    mean instantaneously recalling a particular value. It's an imperfect
    measure, but we'll stick with it as a super rough guess.

    Playing with the numbers, a human would take $33000 \times 5 = 1.65$
    *million* seconds, or about **460 hours** to crunch through those
    instructions. Assuming no breaks, no food, no sleep, this is equal to about
    **19 days**.

    Also keep in mind the 8086 processor was top-of-the-line --- in 1978. The processor
    in your phone is several orders of magnitude faster. What takes your smartphone one
    second to crunch, might very well take you more than a year.

[^2]:
    In total, there are 7 commonly used logic gates: the three we covered, plus
    NAND, NOR, XOR, and XNOR. All gates with a big "N" mean they're formed by
    combining the respective gate with a NOT. So a NAND would be an AND gate
    with the output negated by NOT. XOR is short of "eXclusive OR". It's the
    exact same thing as an OR gate except two one inputs yields a zero --- that is,
    it triggers only when one input is *exclusively* turned one.

    But the big three to know are NOT, AND, and OR. Using them, you can build any
    of the other four.

    Bonus fact: using exclusively NAND gates, you can construct a NOT, AND, and
    OR. Same goes for NOR. The implication is that any and all circuits built
    with logic gates can be constructed solely from NAND or NOR gates.

[^3]:
    *Binary digit*: you might have heard of them, the name is sometimes shortened
    to just *"bits"*

[^4]:
    Our familiar "0" through "9" counting system is called *decimal*. Two other
    common systems to know, especially if you're in computer science, are
    *octal* (8 digits "0" through "7") and "hexadecimal" (16 digits "0" through
    "F"). Because hexadecimal requires more symbols than our 10-symbol counting
    system can handle, values "10" through "15" are represented using the letters
    "A" through "F" instead.

[^5]:
    Pun very much intended.

[^6]:
    For the sake of space, I'll skip over many of the nitty-gritty details behind
    the systems I'll be describing. If you're super into this stuff, I highly
    recommend [Code by Charles Petzold](https://www.amazon.com/Code-Language-Computer-Hardware-Software/dp/0735611319).

[^7]:
    How you wire logic gates together to pull off this feat is a little beyond us.
    If your curious, you can learn about those details on [Wikipedia](https://en.wikipedia.org/wiki/Adder_(electronics)).
    If you decide to learn more, you'll notice that I've also simplified the
    picture of the adder. More correctly, it should include inputs and
    outputs for the carry bits.

[^8]:
    A guy once made an ALU with redstone in Minecraft. Check it out: <https://www.youtube.com/watch?v=LGkkyKZVzug>

[^9]:
    In practice, encoders and decoders are fundamental circuits used in far more
    than just I/O. In fact, they feature prominently in your CPU's architecture,
    and are crucial building blocks of computer design.

[^10]:
    Not entirely true. Super-caliber hackers will sometimes write machine code
    to slip an exploit around a security system.

[^11]:
    C, by the way, is the language that runs the world. Literally. Your phone,
    your laptop, embedded systems you never knew existed, all of it runs on
    software written mostly in C (or it's controversial child, C++).
