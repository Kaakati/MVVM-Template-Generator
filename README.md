<p align="center">
<img src="/assets/logo.png" width="200" />
<br/>
<img src="https://img.shields.io/badge/Swift-4.2-orange.svg" />
</p>

> Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away.

----
>Are you new to MVVM Design Pattern? Want to Learn it But feel overwhelmed of all the files you have to create?

## What kind of files the template will generate?
>This template generates all files that you need to create a new MVVM module. All generated code is Swift 4.2 compatible. `The UIView have a TableView implemented to demonastrate the data flow, you can either keep the TableView or replace with your own design.`

| File Name | Acts As | Description |
| :---         |     :---      |          :--- |
| `YourFileNameUI.swift`   | UIView     | This is where your design layout should be.  |
| `YourFileNameView.swift`    | View       | If you use Storyboard, Link this to it and delete UI file.   |
| `YourFileNameViewModel.swift`    | ViewModel | This is what will communicate with the Datasource & View.      |
| `YourFileName.swift`    | Model     | This is where to write your Model.    |

## How to install

#### Using script (easy)
Download the Repo to your computer, open the folder in Terminal, execute this command:
```shell
sudo swift install.swift
```

If all it's ok you now could find your template in Xcode.

#### Useage
```
Make Sure to initialize your viewModel and DataSource and set them to their designated variables.
Do not Import UIKit to the viewModel.
```

### Manual Installation
Go to Application folder, browse to the Xcode application icon. Right-click it and choose 'Show Package Contents'. Then browse to:
`Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application` and add "MVVM Module.xctemplate" file. Now you can find your template in Xcode.

## How it works?
Open xcode, Create a new group in your project for your module and named it e.g. `Profile Module` then create a new file inside that folder and select MVVM Module, type the name, and your files will be generated.

![](/assets/wizard-1.png)

![](/assets/wizard-2.png)

## MVVM diagram overview
![Preview](/assets/MVVM_Diagram.png)

## What is MVVM?
MVVM is not a framework but an approach to iOS application architecture, which stands for:

#### View
>The view consists of views and view controllers. It is responsible to receive user interactions and pass them to presenters for decision making. To keep the view simple, it shouldn’t contain any view logics. This is where to define how the view looks like, and nothing beyond this.

#### View Model
>The ViewModel defines the view logics, e.g. when to show a warning message or highlight a button. It is responsible to prepare content for the view to display. Whenever data is required, the view model requests data from the DataSource or the Model.

#### Model
>A Model is responsible for exposing data in a way that is easily consumable.

## Why MVVM?
After using MVVM, I've found it to be very beneficial in many ways. Let’s get back to the list of things we set out to accomplish when architecting our app to see if MVVM addresses them.

- Single responsibility principles applied.
- Easy to iterate on.
- Collaboration friendly.
- Separated out concerns.
- Spec-ability.
- Testability. 

## References
- [iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52#.ba7q8dcih)

## Authors

* [Mohamad Kaakati](https://www.twitter.com/kaakati)
