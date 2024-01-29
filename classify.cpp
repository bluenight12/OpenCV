#include "classify.h"

using namespace cv;
using namespace cv::dnn;
using namespace std;

int classify(int argc, char* argv[])
{
	// Load an image

	Mat img;

	if (argc < 2)
		img = imread("beagle.jpg", IMREAD_COLOR);
	else
		img = imread(argv[1], IMREAD_COLOR);

	if (img.empty()) {
		cerr << "Image load failed!" << endl;
		return -1;
	}

	// Load network

	Net net = readNet("bvlc_googlenet.caffemodel", "deploy.prototxt");

	if (net.empty()) {
		cerr << "Network load failed!" << endl;
		return -1;
	}

	// Load class names

	ifstream fp("classification_classes_ILSVRC2012.txt");

	if (!fp.is_open()) {
		cerr << "Class file load failed!" << endl;
		return -1;
	}

	vector<String> classNames;
	string name;
	while (!fp.eof()) {
		getline(fp, name);
		if (name.length())
			classNames.push_back(name);
	}

	fp.close();

	// Inference

	Mat inputBlob = blobFromImage(img, 1, Size(224, 224), Scalar(104, 117, 123));
	net.setInput(inputBlob, "data");
	Mat prob = net.forward();

	// Check results & Display

	double maxVal;
	Point maxLoc;
	minMaxLoc(prob, NULL, &maxVal, NULL, &maxLoc);

	String str = format("%s (%4.2lf%%)", classNames[maxLoc.x].c_str(), maxVal * 100);
	putText(img, str, Point(10, 30), FONT_HERSHEY_SIMPLEX, 0.8, Scalar(0, 0, 255));
	imshow("img", img);

	waitKey();
	return 0;
}

int face()
{
	const String model = "res10_300x300_ssd_iter_140000_fp16.caffemodel";
	const String config = "deploy.prototxt";
	//const String model = "opencv_face_detector_uint8.pb";
	//const String config = "opencv_face_detector.pbtxt";

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

			rectangle(frame, Rect(Point(x1, y1), Point(x2, y2)), Scalar(0, 255, 0));

			String label = format("Face: %4.3f", confidence);
			putText(frame, label, Point(x1, y1 - 1), FONT_HERSHEY_SIMPLEX, 0.8, Scalar(0, 255, 0));
		}

		imshow("frame", frame);
		if (waitKey(1) == 27)
			break;
	}
}