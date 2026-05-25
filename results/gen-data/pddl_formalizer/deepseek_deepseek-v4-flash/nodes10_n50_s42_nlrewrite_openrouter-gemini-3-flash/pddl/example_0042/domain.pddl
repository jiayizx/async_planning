(define (domain fundraiser)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (flyers_printed)
    (supplies_bought)
    (proposal_drafted)
    (baked_goods)
    (proposal_approved)
    (cost_researched)
    (funds_raised)
    (photos_taken)
    (photos_posted)
    (balls_ordered)
  )
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending step1))
      (at start (flyers_printed))
      (at start (supplies_bought))
      (at start (proposal_drafted))
      (at start (baked_goods))
      (at start (proposal_approved))
      (at start (cost_researched)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (funds_raised)))
  )
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step2))
      (at start (proposal_drafted))
      (at start (proposal_approved)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (flyers_printed)))
  )
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending step3))
      (at start (photos_taken)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (photos_posted)))
  )
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step4))
      (at start (cost_researched)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (supplies_bought)))
  )
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (proposal_drafted)))
  )
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending step6))
      (at start (flyers_printed))
      (at start (proposal_drafted))
      (at start (proposal_approved)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (baked_goods)))
  )
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (photos_taken)))
  )
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending step8))
      (at start (proposal_drafted)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (proposal_approved)))
  )
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (cost_researched)))
  )
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step10))
      (at start (proposal_drafted))
      (at start (proposal_approved)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (balls_ordered)))
  )
)