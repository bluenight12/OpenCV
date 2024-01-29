
#include "opencv2/opencv.hpp"
#include <iostream>

using namespace cv;
using namespace cv::dnn;
using namespace std;

int main()
{
	const String model = "opencv_face_detector_uint8.pb";
	const String config = "opencv_face_detector.pbtxt";

	VideoCapture cap(0);

	if (!cap.isOpened()) {
		cerr << "Camera open failed!" << endl;
		return -1;
	}

	Net net = readNet(model, config);

	if (net.empty()) {
		cerr << "Net open failed!" << endl;
		return -1;
	}

	Mat frame;
	while (true) {
		cap >> frame;
		if (frame.empty())
			break;

		Mat blob = blobFromImage(frame, 1, Size(300, 300), Scalar(104, 177, 123));
		net.setInput(blob);
		Mat res = net.forward();

		Mat detect(res.size[2], res.size[3], CV_32FC1, res.ptr<float>());

		for (int i = 0; i < detect.rows; i++) {
			float confidence = detect.at<float>(i, 2);
			if (confidence < 0.5)
				break;

			int x1 = cvRound(detect.at<float>(i, 3) * frame.cols);
			int y1 = cvRound(detect.at<float>(i, 4) * frame.rows);
			int x2 = cvRound(detect.at<float>(i, 5) * frame.cols);
			int y2 = cvRound(detect.at<float>(i, 6) * frame.rows);
			//초록색으로 사각형 그리기
			rectangle(frame, Rect(Point(x1, y1), Point(x2, y2)), Scalar(0, 255, 0));


			Mat img2 = frame(Rect(Point(x1, y1), Point(x2, y2))).clone();
			cvtColor(img2, img2, COLOR_BGR2GRAY);
			Mat bin, dst;
			//이진화
			threshold(img2,bin,0,255,THRESH_BINARY | THRESH_OTSU);
			//모폴로지 열기연산
			morphologyEx(bin, dst, MORPH_OPEN, Mat());
			imshow("dst", dst);
			
		}
		
		//threshold(src,bin,0,255,THRESH_BINARY | THRESH_OTSU);
		//morphologyEx(bin, dst1, MORPH<OPEN, Mat());

		imshow("frame", frame);
		if (waitKey(60) == 27)
			break;
	}
}