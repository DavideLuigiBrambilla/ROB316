(define (problem graph)
(:domain graph)
(:objects A B C D E F G H I)
(:INIT (ON A) (ARC A D) (ARC D A) (ARC B D) (ARC D B) (ARC C B) (ARC B C) (ARC C F) (ARC F C) (ARC E C) (ARC C E) (ARC H E) (ARC E H) (ARC A G) (ARC G A) (ARC E I) (ARC I E))
(:goal (AND (ON I))))