package main

import (
    "fmt"
    "log"
    "net/http"
)

func main() {
    http.HandleFunc("/", handler)
    http.HandleFunc("/hello", handler2)
    log.Fatal(http.ListenAndServe("localhost:8080", nil))
}

func handler(w http.ResponseWriter, r *http.Request) {

    if r.Method == "GET" {
        fmt.Fprintf(w, "(%s) Hello world from %s - %s\n", r.Method,  r.URL.Path, r.RemoteAddr)
    }
}

func handler2(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, " from %s\n",  r.URL.Path)
}

