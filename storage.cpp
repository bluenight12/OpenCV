#include "storage.h"

using namespace cv;
using namespace std;

String filename = "mydata.json";

void writeData()
{
	String name = "Jane";
	int age = 10;
	Point pt1(100, 200);
	vector<int> scores = { 80,90,50 };
	Mat mat1 = (Mat_<float>(2, 2) << 1.0f, 1.5f, 2.0f, 3.2f);

	FileStorage fs(filename, FileStorage::WRITE);

	if(!fs.isOpened())
	{
		cerr << "File open failed!" << endl;
		return;
	}

	fs << "name" << name;
	fs << "age" << age;

	fs << "point" << pt1;
	fs << "scores" << scores;
	fs << "data" << mat1;
	fs.release();
}