#myLayers = Framer.Importer.load("imported/ios_notification")
Framer.Defaults.Layer.backgroundColor = null

###
Drawing Layers
###

#Base Square Layer
layerGrey = new Layer
    width:300, 
    height:300, 
    opacity:1, 
    backgroundColor:"#FCFCFC",
    borderRadius:"10px",

#Red Eye Layer
layerEye = new Layer
    backgroundColor:"#CD544E",
    width:120, height:120,
    borderRadius:"60px",
    opacity:1,
    index: 10,

#Red Ring Layer
layerRing = new Layer
    backgroundColor:"#9C403B",
    width:140, height:140,
    borderRadius:"70px",
    opacity:1,
    index: 100,

###
Ordering and Positioning of Layers
###

#Base Square SuperLayer
layerRing.superLayer = layerGrey
layerGrey.addSubLayer(layerRing)
layerRing.centerX()
layerRing.centerY()

layerGrey.centerX()
layerGrey.centerY()

#Red Ring SuperLayer
layerEye.superLayer = layerRing
layerRing.addSubLayer(layerEye)
layerEye.centerY()
layerEye.centerX()

###
Animation
###

animFadeOut = layerRing.animate
    properties: 
        #opacity: 0.95 
        scale: 0.90
        curve: "linear"
        time: 8

animFadeIn = animFadeOut.reverse()
animFadeOut.on Events.AnimationEnd, -> animFadeIn.start()
animFadeIn.on Events.AnimationEnd, -> animFadeOut.start()


###
States
###

# Add states
layerGrey.states.add 
    second: {scale:0.75} 
    third:  {scale:3}
    fourth: {rotation:90, scale:1} 


# Set the animation options
layerGrey.states.animationOptions = 
    curve: "spring(50,3,0)"

# Toggle states on click
layerGrey.on Events.Click, -> 
    layerGrey.states.next()