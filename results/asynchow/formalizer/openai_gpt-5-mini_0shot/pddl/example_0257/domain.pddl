(define (domain care-dwarf-rabbits)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (find_vet_done)
    (vacc_done)
    (parasite_done)
  )

  (:durative-action do_step1_find_vet
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (find_vet_done)) ) )

  (:durative-action do_step2_vaccinate
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step2)) (at start (find_vet_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (vacc_done)) ) )

  (:durative-action do_step3_deparasite
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step3)) (at start (find_vet_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (parasite_done)) ) )
)
