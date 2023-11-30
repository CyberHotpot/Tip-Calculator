# *TipCy*

**TipCy** is a tip calculator application for iOS.

Submitted by: **Cathy Huang**

Time spent: **3** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly (*At first I used the segmented control to adjust tip percentage, but after I added the slider, in case they contradict each other, I only kept the latter)

The following **optional** features are implemented:

* [ ] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] a tip splitting feature
- [x] a tip slider that adjusts the tip percentage.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://i.imgur.com/RKjXNlQ.gif)


GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

The biggest challenge for me is incorporating the tip splitting feature. Any changes in bill amount text field, tip slider, and size stepper should lead to changes in tip amount. However, changes in party size stepper should also update the size label. Therefore, I cannot only use one single function to react to all action senders. Instead, I wrote a function that was used to calculate and update tip and let the two @IBAction functions to call it.

## License

    Copyright [2022] [Cathy Huang]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

