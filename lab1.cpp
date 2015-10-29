#include <iostream>


int mysum(int n){
	
	if(n<=0){
		return 0;
	}
	else
		return n + mysum(n-1);
}
int mysqrsum(int n){
	
	if (n<=0){return 0;}
	else
		return (n * n) + mysqrsum(n-1);

}
int mybettersum(int (*foo)(int),int n){
	
	if(n<=0){return 0;}
	else
		return foo(n)+mybettersum((*foo), n-1);

}
int main(){
	
while(1){	
	int test = 0;
	std::cout << "Enter a number: ";
	std::cin >> test;
	std::cout << mysum(test) << std::endl;
	std::cout << mysqrsum(test) << std::endl;
	std::cout << mybettersum(mysum,test) << std::endl;
	}

	return 0;
}

