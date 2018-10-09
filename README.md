#  HSBubbleTransition
### Give your app a custom transition and make them attractive 

## Installation guide

Use Cocoapods to install it 
```
target 'MyApp' do
pod 'HSBubbleTransition'
end
```

## How to use?
```
import HSBubbleTransition 
```

Now add these line for transition in your From ViewController 

```
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   if segue.identifier == SECOND_SCREEN {
     let destinationScreen:SecondViewController = segue.destination as! SecondViewController
     destinationScreen.transitioningDelegate = self
   }
}
```
And then add UIViewControllerTransitioningDelegate

```
extension ViewController:UIViewControllerTransitioningDelegate {

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
      return HSBubblePresesntTransition.init(originFrame: addButton.frame, originBackgroundColor:UIColor.init(red: 188/255, green: 56/255, blue: 48/255, alpha: 1.0) , animationDuration: 0.5)
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
      guard let _ = dismissed as? SecondViewController else {
       return nil
      }
      return HSBubbleDismissTransition.init(destinationFrame: addButton.frame, destinationBackgroundColor: UIColor.init(red: 188/255, green: 56/255, blue: 48/255, alpha: 1.0), animationDuration: 0.5)
    }
    
}
```
### App Gif 
![](http://g.recordit.co/aKGJzANwBa.gif)


### Demo App link 
![](https://github.com/harshsrivastavaglobussoft/HSBubbleTransitionDemo)

### Requirement 
XCode 9.4 +
Swift 4.1 

### Author 
* Harsh Srivastava







