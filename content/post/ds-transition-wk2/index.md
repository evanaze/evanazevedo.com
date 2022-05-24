---
title: "🤔 Data Science Transition - Week 2"
date: 2022-05-22T18:33:37-07:00
series: ["Data Science Transition"]
tags: ["data science", "career"]
images: 
- pawel-czerwinski-0OIYhfHqooY-unsplash.jpg
draft: false
---
![Photo by Pawel Czerwinski on Unsplash](pawel-czerwinski-0OIYhfHqooY-unsplash.jpg)
A lot has happened in the past week regarding my short to medium-term career plans. Confusingly, I've already decided to make changes to my data science learning path. I know what you're probably thinking: "Boy, *that* was quick!" Well, not quite.

I've decided to put the data science in practice on hold in favor of building a side project and trying to see if I can make it into a small business.

## What's the deal?

Inspired by communities like [Indie Hackers](https://www.indiehackers.com/) and the book [The Minimalist Entrepreneur](https://www.minimalistentrepreneur.com/) by Sahil Lavingia, I'm interested in creating a sustainable business on the internet. I'm inspired by stories of Software-as-a-Service founders - a group of people that founded broadly software companies - in a way in which the goal is not to get as much venture funding as possible and destroy every shred of competition, but rather to build a lean startup to solve a customer's problem.

My idea for the project came from a podcast with Sahil, the author I shared earlier, who founded Gumroad. He hires employees completely remotely from around the world and offers nothing other than salary and equity. No health benefits, no twice-a-year powwows, no stipend for cellphone usage, no work from home stipend - nothing.

On one hand, you have companies like Apple and Google that want to create an almost cult-like passion from their employees and strive to create the best work environment possible to hire the top talent. This requires a ton of overhead but can pay off for companies with lots of cash or funding that are looking to change the world.

![Photo by Jonny Gios on Unsplash](jonny-gios-PDg180uwHvQ-unsplash.jpg)

On the other hand, you have companies like Gumroad who just want to help creators monetize their businesses online better. Sahil has played the venture-funded game before and gotten burned when his company was not able to grow at the speed needed to justify its high funding. Now he has swung in the other direction and wants the lightest company possible while still being able to get talented people dedicated to the cause.

He does this by not offering to fill any part of his employees' lives except the need to work to earn an income. For some, this is much more attractive than the aforementioned jobs at Google and Apple which have high requirements for your time and commitment. Think people like new mothers, immigrants or foreigners, or people living unusual lifestyles by the standard of corporate America.

These are potentially great sources of employees that are underserved in the current labor market. **Note**: I have no factual basis for these claims.

So, where does my project come in?

## Introducing deCode

I'm building deCode, the goal of which is to create a simple monetization layer on top of Github. Here's the problem: software development has a couple of modes in how people get paid:

- By the hour. This is where you get "freelance" software development.
- By the project. SOW's, contractors, and other hired guns. This can work great for large enterprises, but many businesses might struggle to have the scale to make this work.
- Salary. This is how most "talented" developers get paid because the salary offers the simplicity and security of consistent pay. Of course, the true rock star developers fall into the hourly or by the project categories, or even just have their own companies.

One thing that is missing is the ability to pay per unit of work, similar to how gig workers like Uber drivers or Instacart shoppers get paid. This is where deCode steps in. I want to help people like Sahil want to create a low-commitment, yet high-value place to work by allowing software developers to monetize each improvement to the software they make.

### How will it work?

As a Software Engineer, I solve "tickets" in a platform like Jira by:

1. Creating a branch on Github.
2. Changing the code on that branch.
3. Writing tests to make sure my code works.
4. Making sure my code will not break the main branch by running the relevant tests that already exist.
5. Having people look at my code and approve it.
6. Merging the code into the main codebase once the tests pass and everyone approves.

I'm not the only one either. This is called [trunk-based development](https://trunkbaseddevelopment.com/) and is a very common practice anywhere software is developed.

#### Release-based development

![Release-based development](trunk1a.png)

#### Trunk-based development

![Trunk-based development](trunk1b.png)

My vision for deCode is that it sits right at step 7: **Get paid**. I'm talking about a process that automatically takes place when the new code merges into the existing codebase that pays the software developer for their work. To solve this problem I'm expecting to also have to learn a little bit about smart contract development, as I suspect using a blockchain network is a natural solution to this problem. I settled on the name deCode because it is a portmanteau of the words "decentralized" and "code", and I am currently shopping for a domain name.

### How can I make this?

When you don't know whether something is going to work out, it's important to have as small of engineering time as possible so you can get it in front of people and begin to gather feedback. I did some serious thinking this week to make this project as small as possible. Despite that, I think there may be a decent amount of engineering required to make this work.

I believe I will need to learn some web-app development skills to pull this off. I plan to use the Python library [Django](https://www.djangoproject.com/) to do so since I am most experienced in Python.

In the long, long term on this project, I think a very cool solution would be to build this into its own blockchain, where it is free to host your code but you pay a fee to contract a code improvement.

## Why the change?

I'm making this change because I'm following my interests, and allowing myself to pursue something new. As discussed in my last blog [post](../ds-transition-wk1/), I believe that following intrinsic motivation is a great path to success because you will be able to produce your best work for longer.

I think this is a good decision because instead of being tied to using data science or machine learning in my next role, I am now building a broad and valuable skill set that will serve me in whatever I decide to do next. In other words, I'm choosing the "tool agnostic" route or focusing on strategy rather than tactics. All in all, the goal is to lower my expectations, get my first iteration out there, and see what happens!

## Blog updates

In the spirit of "building in public" and taking inspiration from Ben from [tinyprojects.dev](https://daily.tinyprojects.dev/), I'll also be posting daily updates on this blog under the [Daily](../../daily/) section (work in progress).

To not clog up your email inbox, I will be sending out a newsletter like this every week with updates from the past week.

<form
  action="https://formspree.io/f/xwkadlba"
  method="POST"
>
  <label>
    Enter your email to subscribe for updates:
    <input type="email" name="email">
  </label>
  <!-- your other form fields go here -->
  <button type="submit">Send</button>
</form>
