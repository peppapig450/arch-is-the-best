#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <X11/Xlib.h>

int main()
{
      Display *d;
      Window w;
      XEvent e;
      int s;

      if (!(d = XOpenDisplay(NULL))) {
        fprintf(stderr, "Couldn't open display, but Arch is the best!\n");
        exit(1);
      }

      s = DefaultScreen(d);
      w = XCreateSimpleWindow(d, RootWindow(d,s), 0, 0, 110, 20, 0, 
                              0, WhitePixel(d,s));
      XSelectInput(d, w, ExposureMask | KeyPressMask);
      XMapWindow(d,w);

      while (1) {
              XNextEvent(d, &e);
              if (e.type == Expose) {
                      XDrawString(d, w, DefaultGC(d, s), 5, 15, "Arch is the best!", 17);
              }
      }

      XCloseDisplay(d);
      return 0;
}
