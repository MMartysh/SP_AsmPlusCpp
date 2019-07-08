#include <stdio.h>
#include <math.h>
#include <conio.h>
extern "C" float  calculation(float A, float C, float D, float B);
extern "C"
{
	float A, C1, D, B;
};

void main(void)
{
	printf("if (C>D) X=(tan(A+C1/4)-12*D)/(A*B-1) else X=(-2*C1-sin(A/D)+53)/(A/4-B) \n");
	printf("A = ");		scanf_s("%f", &A);
	printf("B = ");		scanf_s("%f", &B);
	printf("C = ");		scanf_s("%f", &C1);
	printf("D = ");		scanf_s("%f", &D);
	if (C1>D)
		printf("Result(C):   %f \n", (tan(A + C1 / 4) - 12 * D) / (A*B - 1));
	else
		printf("Result(C):   %f \n", (-2 * C1 - sin(A / D) + 53) / (A / 4 - B));
	printf("Result(ASM): %f \n", calculation(A, C1, D, B));
	_getch();
}
