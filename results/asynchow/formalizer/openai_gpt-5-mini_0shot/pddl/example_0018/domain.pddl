(define (domain back_to_school)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (supplies_listed)
    (supplies_bought)
    (supplies_organized)
    (books_listed)
    (books_bought)
    (backpack_packed)
  )

  (:durative-action do_step1_get_supplies_list
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (supplies_listed))
    )
  )

  (:durative-action do_step2_buy_supplies
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step2)) (at start (supplies_listed)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (supplies_bought))
    )
  )

  (:durative-action do_step3_organize
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (supplies_bought)) (at start (books_bought)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (supplies_organized))
    )
  )

  (:durative-action do_step4_get_books_list
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (books_listed))
    )
  )

  (:durative-action do_step5_buy_books
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (books_listed)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (books_bought))
    )
  )

  (:durative-action do_step6_pack_backpack
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (supplies_organized)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (backpack_packed))
    )
  )
)
