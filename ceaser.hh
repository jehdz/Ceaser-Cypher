// ceaser.hh
// This header ensures C linkage is enforced when running C++ unit tessts on C code.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

#include "ceaser.h"

#ifdef __cplusplus
}
#endif
