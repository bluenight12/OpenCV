#include "edge.h"

using namespace std;
using namespace cv;

void sobel_edge()
{
	Mat src = imread("lenna.bmp", IMREAD_GRAYSCALE);

	if(src.empty())
	{
		cerr << "Image load failed!" << endl;
		return;
	}

	Mat dx, dy;
	Sobel(src, dx, CV_32FC1, 1, 0);
	Sobel(src, dy, CV_32FC1, 0, 1);
	Mat fmag, mag;
	magnitude(dx, dy, fmag);
	fmag.convertTo(mag, CV_8UC1);

	Mat edge = mag > 150;

	imshow("src", src);
	imshow("mag", mag);
	imshow("edge", edge);
	waitKey();
	destroyAllWindows();
}

void erode_dilate()
{
	Mat src = imread("airplane.bmp", IMREAD_GRAYSCALE);
	//VideoCapture cap(0);
	//Mat src;

	/*if (src.empty()) {
		cerr << "Image load failed!" << endl;
		return;
	}*/

	Mat bin;
	//Mat gray;
	//cap >> src;
	//cvtColor(src, gray, COLOR_BGR2GRAY);
	//imshow("gray", gray);
	//threshold(gray, bin, 0, 255, THRESH_BINARY | THRESH_OTSU);
	threshold(src, bin, 0, 255, THRESH_BINARY | THRESH_OTSU);
	Mat dst1, dst2;
	erode(bin, dst1, Mat());
	dilate(bin, dst2, Mat());

	imshow("src", src);
	imshow("bin", bin);
	imshow("erode", dst1);
	imshow("dilate", dst2);

	
}