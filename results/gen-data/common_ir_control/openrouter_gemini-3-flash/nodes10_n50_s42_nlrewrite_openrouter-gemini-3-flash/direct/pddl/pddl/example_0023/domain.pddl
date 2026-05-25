(define (domain word_slider_assembly)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (layout_designed)
    (words_selected)
    (strips_cut)
    (words_written)
    (lists_printed)
    (lines_marked)
    (slits_cut)
    (strips_threaded)
    (mechanism_assembled)
    (slider_laminated)
  )

  (:durative-action design_layout
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layout_designed)))
  )

  (:durative-action select_words
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (words_selected)))
  )

  (:durative-action cut_strips
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (words_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strips_cut)))
  )

  (:durative-action write_words
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (strips_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (words_written)))
  )

  (:durative-action print_lists
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (words_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lists_printed)))
  )

  (:durative-action mark_lines
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (layout_designed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lines_marked)))
  )

  (:durative-action cut_slits
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (lines_marked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slits_cut)))
  )

  (:durative-action thread_strips
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (lists_printed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strips_threaded)))
  )

  (:durative-action assemble_mechanism
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (layout_designed)) (at start (slits_cut)) (at start (strips_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mechanism_assembled)))
  )

  (:durative-action laminate_slider
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (strips_threaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slider_laminated)))
  )
)