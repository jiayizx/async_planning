(define (domain homework-planning)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type
    step16-type step17-type step18-type step19-type step20-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (rubric_reviewed)
    (outline_created)
    (introduction_drafted)
    (desk_organized)
    (papers_downloaded)
    (document_backed_up)
    (portal_checked)
    (focus_timer_set)
    (papers_skimmed)
    (chapter_read)
    (body_paragraphs_written)
    (data_highlighted)
    (math_problems_completed)
    (bibliography_compiled)
    (topics_brainstormed)
    (phone_removed)
    (spell_check_completed)
    (file_format_checked)
    (assignment_uploaded)
    (receipt_confirmation_emailed)
  )

  (:durative-action review_grading_rubric
    :parameters (?s - step1-type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (chapter_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rubric_reviewed))
    )
  )

  (:durative-action create_detailed_outline
    :parameters (?s - step2-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (desk_organized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (outline_created))
    )
  )

  (:durative-action draft_introductory_paragraph
    :parameters (?s - step3-type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (topics_brainstormed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (introduction_drafted))
    )
  )

  (:durative-action clear_desk_and_organize_supplies
    :parameters (?s - step4-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (desk_organized))
    )
  )

  (:durative-action download_research_papers
    :parameters (?s - step5-type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (portal_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (papers_downloaded))
    )
  )

  (:durative-action back_up_final_document
    :parameters (?s - step6-type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (spell_check_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (document_backed_up))
    )
  )

  (:durative-action check_assignments_in_portal
    :parameters (?s - step7-type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (phone_removed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (portal_checked))
    )
  )

  (:durative-action set_up_focus_timer
    :parameters (?s - step8-type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (focus_timer_set))
    )
  )

  (:durative-action skim_downloaded_papers
    :parameters (?s - step9-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (papers_downloaded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (papers_skimmed))
    )
  )

  (:durative-action read_textbook_chapter
    :parameters (?s - step10-type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chapter_read))
    )
  )

  (:durative-action write_body_paragraphs
    :parameters (?s - step11-type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (introduction_drafted))
      (at start (chapter_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (body_paragraphs_written))
    )
  )

  (:durative-action highlight_relevant_data
    :parameters (?s - step12-type)
    :duration (= ?duration 2400)
    :condition (and
      (at start (step_pending ?s))
      (at start (papers_downloaded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (data_highlighted))
    )
  )

  (:durative-action complete_math_practice
    :parameters (?s - step13-type)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (focus_timer_set))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (math_problems_completed))
    )
  )

  (:durative-action compile_bibliography
    :parameters (?s - step14-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (data_highlighted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bibliography_compiled))
    )
  )

  (:durative-action brainstorm_topics
    :parameters (?s - step15-type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (topics_brainstormed))
    )
  )

  (:durative-action put_phone_in_another_room
    :parameters (?s - step16-type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (phone_removed))
    )
  )

  (:durative-action run_final_spell_check
    :parameters (?s - step17-type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spell_check_completed))
    )
  )

  (:durative-action check_submission_file_format
    :parameters (?s - step18-type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (file_format_checked))
    )
  )

  (:durative-action upload_completed_assignment
    :parameters (?s - step19-type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (outline_created))
      (at start (math_problems_completed))
      (at start (bibliography_compiled))
      (at start (file_format_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (assignment_uploaded))
    )
  )

  (:durative-action email_professor_confirmation
    :parameters (?s - step20-type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (bibliography_compiled))
      (at start (file_format_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (receipt_confirmation_emailed))
    )
  )
)