# ActionScript 3 Image Loading Issue

This repository demonstrates a common issue encountered when working with image loading in ActionScript 3.  The problem lies in accessing the `width` and `height` properties of a loaded `Image` object immediately after the `Event.COMPLETE` event is dispatched.  In some cases, these properties may not yet contain accurate values, leading to unexpected behavior or errors.

## Problem

The `handleComplete` function attempts to access and log the width and height of a loaded image. However, there's no guarantee these properties are populated immediately after the load event. This results in inconsistent values (sometimes 0) that can break the layout or image processing logic.

## Solution

A reliable solution involves using a timer or an `Event.ADDED_TO_STAGE` event listener to ensure the image is fully rendered before accessing its dimensions.  This approach gives the ActionScript runtime sufficient time to process the image data and populate the `width` and `height` properties accurately.