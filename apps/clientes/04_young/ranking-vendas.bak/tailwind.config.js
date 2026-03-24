/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{ts,tsx}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['"Space Grotesk"', 'ui-sans-serif', 'system-ui', 'sans-serif'],
      },
      colors: {
        young: {
          orange: '#fe5009',
          teal: '#00bcbc',
          bg: '#070a0f',
          panel: '#0b1220',
        },
      },
    },
  },
}

