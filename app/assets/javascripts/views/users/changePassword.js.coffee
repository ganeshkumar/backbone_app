class BackboneApp.Views.ChangePassword extends Backbone.View
  template: JST['users/change_password'],
  initialize: ->
    @render()
  events:
    'submit'        : "updatePassword"
  render: ->
    @$el.html(@template(model: @model))
    this
  updatePassword: (event)->
    event.preventDefault()
    password = @$el.find('#new_password').val()
    password_confirmation  = @$el.find('#new_password_confirmation').val()
    @model.save({password: password, password_confirmation: password_confirmation})
