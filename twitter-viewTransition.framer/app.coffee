# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: "Twitter ViewTransition"
	author: "Silvia Bormüller"
	twitter: "@svorklab"
	description: "View transition in Framer using FlowComponent"


# Import file "twitterTransition"
sketch = Framer.Importer.load("imported/twitterTransition@1x")
##
flow = new FlowComponent
	backgroundColor: '#FFF'

flow.showNext(sketch.feed)
flow.header = sketch.navBar
flow.footer = sketch.tabBar

sketch.iconTweet.onClick ->
	flow.showOverlayBottom(sketch.newTweet)
	
sketch.newTweet.onClick ->
	flow.showPrevious()