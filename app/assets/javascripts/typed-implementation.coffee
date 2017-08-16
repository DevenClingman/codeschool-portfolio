ready = ->
  Typed.new '.element',
    strings: [
      "My name is Deven Clingman"
      "A proper website is very important in today's business world."
      "I take pride in assisting business owners to represent themselves with a very professional website."
      "I hope you enjoy viewing my work."
    ]
    typeSpeed: 125
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready