#include "practice.h"

using namespace std;
using namespace cv;

Point m_down;
Point m_up;
Mat src;
Mat resize_img;
void practice1()
{
	VideoCapture cap(0);
	if (!cap.isOpened())
	{
		cerr << "load failed" << endl;
		return;
	}
	//src = imread("lenna.bmp", IMREAD_COLOR);
	/*if(src.empty())
	{
		cerr << "load failed" << endl;
		return;
	}*/
	

	namedWindow("Point");
	setMouseCallback("Point", on_mouse);
	while (true) {
		cap >> src;
		imshow("Point", src);
		if (waitKey(10) == 27) break;
	}
}

void on_mouse(int event, int x, int y, int flags, void*)
{
	switch(event)
	{
	case EVENT_LBUTTONDOWN:
		m_down = Point(x, y);
		break;
	case EVENT_LBUTTONUP:
		m_up = Point(x, y);
		resize_img = src(Rect(m_down.x, m_down.y, m_up.x - m_down.x, m_up.y - m_down.y));
		imshow("Point2", resize_img);
		imwrite("captured_image.bmp", resize_img);
		break;
	}
}

void practice2()
{
	Mat img = imread("lenna.bmp", IMREAD_COLOR);
	namedWindow("Lenna");
	createTrackbar("Change", "Lenna",
		nullptr, 16, on_track1, &img);
	imshow("Lenna", img);
	on_track1(0, &img);
	waitKey();
}

void on_track1(int pos, void* data)
{
	Mat img = *(Mat *)data;
	switch(pos)
	{
	case 1 :
		img = ~img;
		break;
	case 2:
		img.setTo(0);
		break;
	default:
		break;
	}
	imshow("Lenna", img);
}
