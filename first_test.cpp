#include <iostream>

int function1(int param) {
    return param +2;
}

int function2(int param) {
    return param +3;
}

int main() {
    std::cout << "Result is " << function1(40) << '\n';
}