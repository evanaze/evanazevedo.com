---
title: "39 - Trying to convert census tracts to hexagons"
date: 2022-11-09T09:20:09-07:00
series: ["Daily Log"]
tags: ["daily-log"]
toc: false
input: 90
output: A more parallelizable way to convert census tract polygons to H3 hexes
draft: false
---
I'm working on combining my geographic data using Uber's H3 library. I'm starting with the census tract data because I have clean polygon and latitude/longitude data. Today I worked on creating an efficient way to represent the census tract using H3's hexes.

My approach a couple of days ago was to just stitch together all of the census tracts and then try to fill with high-resolution hexes, which overloaded my machine. Instead, Now I'm trying to efficiently fill the tracts individually and then combine them together. I suspect I will be able to port this work over to the zip codes/neighborhoods when I get to that part with the Zillow data.

Here is my goal for how to fill the census tracts, taken from [this](https://github.com/uber/h3-py-notebooks/blob/master/notebooks/urban_analytics.ipynb) useful guide that I'm following:
![Map hex fill goal](polyfill_goal.png)

When I get to the raster data section from Ursa Space I can use [this package](https://github.com/nmandery/h3ronpy) for the same purpose.

I also re-downloaded all of the census data and set up `pyenv`, `jupyter notebook`, and other important dev tools.

{{% subscribe %}}
