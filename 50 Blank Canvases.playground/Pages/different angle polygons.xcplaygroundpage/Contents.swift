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
let canvas = Canvas(width: 300, height: 600)


// DRAW A TRIANGLE

//where are we?
canvas.drawAxes()

//draw the triangle up and over a bit
canvas.translate(byX: 25, byY: 25)

//where am I now?
canvas.drawAxes()

//thick lines
canvas.defaultLineWidth = 5

//draw side 1
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0) //draw
canvas.translate(byX: 80, byY: 0) //move
canvas.rotate(by: 120) //rotate by exterior angle

//draw side 2
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120)  //rotate by exterior angle

//draw side 3
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120)  //rotate by exterior angle

//go back to where we started
canvas.translate(byX: -25, byY: -25)

//DRAW A SQUARE (4-SIDED POLYGON)

//where am I now?
canvas.drawAxes()

//draw the polygon up and over a bit
canvas.translate(byX: 25, byY: 125)

// thick lines
canvas.defaultLineWidth = 5

//draw all sides
for _ in 1...4 {
    //loop happens 4 times
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    canvas.translate(byX: 80, byY: 0) //move
    canvas.rotate(by: 90)  //rotate by exterior angle
}
//go back to where we started
canvas.translate(byX: -25, byY: -125)

// DRAW A 5-SIDED POLYGON

//where am I now?
canvas.drawAxes()

//draw the polygon up and over a bit
canvas.translate(byX: 25, byY: 225)

// thick lines
canvas.defaultLineWidth = 5

//draw all sides
for _ in 1...5 {
    //happens 5 times
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 72)
}
//back to start
canvas.translate(byX: -25, byY: -225)

//WHAT IS A FUNCTION?
//what does the syntax look like?
func drawPolygon(withSides n: Double,sideLegnth l: Int, startX x :Int, startY y:Int) {
    
    //move to the starting point
    canvas.translate(byX: x, byY: y)
    
    //find the interior angle
    let interior = (n-2)*180/n
    
    //find the exterior angle
    let exterior = 180 - (n-2)*180/n
    
    //draw the sides using a loop
    for _ in 1...Int(n) {
        //draw the side
        canvas.drawLine(fromX: 0, fromY: 0, toX: l, toY: 0)
        //move to end of line
        canvas.translate(byX: l, byY: 0)
        //rotate
        canvas.rotate(by: Degrees(exterior))
    }
}
// Draw a septagon
drawPolygon(withSides: 7, sideLegnth: 50, startX: 125, startY: 525)
/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

