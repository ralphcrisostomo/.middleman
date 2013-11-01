@Merakii.module "MainApp", (MainApp, App, Backbone, Marionette, $, _) ->

  ###
  API
  ###
  API =
    initMain: ->
      new MainApp.Home.Controller()


  ###
  Handler
  ###
  MainApp.on "start", ( options ) ->
    API.initMain()
