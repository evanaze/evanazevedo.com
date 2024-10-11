---
title: "Formatting Golang-Templated HTML With Prittier and Nixvim"
date: 2024-10-10T19:05:14-06:00
series: [""]
tags: [""]
images: [""]
toc: true
draft: true
---

I struggled to even save the Go-templated HTML files that power this website because [prettier](https://prettier.io/), my formatter, thought they were plain HTML and freaked out about the double brackets and stuff.

Fortunately, the awesome [prettier-plugin-go-template](https://github.com/NiklasPor/prettier-plugin-go-template) exists; however, using Nixvim complicated things because the `.prettierrc` file approach to integrating the two wouldn't work.
So where's what worked for me to get prettier to properly format Golang HTML files using Nixvim and Conform as my formatter manager:

**Note**: The `prettier-plugin-go-template` nix package only exists on the unstable branch.

```nix
# conform.nix
{...}: {
    prettier-plugin-go-template.enable = true;
    plugins.conform-nvim = {
      enable = true;
      settings = {
            ...
            formatters = {
                prettier = {
                    options.ft_parsers.html = "go-template";
                  };
            };
        };
}
```

Hopefully that helps you get up and running if you found the same obstacle.
As with all things Nix, the solution is both more complicated and simpler than you would think.

You can see my full Nixvim config here: https://github.com/evanaze/nix/tree/main/home/nixvim

{{% subscribe %}}
