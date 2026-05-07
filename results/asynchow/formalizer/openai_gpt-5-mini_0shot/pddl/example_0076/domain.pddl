(define (domain getting-dressed)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shirt_on)
    (underwear_on)
    (pants_on)
    (appearance_checked)
    (socks_on)
    (shoes_on)
  )

  (:durative-action put_on_shirt
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (shirt_on)) ) )

  (:durative-action put_on_underwear
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (underwear_on)) ) )

  (:durative-action put_on_pants
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step3)) (at start (shirt_on)) (at start (underwear_on)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (pants_on)) ) )

  (:durative-action check_appearance_in_mirror
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step4)) (at start (pants_on)) (at start (shoes_on)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (appearance_checked)) ) )

  (:durative-action put_on_socks
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step5))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (socks_on)) ) )

  (:durative-action put_on_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step6)) (at start (socks_on)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (shoes_on)) ) )
)
