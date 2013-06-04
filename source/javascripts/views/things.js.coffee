Kesha.Views.Things = Backbone.View.extend

  initialize: ->
    #console.log 'Kesha.Views.Things::initialize ->'
    @collection.on('error', @errorHandler, @)
    @collection.on('reset', @render, @)

  render: ->
    #console.log 'Kesha.Views.Things::render ->'
    @$el.html JST['things'](things: @collection)

    _self = @
    @collection.each (model) => _self.appendModelView(model)

    return @

  appendModelView: (model) ->
    view = new Kesha.Views.Thing(model: model)
    el = view.render().el
    $('.things').append(el)

  errorHandler: (collection, error) ->
    console.log 'Kesha.Views.Things::errorHandler() ', collection, error
    alert 'There was some error...'

