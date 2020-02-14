(
	define (problem hanoi5)
	(:domain hanoi)
	(:objects p1 p2 p3 d1 d2 d3 d4 d5)
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

			(smaller d5 p1)		
			(smaller d5 p2)
			(smaller d5 p3)
			
			(smaller d1 d2)(smaller d1 d3)(smaller d1 d4)			(smaller d1 d5)
			(smaller d2 d3)(smaller d2 d4)(smaller d2 d5)
			(smaller d3 d4)(smaller d3 d5)
			(smaller d4 d5)

			(clearDisk d1)
			
			(clearPeg p2)
			(clearPeg p3)

			(onPeg d5 p1)

			(onDisk d4 d5)
			(onDisk d3 d4)
			(onDisk d2 d3)
			(onDisk d1 d2)

			(PinceFree)
			
	)
	(:goal 	(and		(onDisk d1 d2)
				(onDisk d2 d3)
				(onDisk d3 d4)
				(onDisk d4 d5)
				(onPeg d5 p3)
			)
	)
)
