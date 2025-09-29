# Applications of AI in Sociotechnical Work Systems: Fundamental Change or just a Type of Partial Automation?

## Abstract
This paper summarizes my keynote for the 10th International Conference on Sociotechnical Perspectives in IS (STPIS ’24), which I delivered via Zoom on16 August 2024. The keynote used a work system perspective to consider whether applications of AI in sociotechnical systems represent a fundamental change from previous applications of IT or whether they are viewed best as just a type of partial automation in that context. This paper uses the keynote’s colloquial tone but it expresses serious concern for describing and evaluating AI applications based on ideas that can be used in real world situations. This paper applies a work system perspective (WSP) that evolved over several decades but it emphasizes recent extensions of WSP. The small number of papers cited here provide links to many related papers by many authors.

## Keywords
Sociotechnical system, artificial intelligence, work system, automation

## 1. I may not know what you are talking about when you generalize
about capabilities or dangers of AI
This paper tries to make sense of AI applications in sociotechnical systems (STSs) at a time when many observations and generalizations about AI seem like a mash-up of science, science fiction, and salesmanship. Figure 1 (from a HICSS 2024 presentation called “Validating Generalizations about AI and Its Uses” [1]) illustrates an aspect of that problem. It is often unclear whether claims about AI are based on large language models (e.g., ChatGPT), speech recognition, robotics, face recognition, image generation, expert systems, or artificial general intelligence (AGI). [1] describes six recent AI applications and notes that none of them is described adequately by any of seven definitions of AI published during 2019-2022. On the other hand, AI is real enough that ChatGPT creates significant quandaries for many instructors about how to control student use of ChatGPT in producing assignments. Closer to real world applications, a Sept. 2023 working paper [2] by a team of leading authors reported a controlled experiment involving 758 individual-contributor consultants for a leading consulting firm. The results showed dramatic performance improvements on tasks completion, speed, and quality for the consultants who used AI.

Figure 1: Which AI tool are you talking about when you generalize about AI?
Making sense of AI applications in STSs requires clear concepts for describing systems and for describing the extent of machine intelligence in specific situations. It also requires examples to illustrate how to think about AI in the context of a specific sociotechnical work system. This paper tries to fill in some of the blanks.

## 2. Basic concepts for describing sociotechnical work systems
These ideas about work systems have been published many times but are repeated here to provide an organized approach for talking about AI usage by sociotechnical systems.

**Work:** The use of resources to produce product/services for others or for oneself.

**Work system:** A system in which human participants and/or machines use resources to produce product/services for internal and/or external customers or for themselves. The work in work systems may be structured to varying degrees, e.g., unstructured (designing a unique advertisement), semi-structured (performing typical medical diagnosis), workflows (processing invoice payments), or highly structured (manufacturing semiconductors or pharmaceuticals). The most important distinction in describing special cases of work system is the difference between a sociotechnical work system in which human participants perform some of the activities vs. totally automated work system where all activities are performed by machines and where the slot for participants is blank. Information systems, projects, service systems, self-service systems, and some supply chains (interorganizational work systems) are important special cases. For example, software development projects are work systems designed to produce specific product/services and then go out of existence.

**Work system method (WSM).** Many of the ideas in WSM were developed with the help of MBA and Executive MBA students who used successive versions of a work system-oriented analysis outline to produce over 700 management briefings related to work systems in their organizations between 2003 and 2017 (e.g., [3]). The same fundamental approach was organized around the same six steps even when different versions of WSM were used.
1. Identify the smallest work system that has the problem or opportunity at hand.
2. Summarize the “as-is” work system using a work system snapshot, a stylized one-page summary that that identifies six work system elements
3. Evaluate the work system’s operation using perceived strengths and weaknesses, metrics, key incidents, social relations, and other factors.
4. Drill down further as necessary using any relevant ideas, including both WSM tools and other tools and approaches that are not specifically related to work systems, e.g., BPMN, design thinking, and Six Sigma methods.
5. Propose changes by producing a work system snapshot of a proposed “to be” work system that should perform well.
6. Describe likely performance improvements and explain why the effort of creating the new work system or making the proposed changes seems justified.

That set of generic steps provides guidance for analyzing almost any work system. Detailed analysis of a work system requires ideas that support deeper understandings of how a work system operates and how work systems change over time.

**Work system theory (WST).** This set of ideas forms the basis of WSM. Figure 2 shows WST’s three components: the definition of work system, the work system framework, and the work system life cycle model [4].

Definition of work system. A system in which human participants and/or machines perform work (processes and activities) using information, technology, and other resources to produce specific product/services for internal and/or external customers and/or for themselves.

Work System Framework | Work System Life Cycle Model (WSLC)
---|---
Figure 2: Three components of work system theory |

The work system framework identifies elements of a basic understanding of a work system’s form, function, and environment during a period when it retains its identity even though incremental changes may occur, such as minor personnel substitutions or technology upgrades. The work system life cycle model summarizes the evolution of a work system, which combines planned change through projects and unplanned change through adaptations and workarounds. Life cycle phases may be performed in different ways. Typical activities and responsibilities (e.g., designing, debugging, training, etc.) associated with specific phases apply for different development approaches such as waterfall, agile, prototyping, and use of off-the-shelf applications even when phases overlap or iterate.

**Work system perspective (WSP).** This involves more than just thinking about a situation as though it involves a work system. WST is the core of WSP, which also includes an evolving series of extensions that start with work system characteristics, evaluation criteria, and phenomena that apply to work systems as a whole or to work system elements. Separate papers have discussed extensions such as a service value chain framework, a theory of workarounds, a system interaction theory, the idea of facets of work, an agent responsibility framework, an IS usage theory, service system axioms, a proposed systems analysis toolkit, and so on. Several of those extensions are discussed later in relation to STSs and AI.

## 3. Basic concepts for describing automation and AI applications
**Automation.** This is execution of tasks by machines. Th term automation is used in different senses, e.g., automation of manufacturing includes both human use of devices to perform specific tasks in sociotechnical manufacturing systems and manufacturing that is performed completely by machines. Thus, work performed by people with the help of computers is partically automated. Tasks performed by computers may have been performed partially or entirely by people in the past (e.g., summarizing a document), but also may be impractical or impossible for people to perform manually (e.g., second-to-second control of a rocket).

**Algorithm.** An algorithm is a detailed method for achieving specified goals within stated or unstated constraints by applying specific resources such as data inputs. It is often unclear whether an algorithm is an application of AI. For example, assume that vendors offer seemingly reliable algorithms for deciding which applicants should be accepted by universities, identifying individuals using biometric features, or selecting defective items on a conveyor belt. Assume that potential users can test the algorithms carefully before deciding to use them. How would they know whether the algorithms were the product of AI if the vendor provided no evidence of how the algorithm was produced? And why would that matter anyway if the goal was to perform a task efficiently, reliably, and ethically?

**Agent.** In the context of work systems, an agent is a human or nonhuman entity that performs tasks delegated by another entity (which may be human or nonhuman) and can sense, decide, and act autonomously. Reactive agents take immediate action based on environmental stimuli. Proactive agents take initiative and may plan actions in advance.

**Digital agent.** Digital agents operate by executing algorithms encoded in software. A digital agent can be viewed as a work system because it performs work using information, technologies, and other resources to produce products/services for its direct customers, which may be human or nonhuman entities.

**AI usage by a work system.** This is a work system’s usage of a digital agent created by using AI-related techniques. Not proposing a definition of AI is actually beneficial here because it avoids unnecessary constraints and focuses on what matters more in STS world, i.e., how an STS actually uses and maintains a digital agent to achieve beneficial purposes.

## 4. A hypothetical hiring system as an illustrative example
A hypothetical example illustrates how AI applications fit into STSs. As summarized in Table 1, XYZ Corp uses an AI-based hiring application provided by an external vendor that developed AlgoComm and AlgoRank. AlgoComm provides capabilities for posting job ads, receiving applications, setting up interview appointments, and performing other applicant communication. AlgoRank ranks candidates based on job criteria and a database of job qualifications, salaries, and other data. AlgoRank might be seen as an AI application, whereas AlgoComm seems more like typical information processing even though certain parts of it apply AI technologies such as natural language processing (NLP). The vendor delivers AlgoComm and AlgoRank as software, but XYZ Corp implements AlgoComm and AlgoRank to operate as digital agents that can be viewed as work systems in their own right.

**Table 1**  
_Work System Snapshot of a sociotechnical hiring system [5]_

| Customers | Product/services |
|---|---|
| • Applicants<br>• Hiring manager<br>• Larger organization<br>• HR manager (who use the applications to analyze the nature of applicants) | • Applications (which may be used for subsequent analysis)<br>• Job offers<br>• Rejection letters<br>• Hiring of the applicant |

| Major activities and processes | Participants | Information Technology |
|---|---|---|
| • AlgoComm publicizes the position.<br>• Applicants submit resumes to AlgoComm.<br>• AlgoRank selects shortlisted applicants and sends the list to the hiring manager.<br>• Hiring manager decides who to interview.<br>• AlgoComm sets up interviews.<br>• Interviewers perform interviews and provide comments about applicants.<br>• AlgoRank evaluates candidates.<br>• Hiring manager makes hiring decision.<br>• AlgoComm notifies applicants.<br>• Applicant accepts or rejects job offer. | • Hiring manager<br>• Applicants<br>• Interviewers | • Job requisition<br>• Job description<br>• Advertisements<br>• Job applications<br>• Cover letters<br>• Applicant resumes<br>• Applicant short list<br>• Information and impressions from the interviews<br>• Job offers<br>• Rejection letters<br>• AlgoComm<br>• AlgoRank<br>• Office software<br>• Internet |

The work system snapshot in Table 1 shows that the hiring system involves much more than the two digital agents. Aspects of the hiring system are automated, but the hiring system remains an STS that relies heavily on people. That is not the only possibility, however. If XYZ Corp wants to hire easily replaced workers from a large pool of applicants it might move toward a totally automated system where some version of AlgoComm handles applicant communications and some version of AlgoRank decides who to hire. The work system and digital agents would still be implemented and maintained by people, but the totally automated hiring system would no longer be an STS regardless of whether the digital agents are mundane IT applications or are AI-based.

Figure 3 shows how the work system life cycle model can be used to describe this work system’s ongoing evolution. The main point is that the same concerns apply regardless of whether a new or improved STS uses mundane IT applications or AI-based digital agents.

Figure 3: Charting the ongoing evolution of a work system

## 5. Roles of digital agents, facets of work, and an agent responsibility framework
A deeper understanding of a sociotechnical work system that uses AI-based digital agents calls for additional ideas. This section identifies different roles that digital agents might play, different facets of work that they might support, and an agent responsibility framework that can help in identifying important combinations of roles and facets.

**Roles of digital agents.** Digital agents can perform many different roles for an STS. The following generic roles are organized along a spectrum from the lowest to the highest direct involvement in the execution of activities within a different hiring STS:
- Monitoring the work system might occur with no direct involvement in the work system’s operation and might provide information for management processes or assu re worker safety, but also might support micromanagement.
- Providing information might involve paper documents, PDFs, computer-based reports, computerized datasets, or even voice recordings or videos.
- Providing capabilities enables work system participants through capabilities for tasks such as analyzing information or creating and analyzing models.
- Controlling activities in the work system might involve displaying information, providing immediate feedback, enforcing business rules, producing alarms when conditions go out of bounds, or notifying managers.
- Coproducing activities involves achieving results through complementary responsibilities of people and digital agents. Coproduction might occur though different modes of engagement, as explained later.
- Executing activities occurs when a digital agent that is an automated work system component performs a work system activity or when a work system activity is delegated completely to a digital agent external to the work system.

**Facets of Work.** Most activities in work systems involve one or more common types of activities such as making decisions, communicating, and processing information. Activity components can be viewed as facets of work if they satisfy criteria: they apply to both sociotechnical and totally automated work systems; they are associated with many concepts that are useful for analyzing system-related situations; they are associated with evaluation criteria and typical design trade-offs; they have sub-facets that can be discussed; they bring open-ended questions that are useful for starting conversations. Table 2 shows 18 facets of work that are identified in [6].

**Table 2**  
_18 Facets of work_

| Making decisions | Communicating | Providing information |
|---|---|---|
| Representing reality | Learning | Coordinating |
| Performing physical work | Providing service | Applying knowledge |
| Planning | Improvising | Performing support work |
| Creating value | Thinking | Controlling execution |
| Processing information | Interacting socially | Maintaining security |

**Agent Responsibility Framework.** A digital agent’s responsibilities in relation to an STS that it supports can be described in terms of a two-dimensional agent-responsibility (AR) framework [7] shown in Figure 4. The horizontal dimension is a spectrum of roles that goes from the lowest to the highest direct involvement of a digital agent in the execution of a work system’s activities. The vertical dimension is different facets of work. Figure 4 shows only 6 of the 18 facets to help in visualizing what the AR framework means.

Combining the AR framework’s two dimensions helps in pinpointing design issues, e.g., the extent to which a digital agent should have responsibilities such as monitoring decisions, providing capabilities for making decisions, or making decisions automatically. Those choices apply to just one facet of work – making decisions – but almost any digital agent role might be applied to any facet. Users of the AR framework can apply the two dimensions to identify possible areas of interest. Practicality implies that only combinations that are important for a specific work system should be considered. The same thought process would apply regardless of whether an imagined or proposed digital agent was based on AI.

Figure 4: Agent-responsibility framework showing six roles and six of the 18 facets of work

## 6. Smartness of devices and systems
The topic of AI calls for meaningful ideas about the smartness or intelligence of devices and systems, especially with the proliferation of hyperbole-infused terms such as smart phones, smart contracts, smart cities, smart water bottles, intelligent databases, intelligent buildings, intelligent agents, and so on. A conceptualization of smartness in [8, 9] addresses that challenge by describing the smartness of devices and systems based on two ideas: identification of different capabilities that might be smart to different extents and different degrees of smartness for any capability.

Capabilities that might be built into devices or systems can be divided into four categories. Each of those categories includes between five and seven separate capabilities that may exist independently or may be intertwined with other capabilities. Note that each of the capabilities in each of the following four groups applies to both STSs and digital agents:
- Information processing. Capture, transmit, store, retrieve, delete, manipulate, and display information (7 capabilities)
- Action in the world. Sensing, actuation, coordination, communication, control, and physical action (6 capabilities)
- Internal regulation. Self-detection, self-monitoring, self-diagnosis, self-correction, and self-organization. (5 capabilities)
- Knowledge acquisition. Sensing or discovering, classifying, compiling, inferring or extrapolating from examples, inferring or extrapolating from abstractions, testing, and evaluating. (7 capabilities)

The smartness built into a device or system for any of the above capabilities can be characterized along the horizontal dimension in Figure 4. Most work systems with human participants operate with a nontrivial level of smartness for most of those capabilities (with the possible exception of work systems whose activities are totally routine and repetitive). In contrast, very few AI-based digital agents exhibit a high level of smartness for any of those capabilities. The design challenge of using AI-based or non AI-based digital agents to make work systems smarter involves designing digital agents whose limited smartness nonetheless enhances the smartness of a work system that uses them.

Figure 5: Different degrees of smartness for any capability

## 7. Alternative modes of engagement with digital agents
A final idea is alternative modes of engagement between human STS participants and digital agents. Figure 6 shows that those modes of engagement can be compared in terms the degree of initiative that the STS delegates to people or machines. Both ends of the spectrum of possibilities in Figure 6 involve no engagement, i.e., either all activities are performed by digital agents or are performed by humans. Between those extremes, responsibilities of people or machines can be characterized as machine-in-the-loop, mixed initiative interactions, and human-in-the-loop [9]. The two-headed arrows in Figure 6 indicate possibilities for incremental changes in one direction or another.

<<< Degree of shared initiative >>>  
Low ……………………………High  
Initiative shared between people and digital agents  
Sociotechnical systems that use digital agents are in the shaded area  
Human-in-the-loop  
Machine-in-the-loop  
No direct engagement, all activities performed by digital agents  
No direct engagement, all activities performed by people

Figure 6: Different modes of engagement between human work system participants and digital agents in sociotechnical systems

The modes of engagement that involve interactions deserve a few comments. With human-in-the-loop the digital agent performs the most important activities autonomously, but requests confirmation or instructions from work system participants upon encountering situations requiring human judgment. With mixed initiative interactions, both digital agents and people may take the initiative. For example, a digital agent monitoring a process might issue a warning about suspicious conditions and might request a response about whether corrective action is needed. From the other side, a person might initiate an interaction to identify and explore potentially important status or history information. With machine-in the-loop, people perform the main steps and occasionally interact with digital agents to request status or performance information or suggestions related to alternatives.

## 8. Conclusion
This keynote responded to AI hyperbole by explaining how STS applications of AI can be viewed in depth as the use of digital agents. More detailed coverage of these and related ideas can be found in [9]. The ideas presented here are meant as part of a practical approach for treating AI applications simply as digital agents used by STSs, ideally to enhance STS efficiency, effectiveness, and reliability while applying traditional STS values in treating STS participants and customers equitably and ethically. The incredible nature of AI-related developments in recent years deserves admiration (and a bit of fear) without imagining that AI applications should be viewed as magic.