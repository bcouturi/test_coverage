CXXFLAGS=-std=c++17 --coverage

all: report.html

report.html: first_test
	./first_test
	gcovr --html -o report.html

.PHONY: clean
clean:
	rm -f *.gcov *.gcda *.gcno first_test report.html