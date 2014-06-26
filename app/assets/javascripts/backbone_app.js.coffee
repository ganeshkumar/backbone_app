window.BackboneApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    $(".popup").click (e) ->
      popupCenter $(this).attr("href"), 600, 600, "facebookAuth"
      e.stopPropagation()
      false
  change_password: (sign_in_count, user)->
    if sign_in_count is "1"
      $("#login").remove()
      user_model = new BackboneApp.Models.User(user)
      new BackboneApp.Views.ChangePassword({ el: $("#ChangePassword"), model: user_model })
    else
      alert "need to implement."

$(document).ready ->
  BackboneApp.initialize()

popupCenter = (url, width, height, name) ->
  left = (screen.width / 2) - (width / 2)
  top = (screen.height / 2) - (height / 2)
  window.open url, name, "menubar=no,toolbar=no,status=no,width=" + width + ",height=" + height + ",toolbar=no,left=" + left + ",top=" + top


$.ajaxSetup beforeSend: (xhr, settings) ->
  xhr.setRequestHeader "X-CSRFToken", $('meta[name="csrf-token"]').attr('content')
  return

