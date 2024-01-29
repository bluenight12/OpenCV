#include "brightness.h"

using namespace std;
using namespace cv;

void on_brightness(int pos, void* userdata)
{
	Mat src = *(Mat*)userdata;
	Mat dst = src + pos;

	imshow("dst", dst);
}

void brightness4()
{
	Mat src = imread("lenna.bmp", IMREAD_GRAYSCALE);
	if(src.empty())
	{
		return;
	}
	namedWindow("dst");
	createTrackbar("Brightness", "dst", 0, 100, on_brightness, (void*)&src);
	on_brightness(0, (void*)&src);
	waitKey();
	destroyAllWindows();
}
