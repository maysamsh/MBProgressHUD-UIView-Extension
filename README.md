# MBProgressHUD-UIView-Extension

# Usage
After include [MBProgressHUD](https://github.com/jdg/MBProgressHUD) in your project, to show the hud simple use:
Simple hud:
```sh
self.view.showHud()
```
    
Hud with progress and text:
```sh
self.view.showHud(withProgess: 0, hudText: "Uploading...")
...
//Setting progress
self.view.hudProgress = Float(0.2)
...
self.view.hudProgress = Float(1.0)
```

```hudText``` is optional, you can omit it.

To hide the hud:
```sh
self.view.hideHud()
```
