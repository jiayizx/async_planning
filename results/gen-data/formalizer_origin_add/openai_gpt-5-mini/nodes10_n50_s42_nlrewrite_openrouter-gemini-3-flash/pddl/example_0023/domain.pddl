(define (domain word-slider)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (design_done)
    (print_done)
    (assemble_done)
    (cut_slits_done)
    (laminate_done)
    (measure_done)
    (cut_strips_done)
    (select_words_done)
    (write_words_done)
    (thread_done)
  )

  (:durative-action do_step1_design
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (design_done))
    )
  )

  (:durative-action do_step2_print
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (write_words_done)) (at start (cut_strips_done)) (at start (select_words_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (print_done))
    )
  )

  (:durative-action do_step3_assemble
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (design_done)) (at start (measure_done)) (at start (cut_slits_done)) (at start (cut_strips_done)) (at start (select_words_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (assemble_done))
    )
  )

  (:durative-action do_step4_cut_slits
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (measure_done)) (at start (design_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (cut_slits_done))
    )
  )

  (:durative-action do_step5_laminate
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (thread_done)) (at start (assemble_done)) (at start (print_done)) (at start (write_words_done)) (at start (cut_strips_done)) (at start (select_words_done)) (at start (cut_slits_done)) (at start (measure_done)) (at start (design_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (laminate_done))
    )
  )

  (:durative-action do_step6_measure
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (design_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (measure_done))
    )
  )

  (:durative-action do_step7_cut_strips
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step7)) (at start (select_words_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (cut_strips_done))
    )
  )

  (:durative-action do_step8_select_words
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (select_words_done))
    )
  )

  (:durative-action do_step9_write_words
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step9)) (at start (cut_strips_done)) (at start (select_words_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (write_words_done))
    )
  )

  (:durative-action do_step10_thread
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step10)) (at start (print_done)) (at start (write_words_done)) (at start (cut_strips_done)) (at start (select_words_done)) (at start (cut_slits_done)) (at start (measure_done)) (at start (design_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (thread_done))
    )
  )
)
