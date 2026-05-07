(define (domain learn_digital_art)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hardware_chosen)
    (gimp_krita_downloaded)
    (corel_painter_considered)
    (manga_software_chosen)
    (photoshop_paid)
  )

  (:durative-action choose_hardware
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hardware_chosen)))
  )

  (:durative-action download_free_software
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (hardware_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gimp_krita_downloaded)))
  )

  (:durative-action consider_corel_painter
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (hardware_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (corel_painter_considered)))
  )

  (:durative-action choose_manga_software
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (hardware_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (manga_software_chosen)))
  )

  (:durative-action pay_photoshop
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (hardware_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (photoshop_paid)))
  )
)