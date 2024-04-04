/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./public/*.{html,js}"],
  theme: {
    extend: {
      colors: {
        'primary-light': '#CD890A',
        'primary-mid': '#B17709',
        'primary-dark': '#966D22',
        'primary-extraDark': '#A44F00',
        'darkColor': '#424B54',
        'darkerColor': '#3A4147',
        'gradient-primary-light-from': '#F0DCB6',
        'gradient-primary-dark-from': '#C27501',
        'gradient-primary-dark-to': '#FFD28F',
        'gradient-dark-from': '#424B54',
        'gradient-dark-to': '#66788A',
      },
      fontFamily: {
        'noto':['"Noto Serif"','serif'],
        'poppins':['Poppins','sans-serif'],
      },
    },
  },
  plugins: [],
}

