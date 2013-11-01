@Merakii = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addInitializer ->
    App.module("MainApp").start()

  App.on "initialize:before", (options) ->


  App.addRegions
    regionHeader: "#js--region-header"
    regionMain:   "#js--region-main"
    regionFooter: "#js--region-footer"

  App.on "initialize:after", (options) ->
    if Backbone.history
      Backbone.history.start()

  App



