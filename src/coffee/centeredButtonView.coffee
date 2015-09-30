React = require('react')
FormButton = require('./formButton')

div = React.createFactory('div')
img = React.createFactory('img')

take_picture = () ->
    console.log navigator

    navigator.camera.getPicture(
        (imageURI) ->
            model.set_image_uri(imageURI) # model is global
        (err) ->
            console.log "err"
            console.log err

        # cam options
        # quality: 75
        # targetWidth: 320
        # targetHeight: 320
        # saveToPhotoAlbum: false
    )

# View Class
CenteredButtonView = React.createClass
    #################################
    #       React Functions
    #################################

    render: ->
        div
            className: 'container'

            div
                className: 'row' # one row in grid...bootstrap thing

                div # empty left block
                    className: 'col-sm-4'
                div
                    className: 'col-sm-4 center-block'
                    FormButton
                        id: 'take-pic-button'
                        onClick: take_picture
                        innerText: 'Take Picture!'

                div # empty right block
                    className: 'col-sm-4'

module.exports = React.createFactory(CenteredButtonView)
