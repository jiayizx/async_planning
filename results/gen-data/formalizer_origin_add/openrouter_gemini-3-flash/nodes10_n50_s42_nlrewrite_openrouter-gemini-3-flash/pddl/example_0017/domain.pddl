(define (domain breast_firming)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (workout_done)
    (cream_applied)
    (dumbbells_bought)
    (mirror_installed)
    (consultation_done)
    (assessment_done)
    (bras_bought)
    (videos_watched)
    (warmup_done)
  )

  (:durative-action research_exercises
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action buy_bras
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bras_bought)))
  )

  (:durative-action consult_trainer
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (bras_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_done)))
  )

  (:durative-action schedule_assessment
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (consultation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assessment_done)))
  )

  (:durative-action purchase_dumbbells
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (assessment_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dumbbells_bought)))
  )

  (:durative-action watch_videos
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (assessment_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (videos_watched)))
  )

  (:durative-action install_mirror
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (dumbbells_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mirror_installed)))
  )

  (:durative-action apply_cream
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (bras_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_applied)))
  )

  (:durative-action perform_warmup
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (videos_watched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (warmup_done)))
  )

  (:durative-action complete_workout
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (dumbbells_bought)) (at start (warmup_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workout_done)))
  )
)