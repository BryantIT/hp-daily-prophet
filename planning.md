## Harry Potter Wedding Planner

* add a tag column for images? Pass in tags, iterate over tags later? Also meta data key value pair(Key by:, Value: name) possibly create a method?

* Login for bride and groom
    https://guides.rubyonrails.org/active_record_validations.html
    --Name - string, validations: cannot be blank
    --Email - string, validations: must me an email address
    --Address - hstore data type, validations: cannot be blank (way to live verify an address?)
      https://medium.com/@webteamu/rails-best-practice-persisting-addresses-in-postgresql-e81329d3db7b
    --phone_number - string, validations: 10 digits after stripping
    --password, - password_digest, validations: more than 6 letters. Special characters allowed
    --Hogwarts_house - string
    --vendors
* login for guests
    Unique invite code?
    http://www.ryanmcmahon.org/articles/8
    --Name - string, validations: cannot be blank
    --Email - string, validations: must me an email address
    --Address - hstore data type, validations: cannot be blank (way to live verify an address?)
      https://medium.com/@webteamu/rails-best-practice-persisting-addresses-in-postgresql-e81329d3db7b
    --phone_number - string, validations: 10 digits after stripping
    --password, - password_digest, validations: more than 6 letters. Special characters allowed
* Table for the event. Bride/groom has many guests through event
* way to contact bride and groom before signup
    --Contact page, request invite
* Todo list for bride/groom
* add to calendar feature
* store contracts, music lists, table arrangements etc
* Store music in a jukebox or a spotify API?
      https://developer.spotify.com/documentation/widgets/guides/adding-a-spotify-play-button/
* Bride has many guests
* Groom has many guests
* guest show page
* Scope method for finding out RSVPs
* guests belong to bride or groom
* bride and groom belong to each other
* https://github.com/bborn/communityengine
* contact book for guests as well as staff/vendors
* pinterest style idea board
* digitial invitations/rsvp
* scrap book area
* photosharing: tag albums?
                create timeline based on time stamps
                live upload?
                editable by bride or Groom
                updates on changes to album
* Strip "UTC" from time in events
* Bride and groom as admin?
* Donations wish list
* Guest book
* snap chat filter
* send wedding updates via email/custom url
* count down
* custom directions
* live stream
* video splash page
      https://blog.bitsrc.io/5-open-source-html5-video-players-for-2018-38fa85932afb
* animated back ground
      https://slicejack.com/fullscreen-html5-video-background-css/
* a way to mass email invites?
* track hogwarts houses
    https://www.chartjs.org/
    https://apexcharts.com/
* Include link to take test
* Use slugs
    https://github.com/norman/friendly_id
* Add log in with facebook
* Look up how to setup ActionMailer
* Populate seed file
* Setup production database
* Push to Heroku

# Template Ideas
    --This for a summary page/confirmation
        https://tinyppt.com/daily-prophet-newspaper-template-harry-potter-google-slides.html
    --Video background idea
        https://demo.themewagon.com/preview/free-html5-splash-screen-template
    --Fun stuff to do with text
        https://freefrontend.com/css-text-animations/
    --Cursor stuff
        https://tympanus.net/Tutorials/CustomCursors/index3.html
    --Train Ticket
        https://codepen.io/oliviale/pen/MZZYyO
