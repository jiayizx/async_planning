(define (domain breast-firming)
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
    (exercises_researched)
    (pectoral_workout_completed)
    (topical_cream_applied)
    (dumbbells_purchased)
    (mirror_installed)
    (trainer_consulted)
    (assessment_scheduled)
    (sports_bras_purchased)
    (lifting_videos_watched)
    (warmup_stretches_completed)
  )

  (:durative-action research_exercises
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (exercises_researched))
    )
  )

  (:durative-action complete_pectoral_workout
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (dumbbells_purchased))
      (at start (warmup_stretches_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pectoral_workout_completed))
    )
  )

  (:durative-action apply_topical_cream
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (sports_bras_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (topical_cream_applied))
    )
  )

  (:durative-action purchase_dumbbells
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (assessment_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dumbbells_purchased))
    )
  )

  (:durative-action install_mirror
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (dumbbells_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mirror_installed))
    )
  )

  (:durative-action consult_trainer
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (sports_bras_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trainer_consulted))
    )
  )

  (:durative-action schedule_assessment
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (trainer_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (assessment_scheduled))
    )
  )

  (:durative-action buy_sports_bras
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (exercises_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sports_bras_purchased))
    )
  )

  (:durative-action watch_lifting_videos
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (assessment_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lifting_videos_watched))
    )
  )

  (:durative-action perform_warmup_stretches
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (lifting_videos_watched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (warmup_stretches_completed))
    )
  )
)