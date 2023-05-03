/** @type {import('tailwindcss').Config} */
export default {
  mode: "jit",
  // purge: ["./src/**/*.html", "./src/**/*.vue", "./src/**/*.jsx"],
  purge: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {},
  },
  plugins: [require("@tailwindcss/forms")],
};
