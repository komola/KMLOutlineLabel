KMLOutlineLabel
===============

Simple UILabel drop-in replacement to add a customizable outline to labels.

## Usage

Just add the following line to the file you want to use KMLOutlineLabel in.

```
#import "KMLOutlineLabel.h"
```

You use the label like this (in a UIViewController):

```
KMLOutlineLabel *myLabel = [[KMLOutlineLabel alloc] initWithFrame:CGRectMake(0.0f,0.0f,80.0f,20.0f)];
myLabel.textColor = [UIColor whiteColor];
myLabel.outlineColor = [UIColor blackColor];
myLabel.outlineWidth = 2.0f;
myLabel.text = @"My supercool outlined text!";

[self.view addSubview:myLabel];
```

### Credits

Original code by [kprevas](http://stackoverflow.com/users/173421/kprevas) in his [stackoverflow answer](http://stackoverflow.com/a/1424665)