(define (domain obtain-book-name)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type - step
  )
  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (archives-searched)
    (bibliography-printed)
    (authors-cross-referenced)
    (forum-description-posted)
    (title-suggestions-received)
    (catalog-copy-requested)
    (genre-section-located)
    (isbn-verified)
    (book-name-obtained)
    (printer-supplies-checked)
  )

  (:durative-action search-digital-archives
    :parameters (?s - step1-type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step-pending ?s))
      (at start (genre-section-located))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (archives-searched))
    )
  )

  (:durative-action print-bibliography-entry
    :parameters (?s - step2-type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending ?s))
      (at start (printer-supplies-checked))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (bibliography-printed))
    )
  )

  (:durative-action cross-reference-authors
    :parameters (?s - step3-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step-pending ?s))
      (at start (forum-description-posted))
      (at start (title-suggestions-received))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (authors-cross-referenced))
    )
  )

  (:durative-action post-plot-description
    :parameters (?s - step4-type)
    :duration (= ?duration 900)
    :condition (at start (step-pending ?s))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (forum-description-posted))
    )
  )

  (:durative-action wait-for-title-suggestions
    :parameters (?s - step5-type)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step-pending ?s))
      (at start (forum-description-posted))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (title-suggestions-received))
    )
  )

  (:durative-action request-catalog-copy
    :parameters (?s - step6-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step-pending ?s))
      (at start (archives-searched))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (catalog-copy-requested))
    )
  )

  (:durative-action locate-genre-section
    :parameters (?s - step7-type)
    :duration (= ?duration 300)
    :condition (at start (step-pending ?s))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (genre-section-located))
    )
  )

  (:durative-action verify-isbn
    :parameters (?s - step8-type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step-pending ?s))
      (at start (authors-cross-referenced))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (isbn-verified))
    )
  )

  (:durative-action confirm-title-and-author
    :parameters (?s - step9-type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step-pending ?s))
      (at start (catalog-copy-requested))
      (at start (isbn-verified))
    )
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (book-name-obtained))
    )
  )

  (:durative-action check-printer-supplies
    :parameters (?s - step10-type)
    :duration (= ?duration 60)
    :condition (at start (step-pending ?s))
    :effect (and
      (at start (not (step-pending ?s)))
      (at end (step-done ?s))
      (at end (printer-supplies-checked))
    )
  )
)