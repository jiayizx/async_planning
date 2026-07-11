(define (problem play_video_games)
    (:domain video_games_planning)
    
    (:init
        (pick_system_pending)
        (search_games_pending)
        (order_items_pending)
        (setup_system_pending)
        (find_interesting_games_pending)
    )

    (:goal (and
        (pick_system_done)
        (search_games_done)
        (order_items_done)
        (setup_system_done)
        (find_interesting_games_done)
    ))
)
