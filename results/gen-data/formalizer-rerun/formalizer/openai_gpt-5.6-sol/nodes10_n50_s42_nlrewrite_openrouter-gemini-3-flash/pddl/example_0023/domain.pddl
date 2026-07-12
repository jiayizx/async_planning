(define (domain educational-word-slider)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (base_layout_designed)
    (word_lists_printed)
    (slider_mechanism_assembled)
    (viewing_slits_cut)
    (slider_laminated)
    (cutting_lines_marked)
    (paper_strips_cut)
    (vocabulary_words_selected)
    (words_written_on_strips)
    (word_strips_threaded)
  )

  (:durative-action design_base_layout
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (base_layout_designed))
    )
  )

  (:durative-action print_vocabulary_word_lists
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (words_written_on_strips))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (word_lists_printed))
    )
  )

  (:durative-action assemble_slider_mechanism
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (base_layout_designed))
      (at start (viewing_slits_cut))
      (at start (paper_strips_cut))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (slider_mechanism_assembled))
    )
  )

  (:durative-action cut_viewing_slits
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (cutting_lines_marked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (viewing_slits_cut))
    )
  )

  (:durative-action laminate_slider
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (word_strips_threaded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (slider_laminated))
    )
  )

  (:durative-action measure_and_mark_cutting_lines
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (base_layout_designed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cutting_lines_marked))
    )
  )

  (:durative-action cut_paper_strips
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (vocabulary_words_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paper_strips_cut))
    )
  )

  (:durative-action select_vocabulary_words
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vocabulary_words_selected))
    )
  )

  (:durative-action write_words_on_strips
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (paper_strips_cut))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (words_written_on_strips))
    )
  )

  (:durative-action thread_word_strips
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (word_lists_printed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (word_strips_threaded))
    )
  )
)