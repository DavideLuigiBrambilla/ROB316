(
	define (problem hanoi2)
	(:domain hanoi)
	(:objects p1 p2 p3 d1 d2)
	(:init
			(smaller d1 p1)		
			(smaller d1 p2)
			(smaller d1 p3)
			
			(smaller d2 p1)		
			(smaller d2 p2)
			(smaller d2 p3)
			
			(smaller d1 d2)

			(clearDisk d1)	
			
			(clearPeg p2)
			(clearPeg p3)

			(onPeg d2 p1)

			(onDisk d1 d2)

			(PinceFree)
			
	)
	(:goal 	(and	(onDisk d1 d2)
				(onPeg d2 p3)
			)
	)
)