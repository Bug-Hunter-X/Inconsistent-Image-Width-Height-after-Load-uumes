function handleComplete(event:Event):void {
  // Accessing the loaded image
  var loadedImage:Image = event.target as Image;

  //Trying to access width and height properties immediately after loading
  trace("Width:" + loadedImage.width + ", Height:" + loadedImage.height);
}