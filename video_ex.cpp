#include "video_ex.h"

using namespace std;
using namespace cv;

Mat binary;
int bsize;
void gray_binary()
{
	VideoCapture cap(0);
	Mat frame;
	Mat gray;
	int i = 0;
	while(true)
	{
		cap >> frame;

		namedWindow("Original");
		imshow("Original", frame);
		cvtColor(frame, gray, COLOR_BGR2GRAY);
		namedWindow("Gray");
		imshow("Gray", gray);
		namedWindow("Binary");
		if (i == 0) {
			createTrackbar("Block Size", "Binary", nullptr, 200, on_trackbar, (void*)&gray);
			setTrackbarPos("Block Size", "Binary", 11);
			i++;
		}
		adaptiveThreshold(gray, binary, 255, ADAPTIVE_THRESH_GAUSSIAN_C, THRESH_BINARY, bsize, 5);
		imshow("Binary", binary);
		if (waitKey(10) == 27) break;
	}

	destroyAllWindows();
}

void on_trackbar(int pos, void* userdata)
{
	Mat src = *(Mat*)userdata;

	bsize = pos;
	if (bsize % 2 == 0) bsize--;
	if (bsize < 3) bsize = 3;
	
}

void findcts()
{
	VideoCapture cap(0);
	Mat frame;
	Mat gray;
	vector<vector<Point>> contours;
	int fourcc = VideoWriter::fourcc('D', 'I', 'V', 'X');
	int key;
	int w = cvRound(cap.get(CAP_PROP_FRAME_WIDTH));
	int h = cvRound(cap.get(CAP_PROP_FRAME_HEIGHT));
	while (true)
	{
		cap >> frame;
		imshow("frame", frame);
		if ((key = waitKey(10)) == 27) break;
		else if(key == 99)
		{
			imwrite("output.bmp", frame);
			Mat load = imread("output.bmp", IMREAD_GRAYSCALE);
			findcts_capture((void*)&load);
		}
	}
}

void findcts_capture(void* src)
{
	Mat gray = *(Mat*)src;
	Mat dst;
	cvtColor(gray, dst, COLOR_GRAY2BGR);
	adaptiveThreshold(gray, binary, 255, ADAPTIVE_THRESH_GAUSSIAN_C, THRESH_BINARY, 61, 5);
	imshow("binary", binary);
	vector<vector<Point>> contours;
	vector<Vec4i> hierarchy;
	findContours(binary, contours,hierarchy, RETR_CCOMP, CHAIN_APPROX_SIMPLE);
	for(int i = 0;i>=0;i=hierarchy[i][0])
	{
		Scalar c(rand() & 255, rand() & 255, rand() & 255);
		drawContours(dst, contours, i, c, -1, LINE_8, hierarchy);
	}
	imshow("dst", dst);
	waitKey();
}