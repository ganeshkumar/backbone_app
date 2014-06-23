class BackboneApp.Models.User extends Backbone.Model
  defaults:
    "first_name": "",
    "last_name": "",
    "email": "",
    "phone_number": ""
  validation:
    first_name:
      required: true
    last_name:
      required: true
    email:
      required: true
      pattern: "email"