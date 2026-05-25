(define (domain apa_citation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (author_id_done)
    (citation_arranged)
    (spelling_verified)
    (proofread_done)
    (year_located)
    (title_noted)
    (website_searched)
    (pdf_downloaded)
    (url_copied)
    (doc_num_checked)
    (database_determined)
    (software_opened)
    (entry_created)
    (permalink_located)
    (computer_on)
  )

  (:durative-action step1_identify_author
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (author_id_done)))
  )

  (:durative-action step3_verify_spelling
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (author_id_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spelling_verified)))
  )

  (:durative-action step15_power_on
    :parameters (?s - step)
    :duration (= ?duration 90)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (computer_on)))
  )

  (:durative-action step13_create_entry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (entry_created)))
  )

  (:durative-action step5_locate_year
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (year_located)))
  )

  (:durative-action step6_note_title
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (year_located)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (title_noted)))
  )

  (:durative-action step7_search_website
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_searched)))
  )

  (:durative-action step12_open_software
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (software_opened)))
  )

  (:durative-action step8_download_pdf
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (title_noted)) (at start (website_searched)) (at start (software_opened)) (at start (year_located)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pdf_downloaded)))
  )

  (:durative-action step11_determine_database
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (title_noted)) (at start (year_located)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (database_determined)))
  )

  (:durative-action step2_arrange_citation
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (title_noted)) (at start (website_searched)) (at start (pdf_downloaded)) (at start (database_determined)) (at start (software_opened)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (citation_arranged)))
  )

  (:durative-action step4_proofread
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (citation_arranged)) (at start (title_noted)) (at start (website_searched)) (at start (pdf_downloaded)) (at start (database_determined)) (at start (software_opened)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (proofread_done)))
  )

  (:durative-action step10_check_doc_num
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (title_noted)) (at start (year_located)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (doc_num_checked)))
  )

  (:durative-action step14_locate_permalink
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (title_noted)) (at start (year_located)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permalink_located)))
  )

  (:durative-action step9_copy_url
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (title_noted)) (at start (permalink_located)) (at start (year_located)) (at start (entry_created)) (at start (computer_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (url_copied)))
  )
)