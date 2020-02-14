;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Domain hanoi
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(
	define (domain hanoi)
	(:requirements :strips)
	(:predicates 	(clearDisk ?x)
				(clearPeg ?x)
				(onDisk ?x ?y)		;x au dessus de y
				(onPeg ?x ?y)
				(smaller ?x ?y) ;x<y
				(ReceiveDisk ?x)
				(PinceFree)
	)
	
	(	:action Take_from_peg 
		:parameters (?disk ?peg)
		:precondition 	(and	(onPeg ?disk ?peg)
						(clearDisk ?disk)
						(PinceFree)
					)
		:effect 	(and (not(PinceFree))
					(ReceiveDisk ?disk)
					(clearPeg ?peg)
					(not(onPeg ?disk ?peg))
					(not(clearDisk ?disk))
				)
	)


	(	:action Leave_on_peg 
		:parameters (?disk ?peg)
		:precondition 	(and	(clearPeg ?peg)	
						(ReceiveDisk ?disk)

					)
		:effect 	(and 	(not(clearPeg ?peg))
					(not(ReceiveDisk ?disk))
					(onPeg ?disk ?peg)
					(PinceFree)
					(clearDisk ?disk)
				)
	)


	(	:action Leave_on_disk
		:parameters (?disk1 ?disk2)
		:precondition 	(and	(smaller ?disk1 ?disk2)
						(clearDisk ?disk2)
						(ReceiveDisk ?disk1)
					)
		:effect 	(and	(not(ReceiveDisk ?disk1))
					(onDisk ?disk1 ?disk2)
					(PinceFree)
					(clearDisk ?disk1)
					(not(clearDisk ?disk2))
				)
	)



	(	:action Take_from_disk 
		:parameters (?disk1 ?disk2)
		:precondition 	(and	(onDisk ?disk1 ?disk2)
						(clearDisk ?disk1)
						(PinceFree)
					)
		:effect 	(and 	(not(onDisk ?disk1 ?disk2))
					(ReceiveDisk ?disk1)
					(clearDisk ?disk2)
					(not(PinceFree))
					(not(clearDisk ?disk1))
				)
	)


)