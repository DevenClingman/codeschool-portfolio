ready = ->
  Typed.new '.element',
    strings: [
      "I'm a coder"
      "I'm a developer"
      "I'm Deven"
    ]
    typeSpeed: 75
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready