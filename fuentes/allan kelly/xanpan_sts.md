# Xanpan: Team Centric Agile Software Development (STS Transformation)

ID: XANPAN-ROOT-01
Version: 1.0.0
Status: Draft
Human-Creator: Cascade
Human-Editor: N/A
Model-Collaborator: Cascade
Creation-Date: 2025-10-10
Modification-Date: 2025-10-10
Ctx: XANPAN-METHODOLOGY

---

BEGIN_LLM_INSTRUCTIONS

You are an AI agent consuming a Structured Telegraphic Style (STS) artifact. Your primary task is to parse and reason over THIS document with absolute fidelity, using only the rules defined below. This artifact is a self-contained source of truth.

1. Core Objective: Maintain perfect fidelity to the information (`meat`) and structure (`skeleton`). Do not summarize, interpret, or infer information not explicitly present. Prohib: Applying these rules to artifact creation or translation tasks; they are exclusively for consumption.

2. Conceptual Metaphors:
    - `meat`: Essential information, data, and facts. Must be preserved with zero loss.
    - `skeleton`: Logical structure (headers, IDs, lists, tables). This is also `meat` and must be preserved.
    - `fat`: Non-essential verbiage (filler words, rhetoric, stylistic prose). Must be ignored during reasoning as it has no informational value.

3. Lexicon Mode & Expansion: This document uses an Abbreviated Lexicon. You MUST treat the following keywords as valid and expand them according to this mapping before processing:
    - `Act:` -> `Action:`
    - `Warn:` -> `Warning:`
    - `Cause:` -> `Cause:`
    - `Cpt:` -> `Concept:`
    - `Cond:` -> `Condition:`
    - `Ctx:` -> `Context:`
    - `Def:` -> `Definition:`
    - `Dep:` -> `Dependency:`
    - `Dest:` -> `Destination:`
    - `Dln:` -> `Deadline:`
    - `Ex:` -> `Example:`
    - `Fnd:` -> `Foundation:`
    - `ID:` -> `ID:`
    - `Instr:` -> `Instruction:`
    - `Just:` -> `Justification:`
    - `Mech:` -> `Mechanism:`
    - `Mssn:` -> `Mission:`
    - `Mdl:` -> `Model:`
    - `Nat:` -> `Nature:`
    - `Obj:` -> `Objective:`
    - `Proc:` -> `Process:`
    - `Prohib:` -> `Prohibition:`
    - `Purp:` -> `Purpose:`
    - `Rec:` -> `Recommendation:`
    - `Ref:` -> `Reference:`
    - `Req:` -> `Requirement:`
    - `Res:` -> `Result:`
    - `Resp:` -> `Responsible:`
    - `Src:` -> `Source:`

4. Reference (`Ref:`) Policy:
    - `Ref:` is used for internal cross-references only.
    - It MUST point to an `ID:` that exists within THIS document.
    - You MUST NOT interpret a `Ref:` as a link to an external document or resource. Mentions of other documents are purely contextual (`Ctx:`).

5. Language Invariance Policy:
    - The `Keywords` in the lexicon are a fixed control vocabulary in English.
    - All `EssentialData` (the content following a `Keyword:`) MUST be preserved in its original language. Do not translate it.

END_LLM_INSTRUCTIONS

---

## Introduction

ID: XANPAN-INTRO-01

- Cpt: Book-Purpose. Def: This book serves two main purposes.
  - Purp-1: Capture the author's personal experience, understanding, and reflections on 'Agile'.
  - Purp-2: Describe an Agile method named Xanpan.
- Cpt: Xanpan-Nature. Def: Xanpan is a derived, hybrid method, serving as an example of method creation.
- Cpt: Xanpan-Dualism. Def: Xanpan is both a method and a philosophy.
  - Cpt: Philosophy-Content. Def: The author's philosophy on how software should be created and how Agile should work.
- Cpt: Applicability. Ctx: Believed to be applicable outside software development, but not yet tested.
- Cpt: Xanpan-Origins. Def: A hybrid method combining multiple sources.
  - Src-1: Extreme Programming (XP). Ref: Beck 2000.
  - Src-2: Kanban. Ref: Anderson 2010.
  - Src-3: Blue-White-Red process. Ref: Kelly 2007.
  - Src-4: Other methods and schools of thought, specifically product management.
- Fnd: Lean-Thinking. Def: Xanpan's underlying philosophy and principles are based on Lean thinking. Ref: Womack and Jones 2005; Womack, Jones, and Roos 1991; M. Poppendieck and Poppendieck 2003.
  - Res: Can be described as 'Agile' or 'Lean'.
- Cpt: Xanpan-Differentiation. Ctx: Appears similar to XP or Scrum, but with key tweaks to enhance process flow.
  - Mech-1: Work can be carried between iterations.
  - Mech-2: Teams are not asked for personal commitment.
  - Mech-3: Unplanned work is allowed.
- Cpt: Book-Structure. Def: The book explains Xanpan by stepping through an example and highlighting differences with other methods (Scrum, Kanban).
- Cpt: Origin-Domain. Def: Xanpan originates in software development, and the description assumes this context.
  - Cpt: Future-Use. Ctx: Expected to be usable in other domains with modifications, but lacks examples currently.
- Cpt: Xanpan-Significance. Def: Demonstrates how to build a coherent method by combining ideas from Agile, Lean, and personal experience.
  - Purp-1: Expose the author's view on the logic of software development.
  - Purp-2: Show how to build an approach with depth.
- Cpt: Xanpan-Evolution. Def: Xanpan was not created fully formed; it evolved from practice and underlying principles.
  - Cpt: Status. Ctx: Will continue to grow and evolve.
- Cpt: Author-Advocacy. Def: The author advocates for teams to 'roll their own' development methods.
  - Ctx: This was a theme in 'Changing Software Development'. Ref: Kelly 2008.
  - Rec: Combine parts of methods that work for the specific team.
- Cpt: Method-Tailoring. Def: Comparison of traditional and Agile methods regarding tailoring.
  - Cpt: Traditional-Method-Tailoring. Mdl: Start large and 'tailor down'. Ex: SSADM, PRINCE 2, RUP.
  - Cpt: Agile-Method-Tailoring. Mdl: Start small and 'tailor up'. Ex: Scrum, XP, Kanban.
- Cpt: Agile-Sufficiency. Def: Agile methods are often called 'barely sufficient'.
  - Cause: They lack many details and contingency tools found in other methods.
  - Res-1: Easy to tailor.
  - Res-2: Tailoring is essential.
- Cpt: Xanpan-As-Example. Def: Xanpan is an example of how the author has combined ideas and helped teams adopt a similar, tailored working style.
- Cpt: Xanpan-Tailoring-Context. Def: The context in which Xanpan was tailored.
  - Ctx-1: Teams initially adopting Agile development.
  - Ctx-2: Organizations with generally stable teams.
  - Ctx-3: Software development groups in Europe, particularly the UK.

## Why write another book about Agile?

ID: XANPAN-JUSTIFICATION-01

- Cpt: Rationale. Def: Three reasons for writing the book, which also define the target audiences.
- Cpt: Audience-1. Def: The Experienced.
  - Ctx: A 'post-Scrum' book for those who have learned from initial Scrum adoption.
  - Purp: Capture the author's learning and encourage teams to create their own post-Scrum methods.
- Cpt: Audience-2. Def: The Newcomers.
  - Purp: To provide a recommended book for those new to Agile.
- Cpt: Audience-3. Def: The Author.
  - Purp: Writing forces clarification of ideas and deepens understanding.
  - Ctx: The term 'Xanpan' grew in complexity, requiring a coherent explanation.

## This and subsequent books

ID: XANPAN-BOOK-SERIES-01

- Cpt: Book-Scope. Def: This book is a detailed account of the Xanpan process.
- Cpt: Future-Volumes. Ctx: Envisioned as part of a three-part series.
  - Vol-2: Requirements.
  - Vol-3: Management of software development.
- Cpt: Title-Change. Def: The book's title was updated to reflect its core focus.
  - Cpt: Old-Title. Def: 'Xanpan: Personal reflections on Agile & Software Development' (2013).
  - Cpt: New-Title. Def: 'Xanpan: Team Centric Agile Software Development' (2014).
  - Just: Feedback indicated the team, not the project or product, is the heart of Xanpan.
- Cpt: Team-Centricity. Def: The essence of Xanpan is the team.
  - Cpt: Reconciliation. Ctx: Reconciles the conflict between Xanpan as a prescriptive process and the message to 'create your own process'.
  - Cpt: Xanpan-Adherence. Def: Any team that actively creates and agrees on its own process can be said to be following Xanpan.

## Prologue: The Truth About IT Projects

ID: XANPAN-PROLOGUE-01
Ctx: Originally published in Agile Journal, March 2012.

- Cpt: Project-Uncertainty. Def: At the start of an IT project, time, effort, and cost are unknown.
- Cpt: Customer-Requirement-Volatility. Def: The customer often does not know detailed wants, and requirements are likely to change.
  - Src: Capers Jones. Ctx: Requirements change ~2% per month on average.
- Cpt: External-Uncertainty. Def: The business world is uncertain (competitors, market changes, etc.).
- Cpt: Exploitative-Change-Requests. Def: Some IT vendors profit from inevitable changes at the customer's expense.
- Cpt: Gold-Plating. Def: Engineers sometimes add unnecessary features.
- Cpt: Estimation-Fallacy. Def: 'Estimates' are often guesses, not certainties.
  - Fnd: Planning Fallacy. Src: Kahneman and Tversky, 1979. Ctx: Humans consistently underestimate work and are overconfident in estimates.
- Cpt: Team-Inconsistency. Def: The team that estimates is often different from the team that does the work.
- Cpt: Inaccurate-Historical-Data. Def: Most companies lack useful historical data for planning.
  - Src: Capers Jones. Ctx: Inaccurate historical data is a major cause of project failure.
- Cpt: Estimate-Padding. Def: Estimates are padded to cover risk, then manipulated by sales.
- Cpt: Risk-Management. Def: Risk can be managed through different models.
  - Mdl-1: Supplier-Takes-Risk. Res: High cost for the customer due to padding.
  - Mdl-2: Customer-Takes-Risk. Warn: In-house IT is often worse than specialist providers.
- Cpt: Packaged-Solutions-Warning. Def: Off-the-shelf applications are not a simple solution.
  - Warn: 'Customization' or 'configuration' of large packages (e.g., SAP) is a major software development activity.
- Cpt: Recommended-Approach. Def: A collaborative partnership is required.
  - Req-1: Customer must work closely with the supplier.
  - Req-2: Customer must accept and share risk.
    - Just: Sharing risk motivates the customer to participate in risk reduction.
    - Cpt: Ultimate-Risk. Def: All risk is ultimately the customer's risk.
  - Req-3: Work in small chunks.
    - Fnd: Software development has diseconomies of scale.

## Part I: Xanpan Principles

ID: XANPAN-PRINCIPLES-01

- Cpt: Principle-Hierarchy. Def: Xanpan is guided by core principles and practices, which are based on deeper philosophical foundations.

### 1. Work in iterations

ID: XANPAN-PRINCIPLE-ITERATIONS-01

- Fnd: The iteration (or sprint) is a well-established Agile practice.
- Purp: Provide a rhythm to work and impose a recurring deadline.
- Mech: Harnesses the human ability to work well to deadlines.
- Cpt: Metaphor-Comparison.
  - Cpt: Traditional-Project. Mdl: A long-distance train (e.g., London to Edinburgh).
    - Nat: Infrequent, requires advance booking, high risk of leaving things behind.
    - Res: Resistance to change, attempts to hold the schedule, potential for late arrival and compromises.
  - Cpt: Iterative-Work. Mdl: The London Underground.
    - Nat: Frequent, regular, no timetable needed for most of the day.
    - Res: Provides options, allows for flexibility, low risk as another 'train' is always coming.

### 2. Team-centric: flow the work to the team

ID: XANPAN-PRINCIPLE-TEAM-CENTRIC-01

- Fnd: Xanpan is team-centric.
- Cpt: The-Team. Def: The production unit where need goes in and working software comes out.
- Cpt: Team-Variability. Def: Teams differ in size, composition (testers, analysts), location (collocated, distributed), and workload.
- Cpt: Multiple-Work-Streams. Ctx: Most teams handle multiple streams of work.
  - Ex-1: Multiple projects simultaneously (Project A, Project B).
  - Ex-2: New product development while maintaining an old one.
  - Ex-3: Individuals being pulled for ad-hoc tasks.
- Cpt: Work-Types. Def: Work can be planned or unplanned.
  - Cpt: Unplanned-Work. Nat: Often appears late and is urgent.
- Obj: Aim for stable teams that can accept both planned and unplanned work on multiple streams.

### 3. Work to improve Flow

ID: XANPAN-PRINCIPLE-FLOW-01

- Fnd: Hand-in-hand with team-centricity is flow.
- Cpt: Work-Flow. Def: Work arrives at the team (inbound), is processed, and flows out to the customer (outbound).
- Obj: Reduce end-to-end time by improving flow (smoother, more regular, more predictable).
- Mech: Key mechanism for improving flow in Xanpan.
  - Mech-1: Allowing work to span more than one iteration.
  - Warn: This is considered heresy in some Agile circles.

### 4. Quality is free (provided you invest in it)

ID: XANPAN-PRINCIPLE-QUALITY-01
Src: Philip Crosby, 'Quality is Free' (1980).

- Cpt: Quality-Dial-Fallacy. Def: The belief that decreasing quality speeds up work is wrong in software.
- Cpt: Software-Quality-Reality. Def: The quality dial is wired in reverse.
  - Mech: To go fast, dial quality up. To go slow, dial quality down.
- Src: Capers Jones (2008). Ctx: 'Projects with low defect potentials and high defect remove efficiency also have the shortest schedules, lowest costs, and best customer satisfaction levels.'
- Def: Quality-in-this-Context. Ctx: Specifically refers to defects and bugs, implying low quality leads to rework.
- Prohib: Gold-plating and over-engineering are not excuses for this principle.
- Cpt: Rework-Nature. Def: Successful software always needs rework due to changing needs, but quality affects the ease of this rework.
  - Cpt: Low-Quality-Rework. Res: Harder and slower.
  - Cpt: High-Quality-Rework. Res: Easier and faster.
- Src: IBM (early 1970s). Ctx: Discovered that software quality and productivity are directly coupled.
- Cpt: Rework-Impact. Def: High levels of rework from low quality break the Agile process.
  - Cause-1: Rework destroys flow.
  - Cause-2: Stories are never truly 'done'.
  - Cause-3: Iterations become an illusion due to hidden work.
  - Cause-4: Metrics are destroyed.
  - Cause-5: Time is wasted on managing rework instead of delivering value.
- Req: High quality is essential for Agile working.
- Cpt: Xanpan-Practices. Def: Xanpan embraces XP technical practices (e.g., TDD) to raise quality and reduce rework.

#### Quality Definition Appendix

ID: XANPAN-QUALITY-DEF-01

- Cpt: Quality-Attributes. Def: Two primary attributes of software quality.
  - Attr-1: Defects. Ctx: Quality is inversely proportional to the number of observed defects.
  - Attr-2: Maintainability. Ctx: Changeability and extendibility. Successful software must be easy to change.
- Rec: Teams should define what quality means for their specific product, but these two attributes are universal.
- Cpt: Achieving-Quality. Def: Xanpan's approach to achieving quality.
  - Prohib: 'Big up-front design'.
  - Mech: Repeated design sessions, constant attention to technical excellence, and short-term delivery of working products.

### 5. Visualise

ID: XANPAN-PRINCIPLE-VISUALISE-01

- Fnd: Software development is an extremely abstract activity.
- Cpt: Problem. Def: Team members are often unaware of project status or what colleagues are doing.
- Obj: Make work, progress, and problems visible to everyone.
- Mech: Use visualization tools.
  - Ex: Whiteboards, burn-down charts, cumulative flow diagrams, stickies.
- Res: Helps people learn, improves flow, creates shared understanding, and makes problems visible.

### 6. References (Principles)

ID: XANPAN-PRINCIPLES-REFS-01

- Ref: Coplien, J. O., and N. B. Harrison. 2004. Organizational Patterns of Agile Software Development.
- Ref: Crosby, P. B. 1980. Quality is free: the art of making quality certain.
- Ref: Jones, C. 2008. Applied Software Measurement.

## Part II: Board 1

ID: XANPAN-BOARD-01

- Req: All work is represented on a physical board (e.g., magnetic whiteboard), often called a 'Kanban board'.
- Rec: Start with a physical board before considering electronic equivalents.
  - Just: The learning experience is stronger and faster.
- Req: Each team must design its own board.

### Basic Board Design (Figure 1)

ID: XANPAN-BOARD-BASIC-01
Ctx: Example from a laboratory equipment maker in Falmouth, UK.

- Cpt: Board-Columns. Def: The basic structure of the board.
  - Col-1: Pending (Work to be done).
  - Col-2: Current (Work in progress / WIP).
  - Col-3: Completed (Work done).
- Cpt: Product-Backlog. Def: Contains all work that might be done.
  - Ctx: Can be physical (on the board) or electronic (spreadsheet).
- Cpt: Sprint-Backlog. Def: A subset of the product backlog selected for the current sprint/iteration.
- Cpt: Iteration-Cycle. Def: Two weeks long, run back-to-back.
  - Proc: Begins with a planning meeting, ends with the next planning meeting.
- Cpt: Planning-Meeting-Process. Def: Board is cleared, work is reviewed, and the 'Pending' column is refilled.
- Cpt: Blocked-Column. Def: Used when work on a card cannot proceed.
  - Purp: Signals a need for escalation or waiting for external input.

#### Card Colour Coding

ID: XANPAN-BOARD-COLORS-01
Fnd: Based on 'blue-white-red' convention.

- Cpt: Blue-Cards. Def: Development stories, valuable to the business.
- Cpt: White-Cards. Def: Developer tasks (or test, analysis tasks).
- Cpt: Red-Cards. Def: Bugs found after a sprint ends.
- Cpt: Yellow-Cards. Def: Unplanned work.

#### Xanpan Iteration Characteristics

ID: XANPAN-BOARD-ITERATION-CHARS-01

- Cpt: Work-Planning. Def: Team accepts a reasonable amount of work in a planning meeting.
- Cpt: No-Commitment. Def: Unlike Scrum, the team does not commit to completing all work.
- Cpt: Open-Cycle. Def: Work may continue to enter the sprint.
- Cpt: Work-Carryover. Def: Unlike Scrum, work can be carried over from sprint to sprint.
- Cpt: Task-Suspension. Def: A team member can suspend a task (e.g., a white card) to work on something more urgent (e.g., a yellow card).
- Cpt: Estimation-Practice.
  - Cpt: Planned-Work. Def: Stories (blues) and tasks (whites) are estimated, likely with planning poker.
  - Cpt: Unplanned-Work. Def: Yellows are retrospectively estimated after completion.
  - Cpt: Bugs. Def: Reds may or may not be estimated, depending on the team's approach.
- Obj: The goal is to have no red cards (no bugs).

#### Board Usage and Evolution

ID: XANPAN-BOARD-USAGE-01

- Cpt: Work-Assignment. Def: How team members are assigned to tasks.
  - Mech: Avatars, magnets, or stickers can be used to indicate who is working on a card, but it's not mandatory.
  - Rec: Avoid allocating work until the last possible moment (when a team member becomes free).
  - Proc: A free team member takes the highest-priority available task.
  - Just: Ensures priorities are worked on and reduces bottlenecks.
  - Dep: Requires team members to have similar skill sets.
- Cpt: Progress-Tracking. Def: No partial progress is tracked on cards.
  - Fnd: Cards are either 'done' or 'not-done'.
  - Just: It is usually impossible to accurately tell how much work is remaining.
  - Cpt: Actual-Effort. Def: 'Actual effort' is not captured against estimates.

#### Board Evolution (Figure 2)

ID: XANPAN-BOARD-EVOLUTION-01
Ctx: Same board five months later.

- Cpt: Changes. Def: The board and team evolved over time.
  - Change-1: Fewer yellow cards due to hiring a dedicated IT support engineer.
  - Change-2: Team expanded by merging with another team (later reversed).
  - Change-3: New card color added.
    - Cpt: Green-Cards. Def: Process-improvement tasks.
  - Change-4: New 'Review' column added.
    - Purp-1: Show items completed since the last stand-up meeting.
    - Purp-2: Allow for optional peer review before moving to 'Finished'.

#### Key Points: Board

ID: XANPAN-BOARD-KEY-POINTS-01

- Cpt: Card-Colors. Def: Blue (stories), White (tasks), Red (bugs), Yellow (unplanned), Green (process improvement).
- Cpt: Iteration-Length. Def: Two weeks, starting and ending with a planning meeting.
- Cpt: Work-Mix. Def: Iterations contain both planned and unplanned work.
- Cpt: Board-Scope. Def: Represents the state of the team and their work, not a specific project.
- Cpt: Backlog-Scope. Def: The team may work on more than one product/project at a time.
- Cpt: Estimation. Def: Planned work is estimated in advance; unplanned work is estimated retrospectively.

## Part III: Iterations

ID: XANPAN-ITERATIONS-01

- Fnd: Work is conducted in time-boxed iterations (sprints), as in XP and Scrum.
- Cpt: Iteration-Length.
  - Rec: Normally two weeks. One week is also common. Three weeks should be avoided. Four weeks is often too long.
  - Req: Changes to iteration length should be rare.
  - Prohib: Extending an iteration because work is not finished.
    - Just: Destroys the deadline effect, benchmarking, and ethos of working in short bursts.
- Cpt: Deadline-Effect. Purp: Focuses attention, limits WIP, forces problem resolution, and stops procrastination.

### Iteration Flow

ID: XANPAN-ITERATIONS-FLOW-01

- Proc: The next iteration starts immediately after the previous one ends.
- Cpt: Key-Difference-1 (vs. Scrum). Def: Work can and does flow between iterations.
  - Cpt: Carry-over-work. Def: Work still in 'to do' can be returned to the backlog, removed, or carried over to the next iteration.
- Cpt: Key-Difference-2 (vs. Scrum). Def: Xanpan allows both planned and unplanned work.
- Cpt: Justification-for-Differences.
  - Just-1: Creates Kanban-style flow mechanics.
  - Just-2: Avoids forcing stories to be too small to have business value, especially for new teams.
  - Just-3: Acknowledges that some domains (embedded, C++) find it hard to create small, valuable stories.
  - Just-4: Replaces Scrum-style commitment with a probabilistic approach to delivery.
    - Cpt: Probabilistic-Delivery. Mdl: "The highest priority story is almost certain to be delivered, the next is probable..."
  - Just-5: Avoids 'dry-stone walling' (searching for a small, low-priority task to fit the remaining time in an iteration).

### 7. Releasable

ID: XANPAN-ITERATIONS-RELEASABLE-01

- Req: At the end of the iteration, the team should have a releasable product.
- Cpt: Release-Decision. Def: Whether to actually release is a business/marketing decision.
- Cpt: Continuous-Deployment. Def: A logical next step where each completed story is pushed to release.
  - Req: Each story (blue card) must be releasable on its own.

### 8. Iteration sequence

ID: XANPAN-ITERATIONS-SEQUENCE-01

- Proc: The iteration sequence.
  - Step-1: Planning Meeting. Product Owner presents prioritized work. Team breaks work into tasks and agrees on what to take on.
  - Step-2: Daily Stand-up. Daily 15-minute meeting to synchronize.
  - Step-3: Demonstration. At the end of the iteration, demonstrate work to stakeholders.
  - Step-4: Review. A bookkeeping exercise (count points, update charts).
  - Step-5: Retrospective. To help the team improve. Can be informal or formal.
  - Step-6: Next planning meeting begins.

### 9. Mid-week to mid-week

ID: XANPAN-ITERATIONS-SCHEDULE-01

- Rec: Running iterations mid-week to mid-week is more effective than Monday-Friday.
- Cpt: Justifications.
  - Just-1: Avoids the 'Friday afternoon effect' (low motivation to start new work).
  - Just-2: Leverages higher productivity at the start of the week (e.g., Tuesday) by avoiding meetings.
  - Just-3: Avoids disruption from public holidays that often fall on Mondays.
  - Just-4: Reduces impact of team members taking long weekends.
  - Just-5: Easier to book meeting rooms on a regular schedule.
  - Just-6: Better for teams in different time zones, avoiding late Fridays or early Mondays.

### 10. Iteration length

ID: XANPAN-ITERATIONS-LENGTH-01

- Rec: Default length is two weeks. Start with one-week iterations if in doubt.
- Warn: Monthly iterations are too long.
- Warn: Three-week iterations are unnatural and often hide mini-waterfall processes.
- Cpt: Purpose-of-Short-Iterations. Def: They are a tool for forcing improvement.
  - Mech: Forcing the team to produce something valuable in a short time forces change for the better.

### 11. Release schedules

ID: XANPAN-ITERATIONS-RELEASE-SCHED-01

- Cpt: Release-Cadence. Def: Varies by team.
  - Mdl-1: Release at the end of each iteration (e.g., every two weeks).
  - Mdl-2: Continuous deployment (multiple releases during an iteration).
  - Mdl-3: Release after several iterations (e.g., quarterly or monthly).
- Obj: The first objective for a team is to be able to release every two weeks painlessly.

### 12. The CEO test

ID: XANPAN-ITERATIONS-CEO-TEST-01

- Cpt: Scenario. Def: The CEO announces the company is out of money and needs something to release today to generate revenue.
- Cpt: Pass-Condition. Def: The team can provide a just-finished, releasable product.
- Cpt: Fail-Condition. Def: The team has 'code complete' work that needs weeks of testing and fixing.
- Rec: Do fewer features and more quality. Get good at finishing things completely to a releasable standard.

### 13. References (Iterations)

ID: XANPAN-ITERATIONS-REFS-01

- Ref: Derby, E., and D. Larsen. 2006. Agile Retrospectives.
- Ref: Kerth, N. L. 2001. Project Retrospectives.

## Part IV: Planning Meetings

ID: XANPAN-PLANNING-01

- Cpt: Variation. Def: Planning meetings vary significantly between teams in their details.
- Cpt: Capacity-Planning-Variation.
  - Ex-1: Product owner proposes stories until the team feels they have 'enough'.
  - Ex-2: Teams strictly commit only to what they are sure they can do (Scrum style).
  - Ex-3: Teams take on more work than they expect to do (Xanpan style).
  - Ex-4: Using velocity ('yesterday's weather' or a rolling average).
- Rec: Author's advice on capacity planning.
  - Rec-1: Don't spend a lot of time deciding on points. Use a rolling average from the last 4-5 sprints as a rough guide.
  - Rec-2: Schedule slightly more work than the team expects to do.
    - Just: Ensures the team doesn't run out of work, but avoids wasting time planning work that won't get done.

### 14. The Players

ID: XANPAN-PLANNING-PLAYERS-01

- Cpt: Player-1. Def: The Product Owner.
  - Ctx: Usually a product manager or business analyst. Needs to be prepared to propose stories, answer questions, and prioritize.
- Cpt: Player-2. Def: The Creators.
  - Ctx: Software engineers, testers, UI designers. The people who build the product.
- Cpt: Player-3. Def: The Facilitator.
  - Ctx: Optional role (e.g., project manager, Scrum master). Helps run the meeting. Inexperienced teams benefit greatly from a facilitator.
- Def: Development-Team. Ctx: The author considers all roles (Product Owner, Creators, Facilitator) to be part of the development team.

### 15. The Artefacts

ID: XANPAN-PLANNING-ARTEFACTS-01

- Cpt: Artefact-1. Def: Blue cards.
  - Def: Describe business-useful functionality. Often in 'user story' format.
- Cpt: Artefact-2. Def: White cards.
  - Def: Describe a technical task needed to build a blue card.
- Cpt: Artefact-3. Def: Red Cards.
  - Def: Bugs and other expedited items.
- Cpt: Artefact-4. Def: Planning board.
  - Def: A physical or electronic board to visualize work.
- Cpt: Artefact-5. Def: Planning poker cards.
  - Def: Used for estimation.

### 16. The Meeting Sequence

ID: XANPAN-PLANNING-SEQUENCE-01

- Cpt: Basic-Format.
  - Proc-1: Team agrees on how much work to attempt.
  - Proc-2: Product Owner presents prioritized work items.
  - Proc-3: Team discusses, breaks down into tasks, and estimates each item.
  - Proc-4: After each item, team compares accepted work against capacity.
  - Proc-5: Process repeats until capacity is reached.
- Cpt: First-Meeting-Challenges. Def: The first planning meeting is the hardest.
  - Cause: Least experience, greatest unknowns, no historical data for velocity.
  - Res: Teams tend to be overly optimistic and accept too much work.
- Cpt: Subsequent-Meetings. Def: The second meeting is often short due to carry-over work. Meetings stabilize after that.
  - Cpt: Backward-Looking-Element. Def: Subsequent meetings include demonstrating and reviewing work from the previous iteration.
- Cpt: Meeting-Schedule. Def: Should happen regularly (e.g., every two weeks) and be scheduled far in advance.

### 17. The Planning Game

ID: XANPAN-PLANNING-GAME-01

- Proc: The game process.
  - Step-1: PO presents prioritized blue stories (1, 2, 3...; no duplicate priorities).
  - Step-2: Development team breaks each blue card down into white technical tasks.
    - Cpt: Breakdown-Purpose. Def: An act of design, requirements elaboration, and creation of small work items.
  - Step-3: Development team estimates the white tasks in points using Planning Poker.
  - Step-4: Team tracks velocity to gauge capacity, using a rolling average.
  - Step-5: Process repeats until capacity is reached.
- Cpt: Testing-Process. Def: How testing is handled.
  - Cpt: White-Card-Testing. Def: Tested by developers using automated unit tests.
  - Cpt: Blue-Card-Testing. Def: Can be tested by professional testers. May be represented as a white task card or handled by moving the blue card to a 'test' column on the board.

#### Trivia and Spikes

ID: XANPAN-PLANNING-SPIKES-01

- Cpt: Trivial-Tasks. Def: May be assigned zero points if they represent negligible work for the team.
- Cpt: Spike-Cards. Def: Used when the team lacks knowledge to estimate a story.
  - Purp: To gain understanding of what needs to be done. The work is thrown away afterward.
  - Res: A set of white task cards describing the actual work.
  - Cpt: Estimation. Def: Spikes are time-boxed, not estimated in points.

#### Counting 'Done'

ID: XANPAN-PLANNING-DONE-01

- Proc: In the review meeting, completed work is counted.
- Req: Teams are encouraged to adopt a 'Definition of Done' (DoD).
  - Def: A checklist of things that must be true for any card to be considered 'done'.
- Cpt: Velocity-Calculation. Def: Only points from 100% completed white cards are counted.
  - Prohib: No partial points for incomplete cards (e.g., '95% done').
  - Just: It's impossible to objectively know how much work is left.
- Cpt: Counting-Whites-vs-Blues. Def: Author recommends counting points from completed whites, even if the parent blue is not done.
  - Just: Smoothes the flow and velocity tracking, leading to better predictability, even if it increases iteration-to-iteration variability.

### 18. Velocity and currency

ID: XANPAN-PLANNING-VELOCITY-01

- Def: Velocity. Def: A measure of how much work (in points) a team completes in an iteration.
- Mech: Use a rolling average over several iterations (e.g., four) to establish a baseline, high-water mark, and low-water mark for planning.
- Cpt: Expectation-Management. Def: Use velocity data to communicate probable outcomes.
  - Ex: 'It is pretty much certain the team will achieve the first 8 points... they might get points 9 to 12 done... if they are very lucky they will do points 13 to 16.'
- Cpt: Points-as-Currency. Def: Points are a team-specific currency whose value (in time) floats.
  - Warn: Points are not directly transferable between teams.
  - Warn: Setting targets for velocity can lead to estimate inflation (Goodhart's Law).

#### Carry-over work

ID: XANPAN-PLANNING-CARRYOVER-01

- Fnd: Work carry-over is a central feature of Xanpan, unlike strict Scrum.
- Proc: During the review, the team decides which remaining work to carry over.
- Cpt: Prioritization. Def: Carried-over work must be re-prioritized against new work; it does not get special priority automatically.

#### How long is a planning meeting?

ID: XANPAN-PLANNING-DURATION-01

- Rec: A well-practiced team should complete it in half a day.
- Warn: The first meeting will likely take much longer.
- Cause: Common reasons for long meetings include poorly prepared Product Owners or design debates.

### 19. Product Owner Preparations (Homework)

ID: XANPAN-PLANNING-PO-PREP-01

- Req: The Product Owner must be well-prepared for the planning meeting.
- Req-1: Know clearly what to ask for.
- Req-2: Be able to answer developer questions.
- Req-3: Have a rough idea of plans for future iterations (release/quarterly plans).
- Req-4: Have the authority to make decisions on priorities and trade-offs during the meeting.

### 20. References (Planning)

ID: XANPAN-PLANNING-REFS-01

- Ref: Cohn, M. 2004. User Stories Applied.

## Part V: More Planning and Estimation

ID: XANPAN-MORE-PLANNING-01

### 21. Ballpark estimates

ID: XANPAN-MORE-PLANNING-BALLPARK-01

- Purp: To get a rough idea of the size of upcoming work without detailed breakdown.
- Proc: At the end of a planning meeting, the PO presents blue cards for high-level estimation.
- Cpt: Characteristics.
  - Def: Rough estimates placed directly on blue cards.
  - Ctx: For guidance only; not a commitment.
  - Warn: The sum of detailed task estimates will supersede the ballpark estimate.

### 22. Pre-Planning Meeting

ID: XANPAN-MORE-PLANNING-PRE-PLANNING-01

- Purp: An opportunity for the PO to get early feedback on stories before the formal planning meeting.
- Warn: Can be wasteful if held too far in advance, as priorities may change.

### 23. Planning Poker

ID: XANPAN-MORE-PLANNING-POKER-01

- Def: A consensus-based estimation technique.
- Proc:
  - Step-1: Team discusses a work item.
  - Step-2: Each member secretly selects a card representing their estimate.
  - Step-3: All members reveal their cards simultaneously.
  - Step-4: If estimates differ, the highest and lowest estimators explain their reasoning.
  - Step-5: Team re-votes. Process repeats until convergence is reached or a decision is made (e.g., take the majority vote).
- Obj: To be roughly right, not precisely wrong. Accuracy comes from aggregating over multiple items via velocity.

#### Baseline - what is 'one'?

ID: XANPAN-MORE-PLANNING-POKER-BASELINE-01

- Proc: To establish a baseline, find the smallest-looking task from a broken-down story and define it as 'one point'.
- Cpt: Evolution. Def: Over time, the team develops an intrinsic, stable understanding of what 'one point' means for them.

### 24. Some Planning Poker theory

ID: XANPAN-MORE-PLANNING-POKER-THEORY-01

- Fnd: Based on 'Wideband Delphi'.
- Cpt: Rationale.
  - Just-1: Avoids 'anchoring' bias, where the first estimate spoken influences others.
  - Just-2: Leverages the power of multiple independent estimates.
  - Just-3: Mitigates the optimism bias of individuals with more power/authority.

### 25. Why break down Blues?

ID: XANPAN-MORE-PLANNING-BREAKDOWN-01

- Purp: Breaking down blue business cards into white tasks has several benefits.
  - Benefit-1: Provides an opportunity to find smaller nuggets of business value.
  - Benefit-2: Serves as a requirements elicitation process, flushing out details and assumptions.
  - Benefit-3: Acts as a design activity, prompting discussion on implementation approach.
  - Benefit-4: Builds shared understanding among all team members.
  - Benefit-5: Forces people to think about the tasks involved, not just the desirable goal, leading to more realistic estimates.

### 26. Estimate in Points Not Hours

ID: XANPAN-MORE-PLANNING-POINTS-01

- Rec: Always estimate in abstract points, not hours.
- Def: A point is a unit of effort, not time or complexity.
- Fnd: The Planning Fallacy (Kahneman & Tversky, 1979).
  - Cpt-1: People systematically underestimate how long work will take.
  - Cpt-2: People are overconfident in their predictions.
- Fnd: Hofstadter's Law: 'It always takes longer than you expect, even when you take into account Hofstadter's Law.'

### 27. Ideal hours

ID: XANPAN-MORE-PLANNING-IDEAL-HOURS-01

- Cpt: Problem. Def: The term 'ideal hour' is ambiguous.
  - Ctx: To team members, it's an abstract unit. To outsiders, it's 60 minutes.
  - Res: If benchmarked against past performance, it's effectively an abstract point anyway.

### 28. And 'Actuals'

ID: XANPAN-MORE-PLANNING-ACTUALS-01

- Cpt: Problem. Def: 'Actuals' are just retrospective estimates, which are also prone to underestimation.
- Warn: Prospective estimates (planning poker) and retrospective estimates ('actuals') are different currencies and should not be mixed.

- Cpt: Time-Tracking-Systems. Def: Corporate time-tracking systems often compound problems with 'actuals'.
  - Cause-1: Systems may not allow logging more than contracted hours.
  - Cause-2: Systems rarely capture 'slack time' or unpaid overtime.
  - Src: Capers Jones. Ctx: Traditional measurement seldom collects >80% of true effort.
  - Warn: Using this inaccurate data for future planning is a major source of risk.
- Rec: Use points for planning/estimation and fill in corporate time-tracking systems separately for accounting. Do not mix the data.

### 29. Deadlines

ID: XANPAN-MORE-PLANNING-DEADLINES-01

- Fnd: Research shows people are very good at working to externally imposed deadlines.
- Cpt: Last-Minute-Work. Def: Leaving work until the last possible moment is a rational approach.
  - Just-1: Minimizes the chance of work changing or being cancelled.
  - Just-2: Maximizes learning time before starting the work.
- Cpt: Xanpan-Deadline-Exploitation. Def: The planning process exploits the psychology of deadlines.
  - Mech-1: Estimates are kept free from deadlines.
  - Mech-2: Deadlines are effective because they are external (end of iteration) and regular.
  - Mech-3: Negotiation occurs over what can be achieved by a specific date, not by changing the estimate.

### 30. References (More Planning)

ID: XANPAN-MORE-PLANNING-REFS-01

- Ref: Ariely, D., and K. Wertenbroch. 2002. "Procrastination, deadlines, and performance: self-control by precommitment."
- Ref: Buehler, R., D. Griffin, and J. Peetz. 2010a. "The Planning Fallacy: Cognitive, Motivational, and Social Origins."
- Ref: Buehler, R., D. Griffin, and M. Ross. 1994. "Exploring the 'Planning Fallacy'."
- Ref: Hofstadter, Douglas R. 1980. Godel Escher Bach: An eternal golden braid.
- Ref: Surowiecki, James. 2004. The wisdom of crowds.

## Part VI: Watching the numbers

ID: XANPAN-METRICS-01

- Cpt: Principle. Def: 'Watching' numbers to understand, not 'targeting' them.
  - Warn: Targeting numbers can lead to undesirable behavior (Goodhart's Law).

### 31. Where does the time go?

ID: XANPAN-METRICS-TIME-ALLOCATION-01

- Mech: Record work as planned or unplanned to analyze effort allocation.
- Purp: Understand where time is spent to take corrective action (e.g., reduce unplanned work).
- Cpt: Analysis-Levels.
  - Level-1: Track total effort (velocity) per iteration.
  - Level-2: Track velocity per product/work stream for 'what-if' analysis.

### 32. Hitting a deadline

ID: XANPAN-METRICS-FORECASTING-01

- Cpt: Effort-Multiplier. Def: A multiplier (M) can be calculated to link initial estimates to final effort.
  - Mdl: Final effort = M x Initial effort estimate.
  - Ctx: Based on historical data from completed projects.
- Cpt: Forecasting-Formula. Def: A formula to forecast project completion time.
  - Mdl: Weeks from today = (I x M) / A x W
  - Cpt: I. Def: Sum total initial effort estimate (from ballpark blues).
  - Cpt: M. Def: Historical effort multiplier.
  - Cpt: A. Def: Average recent velocity per iteration.
  - Cpt: W. Def: Number of weeks per iteration.
- Cpt: Psychological-Effects. Def: The process works due to more than just math.
  - Effect-1: A believable delivery date allows for scope management to meet the deadline.
  - Effect-2: The multiplier becomes a self-fulfilling forecast.
  - Effect-3: A rational process builds trust and commitment (placebo effect).
- Warn: Avoid projecting beyond 12 weeks, as velocity changes.
- Rec: Meet deadlines by being flexible on scope, not by projecting estimates far forward.

### 33. Other numbers

ID: XANPAN-METRICS-OTHER-01

- Rec: Each team should track metrics relevant to them.
- Cpt: Example-Metrics-Cost-Side.
  - Ex-1: Size and rate of change of the product backlog.
  - Ex-2: Outstanding defect count and discovery rate.
  - Ex-3: Working hours vs. contracted hours.
  - Ex-4: Mean time to delivery / mean time to fix.
  - Ex-5: Statistical distribution of velocity and work arrival.
- Cpt: Example-Metrics-Benefit-Side.
  - Ex-1: Revenue from new features.
  - Ex-2: Deals signed due to new functionality.
  - Ex-3: Change in support costs.
- Cpt: Metric-Interpretation.
  - Fnd: The trend is more important than a single data point.
  - Act: When an anomaly occurs, investigate it as a potential new trend.

## Part VII: Board 2

ID: XANPAN-BOARD-2-01
Ctx: A more Kanban-style board for a team with significant unplanned work.

### 34. Planned and Unplanned

ID: XANPAN-BOARD-2-PLANNING-01

- Cpt: Team-Context. Def: Team used 3-week iterations and had almost daily new requests (bugs, urgent changes).
- Proc: A daily re-prioritization process.
  - Step-1: Planned work for the iteration starts in the 'Planned' column.
  - Step-2: New urgent requests are added to the 'Unplanned' column.
  - Step-3: Every morning, the team lead and product manager review 'Planned', 'Unplanned', and 'Prioritised' columns.
  - Step-4: They populate the 'Prioritised' column with the day's priorities.
  - Step-5: Available team members pull tasks from the 'Prioritised' column.

### 35. Testers

ID: XANPAN-BOARD-2-TESTERS-01

- Cpt: Team-Context. Def: No dedicated testers in the team; developers performed testing.
- Cpt: External-Testers. Def: A separate team of testers in a different time zone provided feedback with a significant lag.
- Proc: Sign-off-Process.
  - Mech: A 'Ready For Sign-off' column was used.
  - Proc: Developer moves completed card to this column. Product manager reviews and moves it to 'Done' or back for rework.

### 36. Moving backwards

ID: XANPAN-BOARD-2-BACKWARD-FLOW-01

- Cpt: Problem. Def: A card needing to move backward (right to left) is a sign of a problem.
- Rec: Moving the card back is the least disruptive option.
- Warn: Ignoring the problem or raising a separate bug creates illusion of progress and administrative overhead.

### 37. Planning

ID: XANPAN-BOARD-2-PLANNING-DETAILS-01

- Cpt: Estimation. Def: This team used T-shirt sizing (S, M, L) instead of points.
  - Purp: Used only to help set daily priorities, not for velocity or forecasting.
- Cpt: Cycle-Time-Tracking. Def: Dates were tracked on the back of cards to monitor time from 'prioritised' to 'done'.

### 38. Specialists

ID: XANPAN-BOARD-2-SPECIALISTS-01

- Cpt: Problem. Def: Team had a skill silo (one Java developer, four C developers).
- Mech: A special 'Java' area was created on the board to manage work for the specialist.
- Res: The visualization helped identify that the Java developer was frequently blocked, allowing the team to address the underlying issues.

### 39. Technical Debt (and tax)

ID: XANPAN-BOARD-2-TECH-DEBT-01

- Def: Technical-Debt-Tax. Def: A strategic agreement to allocate a percentage of effort to technical improvements.
- Cpt: Implementation-Methods.
  - Mdl-1: Allocate a percentage of points in each iteration to developer-nominated improvements.
  - Mdl-2: Dedicate every Nth iteration entirely to refactoring.
- Cpt: Team-Example. Def: This team had a 60% tech debt tax.
  - Mech: Ensured that 3 out of 5 cards in the 'Prioritised' column were improvement cards.

### 40. Key points (Board 2)

ID: XANPAN-BOARD-2-KEY-POINTS-01

- Cpt: Daily-Prioritization. Def: Planned, Unplanned, and Prioritised columns were reviewed daily.
- Cpt: WIP-Limits. Def: The team imposed work-in-progress limits.
- Cpt: Provisional-Review. Def: Work was reviewed before being considered done.
- Cpt: Tax-Policy. Def: The team had an active tax policy for technical debt.

## Part VIII: Non-technical Practices

ID: XANPAN-NON-TECH-PRACTICES-01

### 41. Work in routines

ID: XANPAN-PRACTICE-ROUTINES-01

- Req: Set-piece events (iterations, stand-ups, reviews) should occur on regular schedules.
- Purp: Creates rhythm, imposes deadlines, and provides a framework for work.

### 42. Multiple work streams per team

ID: XANPAN-PRACTICE-MULTI-STREAM-01

- Cpt: Reality. Def: Most teams deal with more than one work stream.
- Rec: Key principles for success.
  - Rec-1: Accept it and adopt a team-centric view, not a project-centric one.
  - Rec-2: Management's job is to supply the team with a valuable stream of work and optimize flow across streams.

### 43. Benchmark against yourself

ID: XANPAN-PRACTICE-BENCHMARK-01

- Fnd: In software, 'Past performance is a good indicator of future performance', provided nothing significant changes.
- Req: Teams must examine and understand their own past performance.
- Prohib: Do not use another team's performance or an industry norm as a benchmark.

### 44. Break down stories to tasks

ID: XANPAN-PRACTICE-BREAKDOWN-01

- Rec: Break down large items (stories) into individual tasks.
- Just: It is an effective way of working and can improve flow.

### 45. Small pieces of work

ID: XANPAN-PRACTICE-SMALL-PIECES-01

- Obj: Constantly search for small, useful pieces of work.
- Just: Small pieces flow through the delivery process more easily.
- Cpt: Goal. Def: To be able to size the work to fit the time available, rather than asking how long work will take.

### 46. Planning horizons

ID: XANPAN-PRACTICE-HORIZONS-01

- Cpt: Three-Horizons. Def: Xanpan uses three rolling planning horizons.
  - Horizon-1: Iteration plan. Ctx: 2 weeks ahead, high certainty. For the building team.
  - Horizon-2: Quarterly plan. Ctx: ~12 weeks ahead, limited certainty. For POs, managers to prepare work and coordinate.
  - Horizon-3: Roadmap. Ctx: Years ahead, very little certainty. A strategic 'what if' document.

### 47. Flow

ID: XANPAN-PRACTICE-FLOW-01

- Def: Flow. Def: The movement of work through a system (people, processes, etc.). Taken from Lean/Toyota.
- Cpt: Optimization-Goals. Def: Flow can be optimized for different objectives (e.g., rapid throughput, lowest cost, predictability).
- Cpt: WIP-Limits. Def: Work-in-progress limits are a key mechanism for improving flow.
  - Mdl-1: Activity-based WIP limits. Mech: Placing numeric limits on board columns. Typically one card per person.
  - Mdl-2: Time-based WIP limits. Mech: Limiting how much work is allowed into the system over a period. Implemented in Xanpan via velocity and estimation in the planning meeting.
- Cpt: Xanpan-Strategy. Def: Flow the work to the team and optimize the team for predictable deliveries and increasing efficiency.

### 48. Mental flow

ID: XANPAN-PRACTICE-MENTAL-FLOW-01

- Def: Mental-Flow. Def: A mental state of energized focus, full involvement, and enjoyment in an activity.
- Obj: By optimizing system flow, Xanpan aims to also deliver mental flow for individuals.

### 49. Absolute Prioritisation

ID: XANPAN-PRACTICE-PRIORITISATION-01

- Req: All work scheduled into an iteration must be in absolute priority order (1, 2, 3...) with no duplicates.
- Cpt: MoSCoW-Rules. Ctx: Can be a useful first cut, but often results in too many 'musts' and is insufficient.
- Cpt: Criteria. Def: The criteria used for ordering (business value, risk, etc.) are less important than the act of creating a consistent priority order.

### 50. Product Ownership

ID: XANPAN-PRACTICE-PRODUCT-OWNERSHIP-01

- Def: Product-Ownership. Def: The practice of evaluating, filtering, and prioritizing ideas for development, and guiding the team on what to build.
- Cpt: Role-vs-Practice. Def: In Xanpan, product ownership is a practice, not a role. The work needs to be done regardless of who does it.
- Cpt: Typical-Actors. Def: The work is often done by a Product Owner, but can also fall to Project Managers, Development Managers, Customers, or Senior Developers.

### 51. Pick 'n Mix

ID: XANPAN-PRACTICE-PICK-N-MIX-01

- Fnd: Xanpan is a hybrid method.
- Rec: Teams are encouraged to beg, borrow, and steal practices from anywhere to build their own method.

### 52. Action over words: 'just-do-it', experimentation

ID: XANPAN-PRACTICE-EXPERIMENTATION-01

- Fnd: A 'bias for action'. To understand the work, one must do the work.
- Proc: A recipe for experimentation.
  - Step-1: Identify a practice to try.
  - Step-2: Decide what it would mean for the team.
  - Step-3: Set a time frame for the experiment.
  - Step-4: Make the change and assess at the end of the period.

### 53. References (Non-technical Practices)

ID: XANPAN-NON-TECH-REFS-01

- Ref: Goldratt, E. M., and J. Cox. 1993. The Goal: A Process of Ongoing Improvement.

## Part IX: Technical Practices

ID: XANPAN-TECH-PRACTICES-01

- Fnd: Quality is Free. Poor-quality software costs more to build and maintain than high-quality software.
- Req: Unless a team is actively working to improve software quality, any attempts at Agile are likely to fail.
- Req: If a team is not practicing TDD, they are probably not Agile and will likely encounter problems.

### 54. Test-Driven Development

ID: XANPAN-TECH-TDD-01

- Def: TDD. Def: Specifying tests before any production code is written.
- Purp: To get fast feedback.
- Cpt: TDD-as-Measurement. Def: In software engineering, tests are the measurement tools used to assess creations.
- Cpt: TDD-as-Design. Def: TDD is also about specifying an end condition, which drives design.

### 55. Test-Driven Development (Unit Testing)

ID: XANPAN-TECH-TDD-UNIT-01

- Def: Unit-TDD. Def: Developers writing code (e.g., using xUnit tools) to test the code they are about to write.
- Cpt: Characteristics.
  - Cpt: Test-Code-Volume. Ctx: Often 2-4 times as much test code as production code.
  - Cpt: Fine-Grained. Ctx: Tests are very small, testing just a few lines of production code.
- Cpt: Justification. Def: The time for TDD comes from time saved by not using a debugger.
- Cpt: Research-Findings. Def: Studies show TDD leads to more tests, higher productivity, and significant defect reduction, though initial development time may increase.

### 56. Acceptance Test-Driven Development (ATDD)

ID: XANPAN-TECH-ATDD-01

- Def: ATDD. Def: Acceptance tests specified by a business representative and often implemented by a tester.
- Cpt: Tools-and-Approaches. Def: A plethora of tools exist.
  - Ex-1: Fit/Fitnesse (table-driven tests).
  - Ex-2: BDD tools (JBehave, Cucumber) under the umbrella of 'Specification by Example'.
- Mech: These tools often require 'glue code' to interface with the system, forcing a good separation between UI and business logic.

### 57. Refactoring

ID: XANPAN-TECH-REFACTORING-01
Src: Martin Fowler.

- Def: Refactoring. Def: A disciplined technique for restructuring existing code, altering its internal structure without changing its external behavior.
- Req: A comprehensive test suite (from TDD) acts as a safety net for refactoring.
- Cpt: Two-Levels-of-Refactoring.
  - Level-1: Refactoring-in-the-small. Ctx: An everyday part of a programmer's work, done continuously as code is written.
  - Level-2: Refactoring-in-the-large. Ctx: A major effort to improve a large part of a system, often legacy code. Requires being called out and may need special time allocated (see Technical Debt tax).

### 58. Frequent builds

ID: XANPAN-TECH-BUILDS-01

- Rec: Aim for builds every 15 minutes or so.
- Proc: Modern builds not only compile code but also run the entire test suite (unit and acceptance).

### 59. Continuous Integration

ID: XANPAN-TECH-CI-01

- Def: CI. Def: Programmers regularly integrate their new code with the existing code base.
- Purp: Brings conflicts to attention early and avoids 'merge hell'.
- Cpt: Branching-Strategy. Def: Short-lived feature branches are acceptable if merged back quickly. Feature toggles are an alternative.

### 60. Source code control

ID: XANPAN-TECH-SCC-01

- Req: Source code control is a given for modern development and essential for CI and frequent builds.
- Warn: Organizations using tools that do not support source code control should question their continued use.

### 61. Code Reviews

ID: XANPAN-TECH-REVIEWS-01

- Fnd: Formal design and code inspections are highly effective defect removal activities.
- Rec: Author prefers informal, one-to-one personal reviews over large, formal meetings.
- Warn: Reviews are often skipped, and can be used for bullying if not handled well. Work of senior developers should be reviewed just as junior developers' work is.

### 62. Pair programming

ID: XANPAN-TECH-PAIRING-01
Src: Extreme Programming (K. Beck 2000).

- Def: Pair-Programming. Def: Two programmers sit at the same desk with one screen and one keyboard. One programs while the other watches, reviews, and thinks. They swap roles periodically.
- Cpt: Quality-Argument. Def: It is 'code-reviewing on steroids'—instantaneous and reviews every line and design decision.
- Cpt: Intensity-Argument. Def: Programmers are highly effective due to intense focus and fewer interruptions, but cannot be expected to work long hours.
- Cpt: Economics. Def: The economic case is not definitively clear, but studies suggest it can be viable. The author believes it is effective but must be tried seriously.

### 63. Static analysis

ID: XANPAN-TECH-STATIC-ANALYSIS-01

- Cpt: Adoption. Def: Has a much higher uptake than code review or pair programming.
- Cause: Often built into developer tools, is relatively cheap, and is marketed by tool companies.
- Cpt: Functionality. Def: Reads source code and analyzes it for problems.
- Cpt: Effectiveness. Def: Very efficient at finding code-level issues but poor at identifying design flaws.

### 64. Coding Standards

ID: XANPAN-TECH-CODING-STANDARDS-01

- Cpt: Problem. Def: Coding standards often become the subject of intense debate ('Holy Wars') and are difficult to implement effectively.
- Cpt: Underlying-Issue. Def: Standards are often applied in preference to education.
- Rec: An iterative, consensus-based approach to adopting standards.
  - Proc-1: Start with a standard from the web.
  - Proc-2: Convene a meeting and vote on proposed items to create a hierarchy (e.g., Mandated, Advisable).
  - Proc-3: Review and vote on the standards every few months, allowing them to evolve.
  - Purp: Keeps the standards living and encourages education and buy-in.

### 65. Finally (Technical Practices)

ID: XANPAN-TECH-CONCLUSION-01

- Cpt: Summary. Def: This is not an exhaustive list of quality techniques.
- Rec: Teams should constantly seek out the best techniques for their specific technology.
- Warn: If you are not doing TDD, you are probably not doing Agile effectively.

### 66. References (Technical Practices)

ID: XANPAN-TECH-REFS-01

- Ref: Adzic, G. 2011. Specification by Example.
- Ref: Beck, K. 2002. Test Driven Development.
- Ref: Feathers, M. 2004. Working Effectively with Legacy Code.
- Ref: Fowler, Martin, and Kent Beck. 1999. Refactoring.
- Ref: Freeman, S., and N. Pryce. 2009. Growing Object-Oriented Software, Guided by Tests.

## Part X: Planning beyond the Iteration

ID: XANPAN-BEYOND-ITERATION-01

- Cpt: Three-Planning-Horizons. Def: Xanpan uses three rolling, recurring plans with different levels of certainty.
  - Cpt: Certainty-Gradient. Def: Certainty decreases as the planning horizon extends into the future.
  - Horizon-1: Iteration Plan. Ctx: ~2 weeks ahead. Highest certainty. Focus for the delivery team.
  - Horizon-2: Quarterly Plan. Ctx: ~12 weeks ahead. Limited certainty. Focus for POs/managers.
  - Horizon-3: Roadmap. Ctx: 1+ years ahead. Highly speculative. Focus for strategic thinkers.

### 67. Iteration Planning

ID: XANPAN-BEYOND-ITERATION-PLANNING-01

- Fnd: Iteration planning is a highly collaborative process involving all team members who will do the work.
- Just: Involving everyone brings all expertise to bear, gives everyone a voice, and reduces communication overhead compared to a two-stage (plan then communicate) process.

### 68. Quarterly Plans

ID: XANPAN-BEYOND-QUARTERLY-PLAN-01

- Purp: To provide forward thinking and synchronization with other functions without over-planning.
- Mech: A rolling plan of ~12 weeks (e.g., six 2-week iterations) represented as 'buckets'.
  - Cpt: Bucket-System. Def: Six buckets (+1 to +6), each filled to the approximate capacity (velocity) of an iteration with ballpark-estimated stories.
  - Proc: After an iteration, the +1 bucket is largely consumed, and the buckets are rolled forward (+2 becomes +1, etc.) and rebalanced.
- Warn: The contents are possibilities, not commitments.

### 69. Release plans

ID: XANPAN-BEYOND-RELEASE-PLAN-01

- Cpt: Terminology. Def: The term 'Quarterly Plan' is preferred over the older 'Release Plan'.
- Just: 'Release Plan' is confusing when releases do not align with the quarterly cycle (e.g., continuous deployment).

### 70. Roadmaps

ID: XANPAN-BEYOND-ROADMAP-01

- Purp: To look further into the future (1+ years) than quarterly plans.
- Cpt: Focus. Def: Emphasis is on value, not effort. Effort estimates are best avoided at this range.
- Cpt: Content. Def: Should include external rhythms and events.
  - Ex: Industry trade shows, customer business cycles (Christmas), legislative changes, technology trends (arrival of new, passing of old).
- Cpt: Function. Def: Marries company strategy with product strategy and serves as a learning/scenario-planning tool.

### 71. Too fast for planning?

ID: XANPAN-BEYOND-FAST-TEAMS-01

- Cpt: Question. Def: Do very fast teams (e.g., 5-day delivery) need forward planning?
- Cpt: Answer. Def: They could reduce or dispense with iteration/quarterly plans, but roadmaps (product/company strategy) remain valuable.
- Fnd: Planning is not just about looking forward; it is also about making sense of the past.

### 72. Finally (Planning Beyond)

ID: XANPAN-BEYOND-CONCLUSION-01

- Cpt: Summary. Def: Roadmaps are speculative, quarterly plans are likely, and iteration plans are as close to certain as possible.

### 73. References (Planning Beyond)

ID: XANPAN-BEYOND-REFS-01

- Ref: Mintzberg, H. 1994. The Rise and Fall of Strategic Planning.
- Ref: Schwartz, P. 1991. The art of the long view.

## Part XI: Board 3 - planned, unplanned and improving

ID: XANPAN-BOARD-3-01

- Fnd: Visualizing the workflow through the board helps teams reason about their process and see problems.

### 74. Planned and Unplanned

ID: XANPAN-BOARD-3-PLANNING-01

- Cpt: Problem. Def: Teams face both planned (project) and unplanned (support, urgent requests) work.
- Cpt: Scrum-Answer. Def: Stamp out unplanned work. This is often not a useful answer in reality.
- Cpt: Kanban-Answer. Def: Run all work as 'unplanned'. This robs the team of the rhythm of iterations.
- Cpt: Xanpan-Answer. Def: Keep iterations but allow for unplanned work, using a board designed to handle both.
  - Mech: Board starts with 'Planned', 'Unplanned', and 'Prioritised' columns.
  - Proc: Planned work populates the 'Planned' column. New work is added to 'Unplanned'. Someone with authority reviews both columns daily to populate the 'Prioritised' column.
- Cpt: Value-of-Unplanned-Work. Def: Just because work is unplanned does not mean it is valueless. It should be assessed like any other work.

### 75. Blocked, dropped

ID: XANPAN-BOARD-3-BLOCKED-01

- Mech: A section at the bottom of each column for blocked or dropped work.
- Proc: When a card is blocked or de-scoped, it is moved to the bottom section with a colored sticky indicating the reason.
- Purp: Provides data for improving flow by identifying common impediments.

### 76. Improving

ID: XANPAN-BOARD-3-IMPROVING-01
Fnd: Based on Theory of Constraints (Goldratt and Cox 1993).

- Cpt: Stage-1. Def: Initial setup and learning.
  - Proc-1: Model the current workflow on the board.
  - Proc-2: Operate the board for at least one iteration to learn.
  - Proc-3: Reflect and refine the board (and thus the workflow).
  - Proc-4: Start gathering qualitative and quantitative data about work flow.
- Cpt: Stage-2. Def: Optimizing the board for throughput.
  - Mech-1: Make things move through the pipe faster by addressing blocks and queues.
  - Mech-2: Make the pipe bigger by adding people to the team gradually (avoid 'foie gras recruitment').
- Cpt: Stage-3. Def: Further optimization.
  - Mech-1: Level the workflow (reduce peaks and troughs).
  - Mech-2: Increase the value of items moving through the pipeline.

### 77. Board philosophy

ID: XANPAN-BOARD-3-PHILOSOPHY-01

- Fnd: Boards are a physical visualization of the team's workflow.
- Cpt: General-Format. Def: A series of queues and work columns (Queue -> Work -> Queue -> Work...).
- Cpt: WIP-Limits. Def: Typically applied to work columns, often equal to the number of people working from that column.
- Cpt: Queue-Limits. Def: Queues are usually limitless. A growing queue is a sign of a bottleneck in the next work column.

### 78. Extending the board

ID: XANPAN-BOARD-3-EXTENDING-01

- Cpt: Concept. Def: Teams may want to extend their boards to capture activities before or after their direct workflow.
- Warn: This can be a frustrating exercise if the team has no power to influence these external activities.

### 79. References (Board 3)

ID: XANPAN-BOARD-3-REFS-01

- Ref: Henney, K. 2004. "Stable Intermediate Forms."

## Part XII: Origins of Xanpan

ID: XANPAN-ORIGINS-01

- Cpt: Evolution-Path. Def: The author's process evolved over time.
  - Path-1: Started with a version of XP infused with Lean, called 'Blue-White-Red'.
  - Path-2: Incorporated ideas from Scrum.
  - Path-3: Kanban's unveiling clarified and emphasized existing ideas, particularly explicit WIP limits and multi-column boards.
  - Path-4: Experience with product companies introduced a strong Product Management component.
  - Path-5: Realization that many teams were naturally bending Scrum/XP rules in ways that aligned with Xanpan (e.g., allowing stories to span sprints to improve flow).
- Cpt: Xanpan-Composition. Def: A mix of ideas from multiple sources.
  - Src-1: XP and Scrum.
  - Src-2: Lean and Kanban.
  - Src-3: Product Management (and Business Analysis).
  - Src-4: Other management and organizational learning concepts.
- Cpt: Current-Scope. Def: Xanpan is currently an approach for developing software.
  - Ctx: If applied outside software, it would likely resemble Lean or Kanban more closely as the XP technical practices would be dropped.

### 80. References (Origins)

ID: XANPAN-ORIGINS-REFS-01

- Ref: Kelly, A. 2012. Business Patterns for Software Developers.

## Appendix: Quality

ID: XANPAN-APPENDIX-QUALITY-01

- Cpt: Problem-with-Definition. Def: Defining software quality is difficult. 'Conformance to specification' is a common but flawed definition.
- Cpt: Flaws-in-Conformance-Definition.
  - Flaw-1: Much software is developed without a specification.
  - Flaw-2: Specifications can themselves be a source of defects.
  - Flaw-3: Specifications change during development.
  - Flaw-4: Specifications are often vague.
- Cpt: Alternative-Definitions.
  - Def-1: 'Quality is value to some person.' Src: Jerry Weinberg.
  - Def-2: 'Fitness for intended use.' Src: Joseph Juran.
- Cpt: Core-Universal-Properties. Def: The author proposes two universal properties of software quality based on Juran's definition.
  - Prop-1: A low number of defects.
  - Prop-2: A high degree of changeability (maintainability).

### Internal and External quality

ID: XANPAN-QUALITY-INTERNAL-EXTERNAL-01

- Def: External-Quality. Def: What customers and users see (e.g., ease of use, crashes).
- Def: Internal-Quality. Def: What only the technical team sees (e.g., code structure, ease of change).
- Cpt: Relationship. Def: While a product could have high external and low internal quality, the author has never encountered one.

### Software quality

ID: XANPAN-QUALITY-ATTRIBUTES-01

- Rec: It is better to discuss 'qualities' (attributes) rather than a single concept of 'quality'.
- Rec: Every team should engage with their customers to define what quality means for their specific product.

### Quality Onion

ID: XANPAN-QUALITY-ONION-01

- Mdl: Quality-Onion. Def: A metaphor for software quality, with successive layers of desired qualities.
- Cpt: Core. Def: The two invariable qualities at the center of the onion.
  - Core-1: Defects (inverse relationship with quality).
  - Core-2: Maintainability.
- Rec: Teams should draw their own quality onions, specifying how to measure each quality and the desired performance level.

### Defects

ID: XANPAN-QUALITY-DEFECTS-01

- Cpt: Subjectivity. Def: Many defects are subjective ('one man's bug is another man's feature').
- Cpt: Defect-Types.
  - Type-1: Absolute defects. Def: Objectively incorrect software behavior.
  - Type-2: Common defects. Def: Any behavior a person is concerned enough about to raise a defect report.
- Rec: In practice, it is better to accept all common defects and prioritize them against other work.

### Changeability (Maintainability)

ID: XANPAN-QUALITY-MAINTAINABILITY-01
Src: John Vlissides.

- Def: Changeability. Def: The ease with which a program can be changed. Good software allows for additive change, not invasive 'hacking'.
- Cpt: Attributes-of-Changeable-Software.
  - Attr-1: Change is localized.
  - Attr-2: Change is less error-prone.
  - Attr-3: Change does not detract from future changeability.
- Fnd: Successful software lives and changes; unsuccessful software is dead.

### Obtaining the qualities (design)

ID: XANPAN-QUALITY-DESIGN-01

- Cpt: Two-Schools-of-Thought.
  - School-1: Traditional 'Big Up-Front Design' (BUFD) / Waterfall.
  - School-2: Emergent 'Rough Up-Front Design' (RUFD) / Agile.
- Cpt: Xanpan-Approach. Def: Xanpan embraces emergent design.
- Cpt: Emergent-Design-Principles (from XP).
  - Prin-1: YAGNI ('You aren't gonna need it').
  - Prin-2: 'Do the simplest thing that could possibly work'.
  - Prin-3: 'Always implement things when you actually need them...'
- Cpt: Design-Process. Def: Design is not a one-time event but is spread out, pulled as needed, and done interactively.

### Quality and business value

ID: XANPAN-QUALITY-BIZ-VALUE-01

- Fnd: Higher quality implies higher business value.
- Cpt: Axiom. Def: 'Quality results in business benefit'.
- Cpt: Mismatched-Understanding. Def: Statements like "we can't afford this much quality" are the result of different parties having different definitions of 'quality'.

### Finally (Quality)

ID: XANPAN-QUALITY-CONCLUSION-01

- Fnd: The underlying principle of quality in Xanpan is 'fitness for intended use' (Juran).
- Req: Engineers must strive to keep the defect count low and maintainability high.
- Warn: This is not an excuse to over-engineer or gold-plate products.