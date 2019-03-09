#include "pch.h"
#include <iostream>
#define N 30

using namespace std;

int main()
{
	int a[N];
	int i;
	int max1 = 0, max2 = 0;
	for (i = 0; i < N; i++)
		cin >> a[i];

	for (i = 0; i < N; i++)
	{
		if ((a[i] % 2 != 0) && (a[i] > max1))
			max1 = a[i];
		if ((a[i] % 2 == 0) && (a[i] > max2))
			max2 = a[i];
	}
	
	cout << abs(max1 - max2); //abs - модуль числа
	return 0;
}