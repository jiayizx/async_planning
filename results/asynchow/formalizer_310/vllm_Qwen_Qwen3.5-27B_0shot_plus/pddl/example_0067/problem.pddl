(define (problem put_on_clothes_problem)
    (:domain put_on_clothes)
    
    (:init
        (open_dresser_pending)
        (take_out_shirt_pending)
        (take_out_socks_pending)
        (take_out_pants_pending)
        (put_on_shirt_pending)
        (put_on_socks_pending)
        (put_on_pants_pending)
    )

    (:goal (and
        (open_dresser_done)
        (take_out_shirt_done)
        (take_out_socks_done)
        (take_out_pants_done)
        (put_on_shirt_done)
        (put_on_socks_done)
        (put_on_pants_done)
    ))
)
