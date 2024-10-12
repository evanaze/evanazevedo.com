import franken from "franken-ui/shadcn-ui/preset-quick";

/** @type {import('tailwindcss').Config} */
export default {
  presets: [franken()],
  content: ["./layouts/*.html"],
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
