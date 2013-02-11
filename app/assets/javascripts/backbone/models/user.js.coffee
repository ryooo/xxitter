class Xxitter.Models.User extends Backbone.Model
  paramRoot: 'user'

  defaults:
    name: null
    created_at: null

class Xxitter.Collections.UsersCollection extends Backbone.Collection
  model: Xxitter.Models.User
  url: '/users'
