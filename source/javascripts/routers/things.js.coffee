Kesha.Routers.Things = Backbone.Router.extend
  routes:
    ""              : "index"

  initialize: (options) ->
    @collection = new Kesha.Collections.Things()

  index: ->
    #console.log "Kesha.Routers.Things::index ->"
    @view = new Kesha.Views.Things(collection: @collection, el: $('.view-layer'))
    @collection.fetch()



