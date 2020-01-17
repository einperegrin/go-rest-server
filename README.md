## Go REST server
Just for learning.

Run: `go run main.go`

or you can compile it: `go build -o main .` and then run the binary file: `./main`

Building docker: `docker build -t go-rest-server . `

Starting container: `docker run --rm -it -p 8000:8000 go-rest-server`