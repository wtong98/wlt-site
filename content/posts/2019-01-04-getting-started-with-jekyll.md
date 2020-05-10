---
date: "2019-01-04T00:00:00Z"
preview: /images/getting-started-with-jekyll/preview.png
tags:
- tech
- howto
title: Getting started with Jekyll
toc: true
---

A simple guide to setting up a Jekyll installation. Existing documentation left
some pieces out, so I've put together this document to guide anyone else (and
my future self) through the process.

*Audience: tech-oriented folks comfortable on the command line*
<!--more-->

{{< figure src="/images/getting-started-with-jekyll/jekyll_logo.png"
           alt="jekyll"
           caption="Source: https://github.com/jekyll/brand" >}}

Jekyll is a *static website generator*. It doesn't host. It doesn't create
content. It's a clean, simple machine that you feed text and out pops magically
formed HTML. It's "blog aware", so it includes clever tools and short-cuts for
bloggers --- but don't feel limited. You can use it to build portfolios, documentation
sites, tech showcases, anything you can dream. If you're a tech-friendly blogger
ready to get your hands dirty with a little web dev, Jekyll is perfect for you.

First things first, to follow this guide, you'll need a \*nix system (Mac, Linux)
and be okay with command-line stuff. Personally, I run an Arch Linux based
distribution, so my examples are geared towards my home system. Your mileage
may vary.

**EDIT:** I no longer use Jekyll and have since switched to
[Hugo](https://gohugo.io/), a static generator written in Go. It's faster,
cleaner, the documentation is better, and an all around a pleasure to use.
Highly recommend. A post about Hugo is upcoming.


## Initial steps
Jekyll is written in Ruby. To use it, you'll need a [Ruby installation](https://www.ruby-lang.org/en/downloads/):

```shell
# Me, on Arch Linux
$ sudo pacman -S ruby

# Debian, Ubuntu
$ sudo apt install ruby

# Mac
$ brew install ruby
```

To verify your installation, go ahead and check:

```shell
$ ruby --version
```

Next, we'll need Bundler:
```shell
$ gem install bundler
```

In Ruby, [gems](https://en.wikipedia.org/wiki/RubyGems) are packaged pieces of code,
like .jar files for Java or modules for Python. Bundler is a utility that
makes managing gems possible with minimum teeth-gnashing and hair loss.

Bundler itself will have been installed in your gem user installation directory.
To see where that is, do:
```shell
$ gem env
RubyGems Environment:
  - RUBYGEMS VERSION: 2.7.7
  - RUBY VERSION: 2.5.3 (2018-10-18 patchlevel 105) [x86_64-linux]
  - INSTALLATION DIRECTORY: /usr/lib/ruby/gems/2.5.0
  - USER INSTALLATION DIRECTORY: /home/username/.gem/ruby/2.5.0
# ... and lots more
```
And that line at the bottom that says "USER INSTALLATION DIRECTORY" is your
ticket. Add that file path to your environment PATH variable to use Bundler
on the command line.

For me, in place of [USER INSTALLATION DIRECTORY],
I'd put `/home/username/.gem/ruby/2.5.0`. Note the `/bin` appended to the path:
```shell
# Using bash (note: you do not need an "export"):
$ PATH=$PATH:[USER INSTALLATION DIRECTORY]/bin

# Using fish, my preferred shell:
$ set -gx PATH $PATH [USER INSTALLATION DIRECTORY]/bin
```

To make the change permanent, add that command to your `.profile` (or `.bash_profile`),
`config.fish`, or whatever you use for setting environment variables. Restart your
shell to allow the change to take effect.


## Installing Jekyll
Now, we're in shape for grabbing Jekyll. In preparation, we need to tell Bundler
to install gems in the same default directory as RubyGem:
```shell
$ bundle config path [USER INSTALLATION DIRECTORY]
```

Next, Bundler needs a special file called a `Gemfile` to begin installing gems.
Go ahead and make one and copy the following into it:
```
source 'https://rubygems.org'
gem 'github-pages', group: :jekyll_plugins
```
Then to execute, in the **same directory as the `Gemfile`**, do:
```shell
$ bundle install
Fetching gem metadata from https://rubygems.org/............
Fetching version metadata from https://rubygems.org/...
Fetching dependency metadata from https://rubygems.org/..
Resolving dependencies...
# ... and lots more ...
```
Now sit back and relax. It'll take a few minutes to run, installing Jekyll along
with a whole hog of useful plugins for the Jekyll + GitHub marriage.

After installation completes, make a new blog site and `cd` into it:
```shell
$ bundle exec jekyll new myblog
# ... output from jekyll ...
$ cd myblog
```

Note that we're now in the directory `myblog`. To test your newly minted blog, do:
```shell
$ bundle exec jekyll serve
```
This command will compile your Jekyll files into fully-formed HTML, place them in the
directory `_site`, and host these files off a development server. To check
out the website, open your favorite browser and navigate to <http://localhost:4000>.

Note: remember to prepend `bundle exec` to every `jekyll` command you execute.
Doing so tells `jekyll` to run using gems installed by Bundler. So when the
documentation tells you to do `jekyll build`, you should instead do
`bundle exec jekyll build`.


## Looking ahead
And now, you're the proud owner of a beautiful, minimal-functioning blog! But
it's still a ton of work to get from here to the fabulous work of
social-media-art your have in mind. On your journey, you will need to:

### Learn how Jekyll works
Get your hands dirty in the details of Jekyll with the official
[step-by-step guide](https://jekyllrb.com/docs/step-by-step/02-liquid/). It
covers things like the [Liquid](https://shopify.github.io/liquid/) template
language for shnazzing up your HTML, the mechanics of the site generator, and
deploying to [GitHub Pages](https://pages.github.com/).

### Host on Github pages
Speaking of GitHub Pages, when you're ready to show the world your hard work,
it's time to publish on the Interwebs. Make sure you familiarize yourself with
the basics of [Github](https://guides.github.com/activities/hello-world/) and
[git version control](https://git-scm.com/docs/gittutorial). Then start a
[GitHub Pages](https://pages.github.com/) repository to host your site. Pick
a catchy [domain name](https://domains.google) to polish.

### Play with themes
The default theme generated by Jekyll is [minima](https://github.com/jekyll/minima).
I like it. I used it as a starting base for this site. But for those seeking
a more sublime theme experience, there's [this beauty](https://jekyllthemes.io/),
plenty more on Google, or dream up your own.

Happy blogging!
