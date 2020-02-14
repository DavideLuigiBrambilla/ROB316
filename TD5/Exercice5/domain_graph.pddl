;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Graphe Acyclique
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain graph)
  (:requirements :strips)
  (:predicates (arc ?from ?to)
	       (on ?from)
	       )

  (:action jump
	     :parameters (?from ?to)
	     :precondition (and (on ?from) (arc ?from ?to))
	     :effect (and (on ?to)(not(on ?from))))
)