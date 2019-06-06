#ifndef WMMWRAPPER_H 
#define WMMWRAPPER_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "GeomagnetismHeader.h"
#include "EGM9615.h"

double GetMagneticDeclination(double latitude, double longitude, double height, double date);

#endif
