(define (problem make_girl_feel_beautiful_problem)
    (:domain make_girl_feel_beautiful)
    
    (:init
        (buy_clothes_pending)
        (photo_shoot_pending)
        (sing_song_pending)
        (write_poem_pending)
        (give_card_pending)
    )

    (:goal (and
        (buy_clothes_done)
        (photo_shoot_done)
        (sing_song_done)
        (write_poem_done)
        (give_card_done)
    ))
)
