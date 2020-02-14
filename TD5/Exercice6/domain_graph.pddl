;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Domain Singe
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(
	define (domain SINGE)
  	(:requirements :strips)
	(:constants singe bananes caisse)
  	(:predicates 	(PosSing ?x)
	         		(PosCaisse ?x)
				(PosBanane ?x)
				(PosInit ?x)	
				(Bas)
				(Haut)
				(HasBananas)
				(HandEmpty)

	)

  	(:action Aller
		:parameters (?from ?to)
		:precondition 	(and	(PosSing ?from)
						(Bas)
					)
	     :effect	(and	(PosSing ?to)
					(not(PosSing ?From))
				)
	)


  	(:action Pousser
		:parameters (?from ?to)
		:precondition 	(and	(PosSing ?from)
						(PosCaisse ?from)
						(Bas)
					)
	     :effect	(and	(PosCaisse ?to)
					(not(PosCaisse ?from))
					

			)
	)


  	(:action Monter
		:parameters (?Pos)
		:precondition 	(and	(PosSing ?Pos)
						(PosCaisse ?Pos)
						(Bas)
					)
	     :effect	(and	(Haut)
					(not(Bas))
				)
	)

  	(:action Descendre
		:parameters (?Pos)
		:precondition 	(and	(PosSing ?Pos)
						(PosCaisse ?Pos)
						(Haut)
					)
	     :effect	(and	(Bas)
					(not(Haut))
				)
	)

  	(:action Attraper
		:parameters (?Pos)
		:precondition 	(and	(PosSing ?Pos)
						(PosCaisse ?Pos)
						(PosBanane ?Pos)
						(HandEmpty)
						(Haut)
					)
	     :effect	(and	(HasBananas)
					(not(HandEmpty))
				)
	)

  	(:action Lacher
		:parameters (?Pos)
		:precondition 	(and 	(HasBananas)
						(PosInit ?Pos)
						(PosSing ?Pos)

					)
	     :effect	(and	(not(HasBananas))
					(PosBanane ?Pos)
					(HandEmpty)
				)
	)









)
