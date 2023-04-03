package {
    import flash.display.Sprite;
    import flash.media.Camera;
    import flash.media.Video;

    public class AIR_OBSvcam extends Sprite {

        private var __camera:Camera;
        private var __video:Video;

        public function AIR_OBSvcam() 
        {
            __camera = Camera.getCamera(Camera.names.indexOf("OBS Virtual Camera") as String);
            if (__camera != null) {
                __camera.setMode(640, 480, 30);

                __video = new Video();
                __video.attachCamera(__camera);
                addChild(__video);

                trace("Camera.names:  "+Camera.names);
                trace("OBS Virtual Camera is at index "+Camera.names.indexOf("OBS Virtual Camera"));
                trace("Attached "+__camera.name+" at index "+Camera.names.indexOf(__camera.name));
            } else {
                trace("No camera detected.");
            }
        }
    }// end class
}//end package