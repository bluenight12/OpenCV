#include "mask.h"

using namespace cv;
using namespace std;

void mask_setTo()
{
	Mat src = imread("lenna.bmp", IMREAD_COLOR);
	Mat mask = imread("mask_smile.bmp", IMREAD_GRAYSCALE);

	if(src.empty() || mask.empty())
	{
		cerr << "Image load failed!" << endl;
		return;
	}
	src.setTo(Scalar(0, 255, 255), mask);
	imshow("src", src);
	imshow("mask", mask);

	waitKey();
	destroyAllWindows();
}

void mask_copyTo()
{
	Mat src = imread("airplane.bmp", IMREAD_COLOR);
	Mat dst = imread("field.bmp", IMREAD_COLOR);
	Mat mask(Size(src.cols, src.rows), CV_8UC1);
	//threshold(src2, mask, 160, 255, THRESH_BINARY_INV);
	for(int i = 0;i<src.rows;i++)
	{
		Vec3b* p = src.ptr<Vec3b>(i);
		
		for(int j=0;j<src.cols;j++)
		{
			if ((p[j][0] > 200 && p[j][1] > 150 && p[j][2] > 140))
				mask.at<uchar>(i, j) = 0;
			else mask.at<uchar>(i, j) = 255;
		}
	}	
	src.copyTo(dst, mask);
	imshow("dst", dst);
	waitKey();
	destroyAllWindows();
}

void blurring_gaussian()
{
	Mat src = imread("lenna.bmp", IMREAD_GRAYSCALE);
	if(src.empty())
	{
		cerr << "Image load failed!" << endl;
		return;
	}
	Mat dst;

	for (int sigma = 1; sigma <= 5; sigma++) {
		GaussianBlur(src, dst, Size(), (double)sigma);
		String text = format("sigma = %d", sigma);
		putText(dst, text, Point(10, 30), FONT_HERSHEY_SIMPLEX, 
			1.0, Scalar(255), 1, LINE_AA);
		imshow("dst", dst);
		waitKey();
	}
	destroyAllWindows();
}

