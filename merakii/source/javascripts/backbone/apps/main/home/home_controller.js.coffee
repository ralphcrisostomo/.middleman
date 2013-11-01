@Merakii.module "MainApp.Home", (Home, App, Backbone, Marionette, $, _) ->

  ###
  Controller
  ###
  class Home.Controller extends Marionette.Controller

    initialize: ->
      console.log "init home"
      @showHome()

    showHome: ->
      homeView = @getHomeView()
      App.regionMain.show homeView

    getHomeView: ->
      new Home.View()
