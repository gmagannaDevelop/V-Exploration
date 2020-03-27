struct Node<T> {
	mut:
		data T
		next &Node
}

fn main() {
	
	m := Node(vcalloc(sizeof(f64)))
	
	mut n := Node<f64> {
		data: 10.0
		next: &m
	}

	n.next = &Node<f64> {
		data: 5.0
	}

	println(n.next)
}