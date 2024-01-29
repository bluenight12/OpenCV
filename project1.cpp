/*
#include "opencv2/opencv.hpp"
#include <iostream>

using namespace cv;
using namespace std;

void on_Trackbar(int value, void* userdata);

int main()
{
	// rose.bmp를 불러옴
	Mat img = imread("rose.bmp");

	// Blur라는 이름의 창을 설정
	namedWindow("Blur");
	// Sigma라는 트랙바 이름과 Blur 창안에 넣어주고 최소값은 1 시작값은 4 최대값은 8 그리고 on_Trackbar 함수를 이용한다
	createTrackbar("Sigma", "Blur", 0, 8, on_Trackbar, &img);
	setTrackbarMin("Sigma", "Blur", 1);
	setTrackbarPos("Sigma", "Blur", 4);
	// 입력영상 출력
	imshow("Rose", img);
	waitKey();
}

void on_Trackbar(int pos, void *userdata)
{
	//rose.bmp를 userdata를 통해 가져온다
	Mat src = *(Mat*)userdata;
	Mat blurred;
	//가우시안필터를 트랙바에서 받아온 시그마 값으로 적용한다.
	GaussianBlur(src, blurred, Size(), (double)pos);
	float alpha = 1.f;
	//블러가 되어있는 영상을 언샤프 마스크 필터링을 수행한다
	Mat dst = (1 + alpha)* src - alpha * blurred;
	//트랙바가 있는 Blur 창에 출력
	imshow("Blur", dst);
	//시그마 값은 cout 으로 출력한다.
	cout << "Sigma :" << pos << endl;
}
*/