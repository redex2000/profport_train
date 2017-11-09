App.compy = App.cable.subscriptions.create "CompyChannel",
  connected: ->
    @perform('follow')

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    if 'event' of data
      $('.activity-log').prepend(data['event'])
      $('.activity-log .event:first-child').fadeOut 400, -> $(this).fadeIn()
    else if 'user' of data
      if data['status'] == 'online'
        $('.online-users').append(data['user'])
      else if data['status'] == 'offline'
        $('.user[data-id='+data['id']+']').fadeOut()
