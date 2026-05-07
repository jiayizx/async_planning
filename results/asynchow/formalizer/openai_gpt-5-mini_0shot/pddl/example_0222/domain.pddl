(define (domain sculpt_concrete)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cut_done)
    (wrap_done)
    (mix_done)
    (apply_done)
    (dry_done)
    (sculpt_completed)
  )

  (:durative-action do_step1_cut_mesh
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cut_done))
            )
  )

  (:durative-action do_step2_wrap_mesh
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (cut_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (wrap_done))
            )
  )

  (:durative-action do_step3_mix_concrete
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (mix_done))
            )
  )

  (:durative-action do_step4_apply_concrete
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s) (wrap_done) (mix_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (apply_done))
            )
  )

  (:durative-action do_step5_dry
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending ?s) (apply_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (dry_done))
              (at end (sculpt_completed))
            )
  )
)
