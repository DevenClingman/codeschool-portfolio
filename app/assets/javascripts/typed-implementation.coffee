ready = ->
  Typed.new '.element',
    strings: [
      "Im a coder"
      "Im a developer"
      "Im deven"
    ]
    typeSpeed: 45
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready