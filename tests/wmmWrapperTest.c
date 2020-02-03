#include <stdio.h>
#include "wmmwrapper/wmmwrapper.h"

// Testing the world magnetic field model wrapper function

int main(){
  printf("Magnetic Declination for (0d lon,0d lat,0m msl) at 2019.0: %f\n",GetMagneticDeclination(0,0,0,2019.0));
  return 0;
}
