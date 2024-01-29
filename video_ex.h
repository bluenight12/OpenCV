#pragma once
#include "open_cv.h"
#include <vector>
void gray_binary();
void on_trackbar(int pos, void* userdata);
void findcts();
void findcts_capture(void* src);