#ifndef BOOLEAN_H_
#define BOOLEAN_H_

#ifndef __cplusplus
#undef bool
#undef true
#undef false

typedef int bool;
enum { false = 0, true = 1 };
#endif

#endif
