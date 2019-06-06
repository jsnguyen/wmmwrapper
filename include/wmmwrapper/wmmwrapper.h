#ifndef WMMWRAPPER_H 
#define WMMWRAPPER_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "wmm_src/GeomagnetismHeader.h"
#include "wmm_src/EGM9615.h"

double getMagneticDeclination(double latitude, double longitude, double height, double date);

#endif
