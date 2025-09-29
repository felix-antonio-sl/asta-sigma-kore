# Agent Responsibility Framework for Digital Agents: Roles and Responsibilities Related to Facets of Work

## 1 Toward a New Approach for Describing Digital Agents
Current trends toward digitization increase the need for analysis and design approaches that
are suitable for business professionals because their appreciation of business and operational
realities is essential for designing effective digital agents. That need frequently encounters
longstanding difficulties in establishing effective and mutually supportive collaboration of
business professionals and IT experts during the analysis and design of computerized systems.
Aside from differences in professional interests and concerns, many aspects of this problem
involve lack of fit between the interests and concerns of business professionals and the tools,
methods, and concerns of IT experts. Many researchers have discussed related problems
involving modeling method usage [1,2], model comprehension [2, 3, 4], use of only a subset
of the syntactic concepts provided [5], poor fit with modelers’ aptitudes and knowledge [6,7]
excessive cognitive load [8], lack of flexibility, dilemmas of control, and excessive
prescriptiveness [9]. Part of the problem is that widely used documentation tools and methods
(e.g., BPMN and ERD) are often too detailed to support collaborative visualization and
discussion related to system design and evaluation.
This paper follows the spirit of a 2018 BISE research note [10] research note that
responded to the above issues by promoting ways to move enterprise modeling from an expert
discipline toward “grass roots modeling” and "modeling for the masses" by accepting
“softened requirements to completeness, coherence and rigor.” This paper reflects that spirit
while still calling for carefully defined concepts.
This paper’s approach for articulating intuitive understandings of systems is largely
separate from detailed documentation needed by development efforts. Its new agent
responsibility (AR) framework was inspired by Shneiderman’s human-centered AI (HCAI)
framework [11,12,13], whose two dimensions are low to high computer automation and low
to high human control. The AR framework’s horizontal dimension is a spectrum of digital
agent roles in relation to specific work systems. The vertical dimension is a series of facets of
work to which digital agents might be applied in work systems. This paper explains those
ideas and presents four examples to illustrate their potential use. Its emphasis on
responsibilities of digital agents might facilitate analysis and design related to increasingly
common digital agents even though it will not overcome all known problems related to
requirements analysis.
Goal. This paper presents a new agent responsibility framework and explains how its use
by business professionals and IT experts might facilitate analysis and design related to digital
agents by helping them identify and discuss many types of roles and related responsibilities
that work systems might delegate to digital agents.
Organization. This paper builds on a long research stream related to work systems. The
next section presents a view of digital agents, which are a type of algorithmic agent. Work
system theory (WST) is summarized as the core of a perspective for describing the usage
context for digital agents. A hypothetical hiring work system illustrates how digital agents can
be treated in designing or evaluating a work system. The agent responsibility (AR) framework
is presented with emphasis on its two dimensions: a spectrum of roles and responsibilities and
different facets of work. Each of those dimensions is explained in more depth through
application to three additional examples of digital agents: an ecommerce platform, a real time
advertising auction, and a self-driving car’s information system. A concluding section
summarizes the overall implication that the use of WST and the AR framework provide a
practical approach for understanding and evaluating roles, responsibilities, and capabilities of
digital agents in their context of use.

## 2 Digital Agents as Algorithmic Agents¹
Digital agents are digital entities whose roles and responsibilities are delegated by work
systems (defined later). They are algorithmic agents because they operate by executing
algorithms. Those algorithms may be as simple as a decision rule or as complex as an
advanced optimization method or an integrated algorithm for driving a self-driving car. Given
their nature as abstractions, algorithms cannot do anything by themselves and have effect only
when human or non-human actors use them to support, control, or perform actions in the
world.

Table 1. Digital agents described based on the activities that they perform
- using facial images to identify people
- converting spoken words into text
- deciding which applicants should be hired or accepted by a university
- deciding whether to alert medical staff about a change in a patient’s condition
- deciding whether a person is legally entitled to drive a car
- deciding whether an autonomous vehicle needs to stop or swerve
- controlling the aerodynamics of a rocket
- translating from one language to another
- deciding whether to turn off a machine likely to have a mechanical failure soon
- suggesting where police should be deployed over the next eight hours
- selecting defective items that are being moved on a conveyor belt
- combining multiple items in an order to minimize shipping cost
- determining the best route for driving from a starting point to a destination
- finding the laws that are most relevant to a specific lawsuit

## 3 Work Systems as the Context for Using Digital Agents
The work system perspective (WSP) is a general approach for understanding systems in
organizations by treating those systems as work systems, as explained in [15,16]. The WSP’s
core is work system theory (WST), which consists of the definition of work system plus two
frameworks for understanding a work system: 1) The work system framework (Fig. 1) is a
static view for summarizing how a work system operates. 2) The work system life cycle
model (WSLC – Fig. 1) explains how a work system evolves through planned and unplanned
change. Earlier confusion about the relationship between core of the work system approach
and its various extensions was clarified when [16] identified WST as a conceptual core
underlying the work system method (WSM) which had been developed over several decades
as a semi-formal systems analysis method for business professionals. Various versions of
WSM were tailored to instructional needs of different courses, most of which were for
employed MBA and Executive MBA students. Individual students or teams of students used
WSM templates to produce over 700 management briefings recommending improvements of
problematic IT-reliant work systems during 2003-2017, mostly in their own organizations
(e.g.,[17]). The goal of a work system-based description or analysis is to understand a
situation and often to communicate and collaborate about it with others. When describing and
analyzing work systems, the identification and boundaries of the work system are choices that
depend on the purpose of the analysis. As discussed in many articles and books about systems
approaches (e.g., [18, 19]), different observers may use work system ideas to describe the
same system (e.g., a sales system, purchasing system, or management system) somewhat
differently even when they puruse similar purposes. Parts of those efforts might document
system components using rigorous tools such as BPMN and ERD, even though that level of
specificity might be unncessary elsehwhere in those efforts.

![Fig. 1. Work system framework and work system life cycle model](#)

Definition of work system. A work system is a system in which human participants and/or
machines perform work (processes and activities) using information, technology, and other
resources to produce specific product/services for internal and/or external customers. [16].
Terms in that definition are stated in relation to work systems rather than in relation to
computer science or other discourses. Customer refers to any entity using the work system’s
outputs; product/service avoids distinctions between products and services that are not helpful
when discussing work systems; processes and activities recognizes that activities in a work
system may or may not be structured enough to call a process. The first and/or in the
definition addresses trends toward service-orientation and automation by saying that work
systems may be sociotechnical (human participants perform some of the work) or totally
automated (machines perform all of the work).

Information systems and projects as special cases of work systems. Instead of seeing an
IS as a tool, like a laptop or a hammer, the work system perspective treats information
systems as work systems most of whose activities are devoted to capturing, transmitting,
storing, retrieving, deleting, manipulating, and/or displaying information [15,16]. An IS may
be sociotechnical (e.g., financial analysts creating economic projections with the help of
modeling software) or totally automated (e.g., computers generating economic projections
automatically after being programmed by people). Projects are another important special case,
i.e., work systems designed to produce specific product/services and then go out of existence.
Software development is a type of project (and hence, a work system) that can be executed in
many ways.

Digital agents as information systems. Digital agents are totally automated information
systems whose roles and related responsibilities are delegated by a work system. The roles
describe activities that a digital agent executes for the work system. The responsibilities
describe the expected level of performance regarding those activities. A digital agent’s
capabilities determine the extent to which the delegated roles and responsibilities are feasible.
A digital agent may be an integral component of the work system or may be completely
separate from it, as in outsourcing of work. The somewhat similar idea of delegation to
agentic IS artifacts is explained in [20], which discusses many concepts related to delegation,
rights, and responsibilities.

Work system framework: elements of a basic understanding of a work system. Fig. 1
identifies nine elements of a basic understanding of a work system’s form, function, and
environment during a period when it retains its identity even as incremental changes may
occur, such as minor process changes, personnel substitutions, or technology upgrades.
Processes and activities, participants, information, and technologies are completely within
the work system. Customers and product/services may be partially inside and partially outside
because customers often participate in activities within a work system and because
product/services take shape within a work system. Environment, infrastructure, and strategies
are external to the work system even though they have direct impacts on its operation.

Work system life cycle model (WSLC): how work systems change over time. Fig. 1
says that work systems (including digital agents, which are work systems since they are
information systems) evolve through a combination of planned change via projects and
unplanned change via adaptations and workarounds. Significant changes typically affect
multiple elements of the work system framework, not just technology. Projects that pursue
planned change in business settings traverse three main phases: initiation, development, and
implementation. Many aspects of the WSLC remain valid even with nominally agile
approaches. Those aspects include the emphasis on work system changes rather than just
software development, the focus on evolution over time rather than one-time projects, the
simultaneous importance of planned and unplanned change, and the relevance of key
responsibilities within each phase.

### 3.1 A Hypothetical Work System that Uses AI-Based Digital Agents
Table 2 is a work system snapshot (a tool from WSM) summarizing a hypothetical hiring
system that is used here to illustrate a work system perspective in a situation that might
involve AI. In this example, PQR Corp implemented a new hiring work system two years ago
to improve a previous hiring work system that absorbed too much effort inside PQR Corp and
operated so slowly that qualified candidates sometimes took jobs at other companies before
receiving offers. Also, it hired too many unsuitable candidates who left before becoming
productive. The new hiring work system used AlgoComm and AlgoRank, digital agents
controlled by software from a cloud-based suite of software tools provided by AlgoCorp.
AlgoComm provides capabilities for posting job ads, receiving applications, setting up
interview appointments, and performing other communication with candidates. AlgoRank
ranks candidates based on job criteria and a machine learning application driven by
AlgoCorp’s extensive database of job qualifications, salaries, and other information. Both
AlgoComm and AlgoRank are digital agents.

Management has become dissatisfied with the current hiring work system. Excessive effort
and delays have been reduced, but interviewers and applicants find the AlgoComm interface
mechanical, uninviting, and lacking a human feel. Also, three unsuitable hires occurred in the
last six months despite use of AlgoRank capabilities. Management wants to launch a new
project to upgrade the hiring work system once again. This may involve eliminating the two
digital agents, obtaining changes by AlgoCorp, or using either or both digital agents in
different ways.

Table 2. Work System Snapshot of the Current Hiring System

| Customers                | Product/services                                                                 |
|--------------------------|----------------------------------------------------------------------------------|
| • Applicants             | • Applications (which may be used for subsequent analysis)                         |
| • Hiring manager         | • Job offers                                                                       |
| • Larger organization    | • Rejection letters                                                                |
| • HR manager (who will use the applications to analyze the nature of applicants) | • Hiring of the applicant                                                        |

| Major activities and processes                                                                                                       |
|------------------------------------------------------------------------------------------------------------------------------------|
| • AlgoComm publicizes the position.                                                                                                |
| • Applicants submit resumes to AlgoComm.                                                                                           |
| • AlgoRank selects shortlisted applicants and sends the list to the hiring manager.                                                |
| • Hiring manager decides who to interview.                                                                                         |
| • AlgoComm sets up interviews.                                                                                                     |
| • Interviewers perform interviews and provide comments about applicants.                                                           |
| • AlgoRank evaluates candidates.                                                                                                   |
| • Hiring manager makes hiring decision.                                                                                            |
| • AlgoComm notifies applicants.                                                                                                    |
| • Applicant accepts or rejects job offer.                                                                                          |

| Participants                       | Information                            | Technology       |
|------------------------------------|----------------------------------------|------------------|
| • Hiring manager                   | • Job requisition                      | • AlgoComm       |
| • Applicants                       | • Job description                      | • AlgoRank       |
| • Other employees who perform interviews | • Advertisements                   | • Office software|
|                                    | • Job applications                     | • Internet       |
|                                    | • Cover letters                        |                  |
|                                    | • Applicant resumes                    |                  |
|                                    | • Applicant short list                 |                  |
|                                    | • Information and impressions from the interviews |           |
|                                    | • Job offers                           |                  |
|                                    | • Rejection letters                    |                  |

A quick glance at Table 2 shows that the hiring work system involves much more than the
digital agents AlgoComm and AlgoRank. The transition from the previous hiring system to
the current hiring system started with a WSLC initiation phase (Fig. 1) in which management
decided to improve the existing hiring system by using a vendor’s software. The WSLC
development phase acquired resources needed for implementation in the organization.
AlgoCorp was selected as vendor. Developers initialized AlgoCorp’s software, set values of
parameters to fit PQR Corp’s needs, and adapted AlgoCorp’s training material for PQR
Corp’s users. Training during the implementation phase occurred quickly. During the
operation and maintenance phase AlgoCorp used machine learning to update AlgoRank to
reflect job market changes. Several incidents during that period involved managers working
around the standard process (called adaptations by the WSLC) when talented individuals
might have gone to a competitor. Management decided that a better hiring work system was
needed.
This hypothetical hiring case was designed to illustrate how a work system perspective can
help in visualizing and understanding applications of digital agents in real world practice. The
main point is that digital agents that affect people typically operate in real world contexts that
are fundamentally about work systems achieving real world goals and are not about just about
creating or using computerized artifacts.

## 4 Facets of work
Facets of work is an extension of WST that supports a deeper understanding of roles and
responsibilities of digital agents in work systems. That idea grew out of research trying to
bring richer and more evocative concepts to systems analysis and design and to facilitate
interactions between analysts and stakeholders, as explained in [21: 342-344]. The notion of
facet is an analogy to how a cut diamond consists of a single thing with many facets. The idea
of facet has been used with quite different meanings and connotations in disciplines such as
psychology, library science, information science, and computer science (e.g., [22, 23, 24, 25,
26, 27])

Most activities in work systems consist of one or more common types of activities such as
making decisions, communicating, and processing information. For current purposes, those
types of activities can be considered facets of work if they are easily understood and widely
applicable and if they satisfy a series of criteria: They apply to both sociotechnical work
systems and totally automated work systems; they are associated with many concepts that are
useful for analyzing system-related situations; they are associated with evaluation criteria and
typical design trade-offs; they have sub-facets that can be discussed; they bring open-ended
questions that are useful for starting conversations. Table 3 illustrates how the facet decision
making satisfies those criteria. [21] identifies and provides the same type of information for
18 such facets of work, while recognizing that other researchers might have identified a
different number of facets of work that satisfy those criteria. Facets of work often are not
mutually independent. To the contrary, the facet making decisions often involves other facets
such as communicating, learning, and processing information. The main point is that each
facet can be viewed as part of a lens for thinking about where and how work systems might
use digital agents.

Table 3. Why making decisions qualifies as one of 18 facets of work

| Criterion                                 | Illustration of how making decisions satisfies a criterion                                                                                                                                           |
|-------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Applies to socio-technical and totally automated systems | In a sociotechnical work system, marketing managers allocate a corporate advertising budget. In a totally automated work system, an optimization model allocates a corporate advertising budget. |
| Association with many concepts that can be used for analysis | Decision, criteria, alternative, value, risk, payoff, utility, utility function, tradeoff, projection, optimum, satisficing vs. optimizing, heuristic, probability, distribution of results, risk aversion |
| Association with evaluation criteria        | Actual decision outcomes, realism of projected outcomes, ease of implementation, riskiness, decision participation, concurrence                                                                         |
| Association with design tradeoffs           | Quick response vs. superficiality, model complexity and precision vs. understandability, brevity vs. omission of important details                                                              |
| Existence of sub-facets for detailed description | Defining the problem; identifying decision criteria; gathering relevant information; analyzing the information; defining alternatives; selecting among alternatives; explaining the decision      |
| Related open-ended questions                | How do the available methods and information help in important decisions? What decisions are made with incomplete, inaccurate, or outdated methods or information? How might better methods or information help in making decisions? Where would that information come from? |

## 5 The Agent Responsibility Framework
The hiring example summarized in Table 2 illustrates that digital agents can contribute to
activities in work systems. That straightforward observation says little about how to
understand roles of digital agents in greater depth. A designer or manager trying to decide
whether or how to produce and apply a digital agent could benefit from a framework for
identifying and visualizing potential design choices. As noted earlier, the agent responsibility
(AR) framework in Fig. 2 was inspired by Shneiderman’s 2x2 human-centered AI (HCAI)
framework [11,12,13], whose dimensions are low to high computer automation and low to
high human control. That framework is useful for discussing human-centered AI but can be
expanded to support analysis and design of digital agents with responsibilities delegated by a
work system.
The AR framework aims to serve that purpose by characterizing roles and related
responsibilities delegated to digital agents by work systems. Clarity about those roles and
responsibilities and the capabilities that make them practical requires attention to whether and
how a digital agent aims to support specific facets of work in the work system, such as
making decisions, communicating, or processing information. A work system’s use of a
digital agent occurs when that digital agent plays one or more roles (the framework’s
horizontal dimension) related to one or more of the work system’s facets of work (the
vertical dimension). The effectiveness of that use depends on the digital agent’s capabilities. The brief
description of the hiring example implied that roles played by digital agents included
providing information and executing activities related to facets of work such as making
decisions, communicating, and processing information but that enhanced capabilities might
have led to better results.

![Fig. 2. Agent responsibility framework with six roles and six facets of work](#)

Fig. 2 is a version of the AR framework with six roles that might be performed in relation
to any of six facets of work. Combining those two dimensions leads to pinpointing
responsibilities delegated to digital agents by work systems. Other versions of the AR
framework might include other roles and other facets of work.
The AR framework presents the six roles along a spectrum from the lowest to the highest
direct involvement in the execution of activities within a work system. The six roles in Fig. 2
were identified based on many iterations of trying to expand the horizontal dimension in
Shneiderman’s HCAI framework to make it more specific. For example, an early iteration
involved only three roles, i.e., support, control, and perform. Here are ways in which those six
roles might be performed more effectively in an improved version of the hiring work system.
- *Monitor a work system.* Digital agents might monitor hiring activities to identify
important delays and might generate messages to management when aspects of a planned
hiring process seem likely to use interviewer resources excessively.
- *Provide information.* Digital agents might scan applications to identify areas of important
fit or misfit. Digital agents also might provide comparisons of current applicants with past
applicants or even a relevant sample of non-applicants.
- *Provide capabilities.* Digital agents might provide analytical, visualization, and
computational capabilities that help interviewers and managers compare applicants and
articulate their impressions about how well applicants fit current needs.
- *Control activities.* Digital agents might inspect all informational artifacts generated by
hiring activities to make sure that any evidence of bias, unnecessary delays, or
mistreatment of applicants is identified and corrected quickly.
- *Coproduce activities.* Digital agents might coproduce with applicants by initiating and
conducting screening interviews at times that maximize convenience for interviewees.
They might work collaboratively with interviewers by filtering excerpts from voice and
video responses that interviewers rate as important.
- *Execute activities.* Digital agents might search professional networks, listings from
independent contracting firms, and applications from past applicants to identify potential
candidates and send inquiries to those individuals.
The six facets in the vertical dimension are selected from 18 facets of work identified in
[21], which showed that all or most of those 18 facets of work are worth considering in many
situations. The 12 other facets in [21] include learning, planning, improvising, interacting
socially, providing service, and seven others.
Before saying more about the two dimensions in Fig. 2 it is worth noting that the AR
framework encompasses ideas that can be used in many ways that do not rely on an
exhaustive search of all possible combinations of roles and facets. Simply thinking about the
different facets of work could encourage designers or managers to wonder about needs to
enhance specific facets of work in the design of specific work systems. Similarly, the
spectrum of roles in the horizontal dimension encourages designers or managers to consider
different possible roles of digital agents, related responsibilities that might be assigned to
them, and capabilities that would be required. There is no reason to consider all or even many
of the 36 possible combinations of 6 facets of work and 6 types of roles/responsibilities (or of
the 108 combinations based on 6 roles and 18 facets). Instead, practicality implies that
designers and managers should look carefully only at the combinations that are important for
a specific work system.

## 6 Application of the AR Framework to Examples
The hiring example in Table 2 was introduced to help in visualizing the relationship
between digital agents and work systems. This section applies the AR framework to three
other examples to illustrate its potential use in many situations from both provider and user
viewpoints. 1) An ecommerce platform is a digital agent for a temporary work system in
which an individual or organization uses an ecommerce platform to identify items to buy and
complete the purchases. 2) A real time auction of ad placements in online media is a digital
agent for a firm’s advertising work system that purchases ad placements in online media. 3)
The information system in a self-driving car is a digital agent for an individual’s temporary
work system of driving from one location to another.
The following descriptions of these examples include tables containing a row for each facet
in Fig. 2. Each row shows in parenthesis one of the six roles in the AR framework’s
horizontal dimension and then summarizes how a digital agent playing that role might be
applied to that row’s facet of work. Table 4 applies the roles in the AR framework in the same
sequence in which they appear in Fig. 2. Tables 5 and 6 (for two subsequent examples) use
the same sequence but start with the second and third roles, respectively, as a partial
illustration that most of the roles can be applied to most of the facets. Associating roles with
facets in those different ways is significant only for illustrating that most roles apply to most
facets. A more detailed exercise of assigning each role to all 18 facets from [21] would lead to
tables containing 108 entries (6 roles x 18 facets) that would not fit within this paper’s length
limits.

### 6.1 Example: An Ecommerce Platform as a Digital Agent
This example is an ecommerce platform such as amazon.com or walmart.com that serves
as a digital agent for an individual’s temporary work system of selecting items to purchase
and then purchasing those items. Table 4 shows how the six roles might be applied to the six
facets of work in Fig. 2. Table 4 takes the viewpoint of an ecommerce merchant designing or
updating a platform to maximize its utility.

Table 4. Applying different digital agent roles in an ecommerce example

| Facet            | Illustration of how an ecommerce merchant might think about specific digital agent roles |
|------------------|------------------------------------------------------------------------------------------|
| Making decisions | *(monitor)* The digital agent might monitor interim decisions revealed in customer work system’s click stream, thus providing clues related to customer goals and priorities and possibly leading to suggestions of plausible options that customers had not yet considered. |
| Communicating    | *(provide information)* The digital agent might provide information in the form of URLs that would help customer work systems communicate with other information sources that might validate purchasing decisions. |
| Processing information | *(provide capabilities)* To demonstrate the ecommerce site’s low prices, the digital agent might provide capabilities that customer work systems could use for processing information to find competitor’s prices. |
| Coordinating     | *(control activities)* Coordination is not significant when an individual uses an ecommerce site. A digital agent might control aspects of coordination between multiple platform users in the same organization to avoid duplicative purchases within the same organization. |
| Creating value   | *(coproduce activities)* The digital agent might help in creating value for the platform and the customer by coproducing the identification of nonobvious buying opportunities that would increase mutual benefits. |
| Maintaining security | *(execute activities)* The digital agent might help in maintaining security for ecommerce customers by executing activities that protect the security of email addresses, user names, and other personal information. |

### 6.2 Example: A Real Time Advertising Auction as a Digital Agent
A totally automated ecosystem controls the insertion of ads into web-based content such as
online news articles. “It is a huge, real-time bidding process, whereby ads are
automatically assigned to media spaces across types of media and geographic
regions upon an individual user’s browser request. … the entire ecosystem’s exchange with its
hundreds of platforms operates ’on-demand‘ every time a user’s browser opens a
publisher website and triggers a real-time request for an ad. The whole exchange is
usually completed under 100 ms and remains entirely invisible to the user who may
experience a small lag in loading the publisher page.” [28]. The digital agent is a real time
auction serving an advertiser’s work system of buying ad placements in online media. (see
Table 5)

Table 5. Applying different digital agent roles during in a real time auction for advertising slots

| Facet               | Illustration of how a specific digital agent role might be applied to a specific facet of work in an advertising work system |
|---------------------|-----------------------------------------------------------------------------------------------------------------------------------|
| Making decisions    | *(provide information)* The digital agent might provide information about past auctions that would support the buying work system’s decision making concerning economically feasible media targets. |
| Communicating       | *(provide capabilities)* The digital agent might provide capabilities that increase convenience for the advertisers who need to communicate changing priorities and purchase limits as an auction proceeds. |
| Processing information | *(control activities)* The digital agent might control aspects of the work system’s processing of information about current priorities to assure that media choices are not excessively duplicative in advertising targets. |
| Coordinating        | *(coproduce activities)* The digital agent might help in coproducing advertising decisions of different groups in the firm by helping them coordinate priorities in data submitted to the online auction. |
| Creating value      | *(execute activities)* The digital agent might help in creating value for the customer work systems by providing more complete information about situations where other advertisers won auctions for prized placements. |
| Maintaining security | *(monitor)* The digital agent might monitor bidding on auctions to help customers maintain security by identifying suspicious patterns of auction bidding results. |

### 6.3 Example: A Self-Driving Car’s Information System as a Digital Agent
Self-driving cars are controlled by internal information systems that combine radar,
electronic maps, predictive techniques, advanced displays, monitoring of road and traffic
conditions, monitoring of the car’s internal operation, and automatic braking or swerving.
Those information systems help drivers drive safely and sometimes allow drivers to use
automatic driving capabilities. The work system is the individual’s temporary work system of
driving from one location to another. The digital agent is the car’s information system that
monitors current conditions, communicates with the driver, and takes control under some
circumstances. (see Table 6)

Table 6. Different digital agent roles for the information system that operates a self-driving car

| Facet               | Illustration of how a specific digital agent role of a self-driving car’s information system might be applied to a specific facet of work in a personal driving work system |
|---------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Making decisions    | *(provide capabilities)* The digital agent might provide capabilities for making decisions related to avoiding bottlenecks or slow traffic.                      |
| Communicating       | *(control activities)* The digital agent might control aspects of the driver’s communication with other drivers by activating blinkers, sounding alarms that help the driver and other drivers avoid accidents. |
| Processing information | *(coproduce activities)* The digital agent might help coproduce partially manual driving by processing information from the steering mechanism and brakes to make sure that the driver does not accidentally perform dangerous maneuvers. |
| Coordinating        | *(execute activities)* The digital agent might automatically execute evasive maneuvers to help in coordinating with other self-driving cars that seem to be on a collision course with the car being driven. |
| Creating value      | *(monitor)* The digital agent might monitor the extent to which the car’s displays, heating and air conditioning systems, seating adjustments, and other systems are creating value for the driver and passengers. |
| Maintaining security | *(provide information)* The digital agent might provide information that helps in maintaining security by warning the driver that an outside entity is trying to detect electronic signals generated or used within the car. |

## 7 Discussion and Conclusions
This paper presented the agent responsibility framework and used examples to explain how
it might help managers and designers imagine and evaluate a wide range of possibilities for
delegating aspects of the operation of specific work systems to digital agents. It defined
digital agent as a type of information system that operates autonomously once launched
although it may interact with users, with other digital agents, or with aspects of the
surrounding environment. The idea of digital agent may be applied by providers of digital
agents (people or organizations that build and deploy digital agents) and by users of digital
agents (people or work systems that assign responsibilities to digital agents that their
organizations may own or to commercial platforms or other types of digital agents owned by
others.
The core of this paper’s contribution is the notion that work systems delegate
responsibilities to digital agents and that those responsibilities involve performing one or
more roles along a spectrum of roles that may apply to one or more facets of work in the work
system. That notion leads to many different ways to visualize whether and how a digital agent
might be applied beneficially and whether and how its capabilities might be improved to
achieve greater benefits. This overall approach is designed to help in articulating a range of
concerns that is much broader than the range of concerns uncovered by widely used
techniques such as use cases and user stories, which focus more on activities performed by
IT users and less on the broader needs of work systems as goal-oriented systems. Similarly, tools
such as BPMN and ERD are valuable for documenting details but tend not to reveal many
issues related to facets of work such as making decisions, communicating, creating value, and
so on.
The version of the AR framework presented here used a matrix of 6 roles x 6 facets of
work. As explained earlier, many other facets of work could be considered if those facets of
work were important for the work system being analyzed or designed. Those additional facets
might be among the 18 identified by [21] or might be other facets of work identified by other
researchers (assuming that those facets satisfied the usefulness criteria for facets of work that
were illustrated in Table 3).

Limitations. This paper used examples to argue for the practicality of its approach for
addressing important problems in real world practice. It did not provide empirical validation.
Also, it did not provide a full literature review of requirements engineering or systems
analysis and design. That type of literature review would have absorbed too much of the
limited space available for explaining this paper’s ideas.

Potential use in practice. Aspects of the AR framework can be used throughout projects
that create and implement both work systems and digital agents used by work systems.
Managers and executives can use the AR framework in the initiation phase of the WSLC (Fig.
1) to visualize many aspects of the application situation, e.g., by visualizing the relevant work
system and exploring how new or improved digital agents might lead to more successful
execution of different facets of work in that work system. In the development phase,
developers can consider the extent to which the resources being developed are likely to
contribute to better results for important facets of work. In the implementation phase, facets
of work can be used to explain or discuss the responsibilities, capabilities, and intended use of
digital agents that are being introduced or improved. The operation and maintenance phase
can use the roles of digital agents in relation to facets of work to identify possible
improvements that might generate better results in the future.
The detailed use of the AR framework and other ideas in this paper can unfold in many
different ways that look at how digital agents may have responsibilities related to different
roles and may touch multiple facets of work. A simple approach is just to focus on roles in
general, i.e., consider the spectrum of roles in the horizontal dimension of the AR framework
and think about whether those roles are played well in the work system, regardless of which
facets of work are involved. Another simple approach is to focus on facets in a general sense
by identifying facets of work that seem important for the work system and evaluate how well
those facets of work are performed. In more detail, it is possible to look at responsibilities of a
specific digital agent across the spectrum of roles or its responsibilities in relation to various
facets of work that seem important. A more focused approach looks at a specific role and a
specific facet of work and explores how well one or more digital agents satisfy their
responsibilities in relation to that combination of role and facet of work.
All of the above can be done with the 6x6 version of the AR framework or with an
expanded version that might involve more facets or more responsibilities that are not included
in Fig. 2. As noted in Section 4, [21] explained how 18 different facets of work meet the
criteria for being considered a facet of work, even though it is impractical to look in depth at
every imaginable facet in a real world analysis.

Potential use in research. The AR framework and related ideas lead to a variety of
possibilities for research projects related to digital agents. Conceptual research could compare
this paper’s view of a work system’s delegation of responsibilities to digital agents with the
discussion of concepts related to delegation and rights and responsibilities of agentic IS
artifacts in [20]. Interesting research topics for empirical study of projects related to
the design and implementation of digital agents correspond directly to potential uses in practice:
How do managers and executives conceive of digital agent capabilities during the initiation
phase? How do developers think about the potential use of digital agent capabilities that they
produce? What is the range and rationale of perceptions and beliefs by work system
participants concerning roles, responsibilities, and capabilities of digital agent? In what ways
do work system adaptations during ongoing operation reflect attention to different facets of
work and the adequacy of both capabilities and responsibilities of digital agents?