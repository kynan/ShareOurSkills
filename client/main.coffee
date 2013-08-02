Accounts.ui.config
  requestPermissions:
    facebook: ['email', 'read_friendlists', 'read_stream', 'user_photos', 'user_relationships', 'user_status']

Template.userprofile.profile = () -> Meteor.user().services.facebook

Template.userprofile.LookingFor = () -> [
    'Paid work',
    'Internship',
    'Volunteering',
    'Training',
    'Courses',
    'General Experience',
    'Helping others',
    'Higher education'
    ]

Template.userprofile.InterestedIn = () -> [
    'Sport',
    'Music',
    'Art',
    'Science',
    'Health',
    'Childcare',
    'Helping others',
    'Food',
    'Catering',
    'Anything else you want to add'
]

Template.userprofile.StopsYou = () -> [
    'Financial issues',
    'Transport',
    'Childcare',
    'Clothing',
    'Qualifications',
    'Experience',
    'Information',
    'Another reason (please tell us)'
]

Template.userprofile.Travel = () -> [
    'All of Cardiff',
    'Birchgrove',
    'Caerau',
    'Canton',
    'Cardiff',
    'Creigiau',
    'Ely',
    'Grangetown',
    'Gwaelod-y-garth',
    'Lisvane',
    'Llandaff',
    'Llandaff North',
    'llanedeyrn',
    'Llanishe',
    'Llanrumney',
    'Pentwyn',
    'Pentyrch',
    'Radyr',
    'Rumney',
    'St Fagans',
    'St Mellons',
    'Taffs Well',
    'Thornhill',
    'Tongwynlais',
    'Whitchurch',
    'Outside of Cardiff'
]

Template.userprofile.rendered = () ->
  check = (e) -> e.checked = true
  profile = Meteor.user().profile
  if profile.goals?
    check e for e in this.findAll('.goals') when e.value in profile.goals
  if profile.interests?
    check e for e in this.findAll('.interests') when e.value in profile.interests
  if profile.barriers?
    check e for e in this.findAll('.barriers') when e.value in profile.barriers
  if profile.travel?
    check e for e in this.findAll('.travel') when e.value in profile.travel

Template.userprofile.events =
  'click button.submit': (evt, template) ->
    profile =
      'profile.age': template.find('#age').value
      'profile.goals': (e.value for e in template.findAll('.goals') when e.checked)
      'profile.interests': (e.value for e in template.findAll('.interests') when e.checked)
      'profile.barriers': (e.value for e in template.findAll('.barriers') when e.checked)
      'profile.travel': (e.value for e in template.findAll('.travel') when e.checked)
    console.log profile
    Meteor.users.update Meteor.userId(), $set: profile, (err) ->
      console.log err if err?

Template.createProject.events =
  'click button.submit': (evt, template) ->
    # Prevent form from being submitted
    evt.preventDefault()
    project =
      title: template.find('#projectTitle').value
      description: template.find('#projectDescription').value
      image: template.find('#projectImage').value
    console.log project
    Projects.insert project, (err, id) ->
      console.log err if err?
      console.log "Created project with id #{id}" unless err?
Template.projects.projects = () ->
  Projects.find()
