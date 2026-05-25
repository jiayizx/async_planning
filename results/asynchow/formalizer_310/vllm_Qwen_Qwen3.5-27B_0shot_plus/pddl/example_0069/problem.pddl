(define (problem get_into_car_problem)
  (:domain get_into_car)
  
  (:init
    (get_out_of_bed_pending)
    (prepare_outfit_pending)
    (go_to_bathroom_pending)
    (take_shower_pending)
    (get_out_of_shower_pending)
    (put_on_clothes_pending)
    (go_to_car_pending)
  )

  (:goal (and
    (get_out_of_bed_done)
    (prepare_outfit_done)
    (go_to_bathroom_done)
    (take_shower_done)
    (get_out_of_shower_done)
    (put_on_clothes_done)
    (go_to_car_done)
  ))
)
