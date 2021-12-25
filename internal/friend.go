package corsola

import "fmt"

type Friend struct {
	name string
}

func (friend Friend) sayHi(times int) {
	for i := 0; i < times; i++ {
		fmt.Printf("Hello %s\n", friend.name)
	}
}
