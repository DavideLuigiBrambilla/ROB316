(
	define (problem hanoi4)
	(:domain hanoi)
	(:objects p1 p2 p3 d1 d2 d3 d4)
	(:init
			(smaller d1 p1)		
			(smaller d1 p2)
			(smaller d1 p3)
			
			(smaller d2 p1)		
			(smaller d2 p2)
			(smaller d2 p3)

			(smaller d3 p1)		
			(smaller d3 p2)
			(smaller d3 p3)

			(smaller d4 p1)		
			(smaller d4 p2)
			(smaller d4 p3)
			
			(smaller d1 d2)(smaller d1 d3)(smaller d1 d4)
			(smaller d2 d3)(smaller d2 d4)
			(smaller d3 d4)

			(clearDisk d1)

			(clearPeg p2)
			(clearPeg p3)

			(onPeg d4 p1)

			(onDisk d1 d2)
			(onDisk d2 d3)
			(onDisk d3 d4)

			(PinceFree)
			
	)
	(:goal 	(and	(onDisk d1 d2)
				(onDisk d2 d3)
				(onDisk d3 d4)
				(onPeg d4 p3)
			)
	)
)
