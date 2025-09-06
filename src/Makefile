all : helloworld_c helloworld_cpp

helloworld_c : helloworld.c
	aarch64-linux-gnu-gcc -o /app/build/helloworld_c /app/src/helloworld.c

helloworld_cpp : helloworld.cpp
	aarch64-linux-gnu-g++ -o /app/build/helloworld_cpp /app/src/helloworld.cpp

clean:
	rm /app/build/helloworld_c /app/build/helloworld_cpp