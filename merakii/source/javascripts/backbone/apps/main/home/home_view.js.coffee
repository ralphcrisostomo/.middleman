@Merakii.module "MainApp.Home", (Home, App, Backbone, Marionette, $, _) ->

  class Home.View extends Marionette.ItemView
    template: (obj)->
      JST["backbone/apps/main/home/templates/home_view"](obj)
    onRender: ->
      counter = 0
      setInterval =>

        if counter > 100
          counter = 0

        @$('#js--progress').css
          width: "#{counter}%"

          counter++
      , 100



