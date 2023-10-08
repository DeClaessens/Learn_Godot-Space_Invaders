Player
------
3 Health
Can move Left or Right
Can Shoot
Can get Hit


Enemy
-----
X Health
Can Move Left, Right or Down
Can get Hit


Barrier
-------
Has 3 Health
Can get Hit
Can be removed


Timer
-----




Extra Game Logic
The player moves at FPS speed
The Enemy moves at a timeout speed
All bullets move at FPS speed

Enemies behave 'aware' of eachother
if 1 enemy reaches the edge, they all go down 1 and start moving in the opposite direction
Ever X Ticks, 1 of the bottom enemies shoots a bullet

Take this example
x  x  x  0  x
x  0  x     x
x     x     0
0     0

Only the 0's are allowed to shoot.
Every enemy must be aware of 4 things:
	- Am I the last in my column?
	- Am I touching the edge?
	- Has another ship touched the edge?
	- Is it my turn to shoot?
