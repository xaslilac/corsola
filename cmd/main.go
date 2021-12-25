package main

import (
	"flag"
	"fmt"
	"os"

	"github.com/aslilac/corsola/internal/friend"
)

type Args struct {
	hello bool
	count int
}

func main() {
	for i, arg := range os.Args {
		fmt.Printf("Arg[%d]: %s\n", i, arg)
	}

	var args Args
	flag.BoolVar(&args.hello, "hello", false, "say hi")
	flag.IntVar(&args.count, "count", 1, "number of times to say hi")
	flag.Parse()

	if args.hello {
		for i := 0; i < args.count; i++ {
			fmt.Println("Hello from a flag!")
		}
	}

	puppy := friend.Friend{name: "Puppy!"}
	puppy.sayHi()
}
