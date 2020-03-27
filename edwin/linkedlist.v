struct Node<T> {
	data T
	next &Node
	key int
}

fn (n Node<T>) get_data() ?T {
	return n.data
}

fn (n Node<T>) get_next() Node<T> {
	return n.next
}


fn main() {
	n := Node<f64> {
		data: 10.0
		key: 0
	}
	assert n.data == 10.0
	assert n.next == 0.0
	assert n.key == 1
}