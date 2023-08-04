CXXFLAGS=-std=c++17 --coverage
REPORT=report.html
BINARIES=first_test

all: $(REPORT)

report.html: $(BINARIES)
	for f in $^; do  ./$$f; done
	gcovr --html -o $@

.PHONY: clean
clean:
	rm -f *.gcov *.gcda *.gcno $(BINARIES) $(REPORT)