Kesha.Collections.Others = Backbone.Collection.extend
  url: ->
    return "#{Kesha.baseUrl}/things/#{Kesha.profile}/others"

  parse: (response) ->
    #console.log "Kesha.Collections.Others::parse: (response) ->", response
    return response.organic

