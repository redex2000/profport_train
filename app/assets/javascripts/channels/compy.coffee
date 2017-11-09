App.compy = App.cable.subscriptions.create "CompyChannel",
  connected: ->
    @perform('follow')

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.activity-log').prepend(data['message'])
    $('.activity-log .event:first-child').fadeOut 400, -> $(this).fadeIn()
