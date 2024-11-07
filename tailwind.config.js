import franken from "franken-ui/shadcn-ui/preset-quick";

/** @type {import('tailwindcss').Config} */
export default {
  presets: [
    franken({
      customPalette: {
        ":uk-theme-custom": {
          "--background": "217 100% 95%",
          "--foreground": "217 5% 0%",
          "--card": "217 50% 90%",
          "--card-foreground": "217 5% 10%",
          "--popover": "217 100% 95%",
          "--popover-foreground": "217 100% 0%",
          "--primary": "217 75.4% 50.6%",
          "--primary-foreground": "0 0% 100%",
          "--secondary": "217 30% 70%",
          "--secondary-foreground": "0 0% 0%",
          "--muted": "179 30% 85%",
          "--muted-foreground": "217 5% 35%",
          "--accent": "179 30% 80%",
          "--accent-foreground": "217 5% 10%",
          "--destructive": "0 100% 30%",
          "--destructive-foreground": "217 5% 90%",
          "--border": "217 30% 50%",
          "--input": "217 30% 18%",
          "--ring": "217 75.4% 50.6%",
          "--radius": "0.5rem",
        },
        ".dark.uk-theme-custom": {
          "--background": "217 50% 5%",
          "--foreground": "217 5% 90%",
          "--card": "217 50% 0%",
          "--card-foreground": "217 5% 90%",
          "--popover": "217 50% 5%",
          "--popover-foreground": "217 5% 90%",
          "--primary": "217 75.4% 50.6%",
          "--primary-foreground": "0 0% 100%",
          "--secondary": "217 30% 10%",
          "--secondary-foreground": "0 0% 100%",
          "--muted": "179 30% 15%",
          "--muted-foreground": "217 5% 60%",
          "--accent": "179 30% 15%",
          "--accent-foreground": "217 5% 90%",
          "--destructive": "0 100% 30%",
          "--destructive-foreground": "217 5% 90%",
          "--border": "217 30% 18%",
          "--input": "217 30% 18%",
          "--ring": "217 75.4% 50.6%",
          "--radius": "0.5rem",
        },
      },
    }),
  ],
  content: ["./**/*.html"],
  safelist: [
    {
      pattern: /^uk-/,
    },
    "ProseMirror",
    "ProseMirror-focused",
    "tiptap",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
};
