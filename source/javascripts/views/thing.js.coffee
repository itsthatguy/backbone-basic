Kesha.Views.Thing = Backbone.View.extend

  className: 'thing'

  initialize: ->
    #console.log 'Kesha.Views.Thing::initialize ->'
    @on('error', @errorHandler, @)
    @on('reset', @render, @)
    @model.on('change', @updateOthers, @)

  render: ->
    #console.log 'Kesha.Views.Thing::render ->', @
    $(@el).html JST['thing'](thing: @model)
    return @

  updateOthers: () ->
    #console.log 'Kesha.Views.Thing::updateOthers ->', @
    _model = @model.toJSON()

    others = $(@el).find('.others')
    others.html "$#{_other}/night"
    others.fadeIn()

  errorHandler: (collection, error) ->
    console.log 'Kesha.Views.Thing::errorHandler() ', collection, error
    alert 'There was some error...'
