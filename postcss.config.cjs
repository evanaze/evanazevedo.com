module.exports = {
  plugins: [
    require("postcss-import"),
    require("postcss-apply"),
    require("tailwindcss"),
    require("franken-ui/postcss/sort-media-queries")({
      sort: "mobile-first",
    }),
    require("franken-ui/postcss/combine-duplicated-selectors")({
      removeDuplicatedProperties: true,
    }),
  ],
  darkMode: "class",
};
