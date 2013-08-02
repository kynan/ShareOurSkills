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
























