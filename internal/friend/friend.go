package friend

import "fmt"

type Friend struct {
	Name string
}

func (friend Friend) SayHi(times int) {
	for i := 0; i < times; i++ {
		fmt.Printf("Hello %s\n", friend.Name)
	}
}
