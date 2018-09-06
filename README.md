# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Xiaoyi Liu**

Time spent: **15** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
- Counting tip for more than one person
- Always Remembering the bill amount across app restarts
- Rearrange context and background

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/lxy878/Pre-work/blob/master/walkthrough.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.  

The challenge I have encountered is the difference of syntax rules among Swift and other programming languages (C++, Java). In the Pre-work Guide video, the instructor didn't explain too much about the syntax in code instead of dragging terms to storyboard and linking to the code.  Because the guide video was too simple, I encountered several difficulties when I was developing Optional features.  For example adding the option to change tip percentage in the settings view, it required in code to reset the titles in segmented control, to change the array elements and to transmit data from one view to another. The solutions I had were applying UserDefaults.standard to save data in settings view and then in main view resetting titles of segmented control and the percentage numbers in the array.


## License

Copyright [2018] [Xiaoyi Liu]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
