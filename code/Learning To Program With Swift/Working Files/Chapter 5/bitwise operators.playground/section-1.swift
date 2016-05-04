let invert: UInt8 = 0b00001111

let inverted = ~invert

println(String(inverted, radix: 2))

let shift : UInt8 = 0b00000001

println(String(shift << 3, radix: 2))

let divide : UInt8 = 0b10000000

println(String(divide >> 4, radix: 2))

// 1 1111100 - 124
// 124-128 = -4

// 1 1111100

let negative : Int = -4

negative << 1

negative << 2

negative >> 1

negative >> 2

negative >> 3



