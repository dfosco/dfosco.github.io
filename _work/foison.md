---
layout: work

title: Foison
tagline: E-Commerce Website built with Shopify

meta-hero: 
meta-alt: Foison E-commerce Product Page

meta-client: Cobra CNC
meta-role: Designer & Developer
meta-timeline: 2 Designers • March 2015

project-url: http://foison.com.br/

---

Foison is a brand for cutting plotters that distributed in Brazil by Cobra CNC, a small business owned by my family.

![This is a cutting plotter](plotter.png)

After a few years doing web design and digital marketing for them, we figured it was time to have an e-commerce to have direct online sales — and also to replace the terrible website they had before... made by myself, of course[^1].

This project was done in collaboration with designer and photographer Luisa Fosco[^2] — without her superb photography and graphic design skillset, the site wouldn't be half of what it is.

###Highlights

 - Shopify

Shopify is an emotional roller-coaster — a great platform to work with, but full of frustrating constraints.

While it's great not having to deal with PHP and local databases[^3], it all comes at a price: Jekyll has abysmal support for custom post types, gateway support in Brazil is severely lacking and their themes force you to keep all of your SCSS in a single monster file (unless you have a build system in place). Oh, and local development is unavailable <i class="twa twa-grin"></i>.

It is _so_ worth it, though. All of these problems are met by theme developers — merchants have it really easy with Shopify. Their admin dashboard is thoroughly well designed — from media uploads to pricing updates, to email notifications. All of these would add up to a ton of work if they had to be prepares outside of Shopify.

 - Information Architecture

We conducted interviews with sales and support teams and delved deep into support tickets to figure out the needs, the language and the modelling the products should have on the new site.

 - Graphic Design

Even though developing the site theme (based on Shopify's Timber framework) was a huge amount of work, the base graphic design work done by Luisa was essential to make a pattern library to support further phases of the project.

 - Snooping on your Users to make their lives better

Hotjar was an essential tool in iterating the design early on — seeing a playback of users visiting your site makes it so much easier to uncover roadblocks in your user flow. 

 - Build & Deploy

Although asset handling in Shopify is dismal, I have to commend them for the command-line interface that made my life so much easier. Using Dploy.io towards the end of the development also easened a burden and allowed me to develop exclusively on a `dev` branch that deploys to a dummy store and then send it to production on the press of a button — no more breaking changes on the live site. Next step would be to add Gulp to the workflow to make asset handling more sane, but one thing at a time...

###Outcomes

While visitor engagement and overall leads went up, the online sales never really took off... which is a bit disappointing, but also clear when looking in retrospect.

One reason for that might be the average ticket — a product starting at around $1000, is a bit too high for a traditional e-commerce setting. 

It may also be that, due to the highly specialized and technical nature of the product, more brand recognition is needed for a direct sale online without contact with a sales rep.

We are currently investigating options — while plan A is to gradually improve the site keeping metrics along the way, another possibility is to dump Shopify altogether and just keep the site as an online catalogue and lead generator for the products.

---

[^1]: **1.** Witness [_the horror_](horror.png)

[^2]: **2.​** Who happens to be my sister — and the child that actually went to Design School.

[^3]: **3.** Having experience with Jekyll and Liquid, the templating language it shares with Shopify, proved to be instrumental in getting up to speed with Shopify's theme development. 