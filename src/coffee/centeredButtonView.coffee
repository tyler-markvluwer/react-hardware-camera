React = require('react')
FormButton = require('./formButton')

div = React.createFactory('div')
img = React.createFactory('img')

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
                        onClick: null # TODO(tmarkvluwer): fill me in!
                        innerText: 'Take Picture!'

                div # empty right block
                    className: 'col-sm-4'

module.exports = React.createFactory(CenteredButtonView)
