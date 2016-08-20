---
layout: notes/post
date:   2016-06-22 12:19:00
category: notes
section: notes

title: One Year In
subtitle: Lessons from a year of designing products with 100+ people
source:
medium-link: https://medium.com/@dfosco/one-year-in-c3609b5852aa#.843t5gku5

image-name: one-year-in.png
image-alt: '365 days'
stroke: no

full-length: true
excerpt_separator: <!--more-->

---

[VTEX](http://lab.vtex.com) is an online commerce platform with headquarters in Rio de Janeiro, almost 200 employees and 60+ software developers. Our clients range from big enterprise operations to small shops in over 11 countries around the world.

When I joined the team a year ago, I didn’t really have a lot of experience designing products for the web. Sure, I had enough education and knew how to do _design stuff_, but no matter how much you train yourself to _design_ things, you will never be prepared to the harsh reality of not being capable to deliver the products you want to.

<!--more-->

I’ve fell short of the design work I wanted to ship in the past year. That’s not to say I’m not proud of my team and what we shipped, on the contrary: [VTEX Storefront](http://storefront.vtex.com/en), our new CMS & development platform, has just been released in beta and it was the biggest design challenge I’ve ever faced.

The thing is, no matter how many design books I read, how many tutorials I went through or how many conferences I attended, when I wasn’t able to deliver the work the way I wanted, letting myself to feel let down was the only thing that made me able to move forward and learn something out of it.

I tried to condense some of these feelings below. This is an essay about designing products, written for designers, but there’s some personal insights in here as well — hope you don’t mind. It may also be pretty obvious to an experienced set of eyes, but hey, I had no idea about _any of this_ a year ago. I hope it’s useful for you.

### Managing Complexity

Our job as designers is to organize reality into new forms that were previously inexistent. And to make the concrete things we want to make, we must first understand all the words they hide behind.

Before you wireframe, before you code, before you do a single user flow, ask yourself: What is it that I’m building? Once you have a clear answer on that, ask your team: What is it that we’re building?

Answers will always differ. Bang your heads collectively into a wall until each and everyone of you agree with all the words necessary to define the problem and the product. There will be compromise and the words will evolve over time, but this first step is absolutely necessary. If you avoid conflict, vision will differ inside the team and it will bite all of you in the ass later on.

I spent a whole year designing a system with concepts that the team hadn’t fully agreed upon, and it impacted every decision that came afterwards: every turn-around, every refactor, every scrapped iteration and un-merged branch. These are always part of the process, but there’s a difference between a fast-paced iterative process and… well, doing so without a clear direction.

Your **first** responsibility is to prototype the **concepts** that will power what you and your team will build. To reduce the complexity of the world around you until it fits in a vocabulary, a wireframe, a back-end architecture or a marketing landing page. Most complex products have poorly defined concepts beneath the hood.

_Yes, an airplane dashboard is complex, but you get the idea._

### Move Fast and Break Stuff ™

Being the single designer on a team of developers shipping code in React is amazing. I love learning to code, and of course I wanted to be fully integrated with the team on a fast iteration cycle with minimal friction, so doing HTML/CSS prototypes inside React components was an obvious decision from the start.

Not only that, shipping code was the prime directive of the team. This is a fine directive for a software company of our size, but as with everything in life, it’s not that simple.

Time constraints and pressure to ship was so big that my design process was rushed (by myself). I went into coding too fast and made prototypes that didn’t really solved the problems at hand, forcing us to consistently thrown them away as we realized they didn’t meet anyone’s needs.

At one point, I got so frustrated with throwing away my fully-coded UI that I started to abstract it in components as I made them, doing an undocumented style guide just to make sure these UI components could be useful later on.

Of course that wasn’t a solution, but a side-effect of the unsolved problem: _poorly-defined concepts that lead to well-meaning, but flawed experiences_.

Don’t burn steps in your design process. You haven’t read all those boring O’Reilly books for nothing. If the deadlines are too tight, then shorten the scope, break it down in more iterations, make it work the way it should. It’s better to have a smaller product than a shittier one.

### Edges of Coding

VTEX is an environment that pushes designers to get their hands dirty on code, and I couldn’t be happier with it. However, after a year geeking out on React, some limitations showed up — and the edges between design and development became more clear to me.

The first one being: you are not a computer **scientist**. And you’ll never be a computer **scientist**, unless you study to become a computer **scientist**.

Seriously, what’s up with all this code craze? It’s as if programming is just like learning to ride a bike. Well, guess what… it’s not! Programming is a job that takes a shitload of hard work to be done properly. A junior front-end developer that’s serious about her craft will do in a few hours things it would take most designers a week to (maybe) get right.

That said, a steep learning curve is a great way to keep you on your toes and allows you to learn as much as you can while designing. And that’s a great thing! Ultimately, though, _your job is not to learn code_. If that was the case, you’d be a developer (which you’re not).

To all designers that work with code out there that are feeling overwhelmed, as I have several times in the past, take a deep breath and repeat:

> This isn’t working. It’s OK.

Now go ahead and change your environment. Because our tools should work for us, not the other way around.

The job at hand is to _deliver a prototype that communicates a solution to be implemented_. If the office network goes down you could write it down as a poem for all I care, just lower the definition of your prototype until you’re: **a)** comfortable with your tools and **b)** able to communicate the solution.

Of course the tools at hand will vary from team to team, but if yours is not comfortable with your toolset, well… you might question if they’re right for you.

One last note about tools: I don’t care how architecturally sound it might be, React is a _pain in the ass_ for designers to prototype with. If you’re a designer and want to click on one thing to make another thing move, stick to Angular.

### The Problem is Bigger than the Solution

You will never “design everything”. You will never fix all the problems or meet every user need. If you do — if your product actually reaches 100% of its goals, it means you weren’t ambitious enough and so much more could have been done. You’re selling yourself short and delivering less than you could for fear of failing.

If there’s one thing I want to take from this year of experience, it’s this:

> Let my bets be bold enough to take the risk they’ll go terribly wrong.

On practical terms, that means defining a crazy-ass vision at the beginning of the project and boiling it down into smaller, sequential, iterative parts: product and user goals, architectures, flows, features, views, components.

Define your vision from the outside and build it from the inside. It will let your product grow closer to the large vision you defined on the outset with less chance of losing itself along the way. You may never achieve the vision, but you’ll probably build something good on your way there.

---

In the past year I’ve made uncountable sketches, [hundreds of commits](https://github.com/dfosco), [wrote a bit](https://medium.com/@dfosco/git-for-designers-856c434716e#.ol7h4u1ls), [attended a conference](https://twitter.com/vtexlab/status/667756323317145600), [launched a beta](http://storefront.vtex.com/en), interviewed dozens of designers, hired a few, and failed doing some of these.

Here’s to another year building and failing alongside this amazing team 🎉
Thanks to Rodrigo Muniz, Augusto Barbosa, Luiza Breier, Bernardo Lemgruber, Alena Miklos, Breno Calazans, Thor Amorim, Anderson, Rodrigo Dumont, Gabriel Arrais, Tiago Neves, Leandro Oriente, Felix Ribeiro, Geraldo Thomaz and countless others. You all kick ass.

[We’re hiring.](http://lab.vtex.com/careers/)
