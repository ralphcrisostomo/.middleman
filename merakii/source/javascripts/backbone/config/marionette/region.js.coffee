do (Marionette) ->

  _.extend Marionette.Region::,

    show: (view, @isNoFade = false) ->
      @ensureEl()
      view.render()

      @close ->
        if @currentView and @currentView isnt view
          return
        @currentView = view

        @open view, ->
          if view.onShow
            view.onShow()
          view.trigger("show")

          if @onShow
            @onShow(view)
          @trigger("view:show", view)

    close: (cb) ->
      view = @currentView
      delete @currentView

      if not view
        if cb
          cb.call(@)
        return
      view.$el.fadeOut =>
        if view.close
          view.close()
        @trigger("view:closed", view)
        if cb
          cb.call(@)


    open: (view, callback) ->

      if @isNoFade
        @$el.html(view.$el)
      else
        @$el.html(view.$el.hide())
        view.$el.fadeIn =>
          callback.call(@)
