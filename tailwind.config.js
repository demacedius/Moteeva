/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './src/**/*.{html,js,svelte,ts}'
  ],
  theme: {
    extend: {
      backgroundImage: {
        'linear-46': 'linear-gradient(46deg, var(--tw-gradient-from), var(--tw-gradient-to))',
      },
      fontFamily: {
        'sans': ['Poppins', 'sans-serif'],
        'archivo': ['Archivo Narrow', 'sans-serif']
      }
    },
  },
  plugins: [],
}