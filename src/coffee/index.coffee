React = require('react') # no ./ prefix
CenteredImage = require('./centeredImageView')
CenteredButtonView = require('./centeredButtonView') # notice the './' prefix above for a local file

model = require('./model') # creates new instance of model on import
window.model = model

# render the logo at top
React.render(
    CenteredImage
        model: model
        scale: '80%'
    document.getElementById('logo-view-mount') # where to mount it
)

# render body of form
React.render(
    CenteredButtonView # which component to mount
        model: model
    document.getElementById('app-view-mount') # where to mount it
)