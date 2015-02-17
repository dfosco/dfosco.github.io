ios = Framer.Importer.load "imported/ios_notification"

###
Table of Contents

# Global Settings
# Ordering and Positioning of Layers
# Dragging Setup
# States
# Animation
# Events
 
###

###
Global Settings
###

ios.screen_fake.visible = false
ios.notification_exp.visible = false
Framer.Defaults.Layer.backgroundColor = "#FCFCFC"

### 
Ordering and Positioning of Layers
###

# iOS Shot (Artboard)
#ios.shot.style = border: '1px solid red'
ios.shot.x = 0
ios.shot.y = 0

# iPhone SuperLayer
ios.screen_1.superLayer = ios.iphone
ios.iphone.addSubLayer(ios.screen_1)
ios.iphone.screenFrame = {x: 30, y:30}

ios.iphone.originX = 0
ios.iphone.originY = 0
ios.iphone.scale = 0.5

# Screen Superlayer
ios.notification_bg.superLayer = ios.screen_1
ios.screen_1.addSubLayer(ios.notification_bg)
ios.screen_1.x = 68
ios.screen_1.y = 238
ios.screen_1.clip = true
notification_sound = new Audio('media/notification.mp3');


#Notification SuperLayer
ios.notification_content.superLayer = ios.notification_bg
ios.notification_bg.addSubLayer(ios.notification_content)

ios.notification_content_exp.superLayer = ios.notification_bg
ios.notification_bg.addSubLayer(ios.notification_content_exp)

ios.notification_bg.y = -331
ios.notification_bg.centerX()

ios.notification_content.centerX()
ios.notification_content.y = 171

ios.notification_content_exp.opacity = 0
ios.notification_content_exp.centerX()
ios.notification_content_exp.y = 15

###
Dragging Setup
###

# Make the layer draggable (only vertically)
ios.notification_bg.draggable.enabled = true
ios.notification_bg.draggable.speedX = 0

#Make dragframe twice the size of the container
ios.notification_bg.draggable.maxDragFrame = ios.notification_bg.frame
ios.notification_bg.draggable.maxDragFrame.height = ((ios.notification_bg.height)*2)

#Move dragframe upwards to accomodate downward scrolling
ios.notification_bg.draggable.maxDragFrame.y = -(ios.notification_bg.height+66)

###
States
###

ios.notification_bg.states.add
    show_bg: {y:-160}
    expand_bg: {height:265}
    final_bg_down: {y:0}
    final_bg_up: {y:-265}

ios.notification_content.states.add
	hide_content: {opacity:0}

ios.notification_content_exp.states.add
	expanded_content: {opacity:1}

###
Animation
###

ios.notification_bg.states.animationOptions = 
    curve: "spring(200,1000,5)"
    time: 0.15

ios.notification_bg.states.animationOptions = 
    curve: "linear"
    time: 0.15

ios.notification_content.states.animationOptions = 
    curve: "linear"
    time: 0.01

ios.notification_content_exp.states.animationOptions = 
    curve: "ease-in-out"
    time: 0.1
    
###
Events
###


# Initial Load 
Utils.delay 4, ->
    init = -> 
        ios.notification_bg.states.switch("show_bg")
        notification_sound.play()
    window.onload = init()

###
ios.screen_1.on Events.Click, ->
	ios.notification_bg.states.switch("show_bg")
	notification_sound.play()
	ios.screen_1.ignoreEvents = true
###

ios.notification_bg.on Events.DragStart, ->
    ios.notification_content.states.switch("hide_content")
    ios.screen_1.ignoreEvents = true

ios.notification_bg.on Events.DragMove, ->
    ios.notification_bg.states.switch("expand_bg")
    ios.notification_content_exp.states.switch("expanded_content")
    ios.screen_1.ignoreEvents = true

ios.notification_bg.on Events.DragEnd, ->
  ios.screen_1.ignoreEvents = true
  if ios.notification_bg.y < -150
  	ios.notification_bg.states.switch("final_bg_up")
  else
  	ios.notification_bg.states.switch("final_bg_down")

   
