$document = $(document)

is_touch_screen = 'ontouchstart' in document.documentElement;
width = window.innerWidth;

if(width > 640) {
  // console.log("screen above 640px");
} else {
  // console.log("screen under 640px");
}