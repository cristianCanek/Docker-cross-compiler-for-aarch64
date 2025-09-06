# Docker cross-compiler for aarch64

## Build Docker container for cross-compiling for aarch64:

```bash
docker build -t cristiancampuzano/aarch64-linux-gnu-gcc:latest .
```

Test the Docker container by asking for the compiler's version:

```bash
docker run --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest aarch64-linux-gnu-gcc --version
docker run --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest aarch64-linux-gnu-g++ --version
docker run --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest make --version
```

## Compile the "helloworld" code example

Using the C compiler:

```bash
docker run -v C:\workspaces\sdl-helloworld\src:/app/src -v C:\workspaces\sdl-helloworld\build:/app/build --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest aarch64-linux-gnu-gcc -o /app/build/helloworld_c /app/src/helloworld.c
```

Using the C++ compiler:

```bash
docker run -v C:\workspaces\sdl-helloworld\src:/app/src -v C:\workspaces\sdl-helloworld\build:/app/build --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest aarch64-linux-gnu-g++ -o /app/build/helloworld_cpp /app/src/helloworld.cpp
```

Using make:

```bash
# Compile all.
docker run -v C:\workspaces\sdl-helloworld\src:/app/src -v C:\workspaces\sdl-helloworld\build:/app/build --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest make --directory=/app/src/

# Compile only the c example.
docker run -v C:\workspaces\sdl-helloworld\src:/app/src -v C:\workspaces\sdl-helloworld\build:/app/build --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest make --directory=/app/src/ helloworld_c

# Compile only the cpp example.
docker run -v C:\workspaces\sdl-helloworld\src:/app/src -v C:\workspaces\sdl-helloworld\build:/app/build --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest make --directory=/app/src/ helloworld_cpp

# Remove previously compiled apps.
docker run -v C:\workspaces\sdl-helloworld\src:/app/src -v C:\workspaces\sdl-helloworld\build:/app/build --rm cristiancampuzano/aarch64-linux-gnu-gcc:latest make --directory=/app/src/ clean
```
## Running the example

Copy the executable file(s) to a device with the target architecture and run it/them from there.