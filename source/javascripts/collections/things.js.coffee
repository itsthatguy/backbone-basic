Kesha.Collections.Things = Backbone.Collection.extend
  url: ->
    return "#{Kesha.baseUrl}/things/#{Kesha.profile}"
  model: Kesha.Models.Thing

  parse: (response) ->
    #console.log "Kesha.Collections.Things::parse: (response) ->", response
    return response

  initialize: ->
    @others = new Kesha.Collections.Others()
    @others.on('reset', @updateOthers, @)
    setTimeout ( => @others.fetch()), 3000

  updateOthers: ->
    @others.each (model) =>
      _model = @get(model.get('udicode'))
      _model.set(model.toJSON()) if _model
