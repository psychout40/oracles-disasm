; Technically, this table is indexed by Part.collisionType.
;
; But, Part.collisionType seems to always be the same as Part.id (bits 0-6, anyway). So
; the indices here can be considered equivalent to the Part ID.

; Each 4 bytes here is a bitset which determines which collision types the Part will
; respond to. If a bit is unset, it won't do anything when it collides with an object with
; that collisionType.

; Note: the bits are reversed to make it easier to look at (ie. collisionType 0 is at the
; far left)

; @addr{6ba2}
partCollisionTypes:
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x00
	dbrev %00001111 %11110110 %00000001 %00000000 ; 0x01
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x02
	dbrev %00001111 %11110110 %00000011 %11111110 ; 0x03
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x04
	dbrev %00001111 %11110110 %00000011 %01111110 ; 0x05
	dbrev %00000000 %00000000 %00000000 %00010000 ; 0x06
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x07
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x08
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x09
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x0a
	dbrev %00001111 %11110110 %00000011 %11111110 ; 0x0b
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x0c
	dbrev %00000000 %00000000 %00000000 %00111110 ; 0x0d
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x0e
	dbrev %00001111 %10000000 %00000000 %10000000 ; 0x0f
	dbrev %10001111 %11110111 %00000001 %00000000 ; 0x10
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x11
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x12
	dbrev %00000000 %00000000 %00000000 %00111111 ; 0x13
	dbrev %10001111 %11110110 %00000001 %00000000 ; 0x14
	dbrev %10001111 %11110110 %00000001 %00000000 ; 0x15
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x16
	dbrev %11111111 %11111111 %11111111 %11111111 ; 0x17
	dbrev %11111111 %10000010 %00000000 %00000000 ; 0x18
	dbrev %10110000 %00000000 %00000000 %00000000 ; 0x19
	dbrev %11111111 %10000010 %00000000 %00000000 ; 0x1a
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x1b
	dbrev %11111111 %10000010 %00000000 %00000000 ; 0x1c
	dbrev %11111111 %01000010 %00000000 %00000000 ; 0x1d
	dbrev %11110000 %00000000 %00000000 %00000000 ; 0x1e
	dbrev %10110000 %00000000 %00000000 %00000000 ; 0x1f
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x20
	dbrev %11110000 %00000000 %00000000 %00000000 ; 0x21
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x22
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x23
	dbrev %00001111 %11110110 %00000001 %01111110 ; 0x24
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x25
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x26
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x27
	dbrev %10001111 %11110100 %00000001 %00000000 ; 0x28
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x29
	dbrev %11111111 %11000000 %00000111 %01111110 ; 0x2a
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x2b
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x2c
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x2d
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x2e
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x2f
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x30
	dbrev %10110000 %00000000 %00000000 %00000000 ; 0x31
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x32
	dbrev %00000000 %00000000 %00000000 %00111110 ; 0x33
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x34
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x35
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x36
	dbrev %10110000 %00000000 %00000000 %00000000 ; 0x37
	dbrev %00001111 %10001010 %00000000 %00000000 ; 0x38
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x39
	dbrev %11111111 %11010000 %00000011 %11111110 ; 0x3a
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x3b
	dbrev %10110000 %00000000 %00000000 %00000000 ; 0x3c
	dbrev %10011111 %10001000 %00000000 %00000000 ; 0x3d
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x3e
	dbrev %00000000 %00000000 %00000001 %00000000 ; 0x3f
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x40
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x41
	dbrev %11110000 %00000000 %00000000 %00000000 ; 0x42
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x43
	dbrev %00001111 %11110110 %00000001 %00000000 ; 0x44
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x45
	dbrev %00000000 %00000000 %00000000 %00111110 ; 0x46
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x47
	dbrev %10110000 %00000000 %00000000 %00000000 ; 0x48
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x49
	dbrev %10001110 %00000000 %00000000 %00000000 ; 0x4a
	dbrev %10010110 %10000000 %00000000 %00000000 ; 0x4b
	dbrev %10010000 %00000000 %00000000 %00000000 ; 0x4c
	dbrev %10010110 %10000000 %00000000 %00000000 ; 0x4d
	dbrev %10010111 %10000000 %00000000 %00000000 ; 0x4e
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x4f
	dbrev %10111111 %11000000 %00000100 %00000000 ; 0x50
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x51
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x52
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x53
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x54
	dbrev %10001111 %11000110 %00000011 %11111110 ; 0x55
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x56
	dbrev %00000000 %00000000 %00000000 %00000000 ; 0x57
	dbrev %10110000 %00000000 %00000000 %00000000 ; 0x58
	dbrev %10000000 %00000000 %00000000 %00000000 ; 0x59
	; Part $5a exists, but doesn't use collisions
