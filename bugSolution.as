function handleComplete(event:Event):void {
  var loadedImage:Image = event.target as Image;
  loadedImage.addEventListener(Event.ADDED_TO_STAGE, handleAddedToStage);
}

function handleAddedToStage(event:Event):void {
  trace("Width:" + loadedImage.width + ", Height:" + loadedImage.height); 
} 