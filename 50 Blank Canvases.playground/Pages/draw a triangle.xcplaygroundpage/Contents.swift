//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)

// show the axes
canvas.drawAxes()

//thick lines
canvas.defaultLineWidth = 5

// Draw 1st line
canvas.drawLine(fromX: 0, fromY: 0, toX: 100, toY: 0)

//move the origin to end line
canvas.translate(byX: 100, byY: 0)

//rotate the canvas
canvas.rotate(by: 120)

//draw the axes
canvas.drawAxes()

//draw the 2nd line
canvas.drawLine(fromX: 0, fromY: 0, toX: 100, toY: 0)

//translate again
canvas.translate(byX: 100, byY: 0)

//rotate again
canvas.rotate(by: 120)

//draw the 3rd line
canvas.drawLine(fromX: 0, fromY: 0, toX: 100, toY: 0)

//translate again
canvas.translate(byX: 100, byY: 0)

//rotate again
canvas.rotate(by: 120)

// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

