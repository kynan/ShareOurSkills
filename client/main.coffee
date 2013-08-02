Accounts.ui.config
  requestPermissions:
    facebook: ['email', 'read_friendlists', 'read_stream', 'user_photos', 'user_relationships', 'user_status']

Template.userprofile.profile = Meteor.user().services.facebook
