window.Kesha =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  baseUrl: 'http://localhost:4000'
  defaultProfile: 'small'

  initialize: (params) ->
    @profile = if (params.profile) then params.profile else @defaultProfile
    @Router = new Kesha.Routers.Things()
    Backbone.history.start(root: "/")
