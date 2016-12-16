# Autolayout with Rotation
---

### Readings: 
1. [The Adaptive Model](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/TheAdaptiveModel.html#//apple_ref/doc/uid/TP40007457-CH19-SW1)
2. [Size Class Specific Layout](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/Size-ClassSpecificLayout.html#//apple_ref/doc/uid/TP40010853-CH26-SW1)

---
### Objectives:
Continue exploring autolayout in cases where our app can be used in landscape or portrait

---
### Goals: 

1. Go through some examples from last class to illustrate not to use `frames/bounds`
2. Do a simple implementation of `willTransitionToTraitCollection`
3. Helpful debugging tip for viewing constraints in the lldb
4. Take a brief look at size classes
5. Look at a Swift-y way to save you some typing

---
### Exercises

#### 1. Simple Textfields
![vertical text](./Images/textField_buttons_vert.png) 

![horizontal text](./Images/textFields_horiz.png)

#### 2. Profile Screen
![Profile Vertical](./Images/profileVert.png)

#### Style 1

![Profile Vertical Ver 1](./Images/profileHoriz.png)

#### Style 2

![Profile Vertical Ver 2](./Images/alternative_profile_horizontal.png)
