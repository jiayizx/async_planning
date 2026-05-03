(define (problem prune_cherry_tree_instance)
    (:domain prune_cherry_tree)
    
    (:init
        (sterilize_sharpen_pending)
        (measure_tree_pending)
        (cut_trunk_pending)
    )

    (:goal (and (sterilize_sharpen_done) (measure_tree_done) (cut_trunk_done)))
)
