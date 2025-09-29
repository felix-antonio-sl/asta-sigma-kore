# Can Information System Engineering Make Cyber-Human Systems Smarter?

## Abstract
The term smart is often used carelessly in relation to systems, devices, and other entities such as
cities that capture or otherwise process or use information. This conceptual paper takes the idea
of smartness seriously as a way to reveal directions for extending IS engineering to increase its
ability to make cyber-human systems smarter. Cyber-human systems can be viewed as work
systems. This paper defines work system, cyber-human system, algorithmic agent, and smartness
of systems and devices. It links those ideas to IS engineering challenges that can be addressed by
applying ideas that are discussed rarely if at all in IS engineering, such as dimensions of
smartness for devices and systems, facets of work, roles and responsibilities of algorithmic
agents, different types of engagement and patterns of interaction between people and algorithmic
agents, explicit use of knowledge objects of various types, and criteria that often deemphasized in
IS engineering. In combination, those ideas point to many possibilities for expanding IS
engineering to reflect emerging challenges related to cyber-human systems.

## 1. Steps toward IS Engineering for Cyber-Human Systems
One might wonder how cyber-human systems are fundamentally different from the vast
number of IT-enabled work systems that operate in the world of commerce. That seemingly
innocent question leads to many important issues related to describing, analyzing, designing, and
evaluating cyber-human systems and other IT-enabled work systems. The important question is
not about fundamental differences between cyber-human systems (CHSs) and other systems.
Rather, it is about describing and analyzing specific CHSs while attending to roles of algorithmic
agents and interactions between algorithmic agents and human participants in those systems.
This paper treats cyber-human systems as work systems in which human participants and
algorithmic agents interact while fulfilling responsibilities that involve conscious attention by
human participants. This paper's theoretical core is a work system perspective that applies to all
work systems. That perspective is applied to CHSs and algorithmic agents, both of which raise
issues that might not seem as important or interesting for other work systems. An example of a
CHS is the piloting of a modern airliner using autopilot capabilities and other navigational aids.
People are in charge, but an algorithmic agent sounds an alarm if it detects danger of a potential
mid-air collision; in some instances it may take control, for better or worse (e.g., two aircraft
disasters in 2019 [1]). Driving a car with hazard warning capabilities is a similar example.
Another is robotic surgery, in which surgeons control robotic devices, sometimes from a console
15 feet from the patient (e.g., [2]). Less dramatic examples include health monitoring CHSs that
use wearable devices, factory production CHSs in which people control factory operations with
the help of dashboards, engineering CHSs in which engineers use algorithmic agents to design
and evaluate artifacts, and authoring CHSs that use software to expedite an author’s process of
producing documents such as contracts, sales material, responses to customers, and summaries of
longer documents.
This paper’s main premise is that thinking broadly about CHSs leads to topics and related
issues that are not central to the current practice of information system (IS) engineering. Many
such topics and issues will become more visible and more important as greatly enhanced AI-
related capabilities enable new ways for people to work by using and cooperating with systems
and devices controlled by algorithmic agents. Those topics and issues include different degrees of
smartness that systems and devices can exhibit, different types of roles that algorithmic agents
can play, different facets of work that are impacted by roles of algorithmic agents, different
patterns of engagement between people and machines, new possibilities for dynamically
determined application of definable knowledge objects, and a broad range of evaluation criteria.
This paper shows how those and other ideas can be integrated into IS engineering for CHSs.
This paper builds on a paper by the same name that was presented at CAISE’23 and was
published in the CAISE’23 LNCS proceedings [3]. This paper extends the earlier version by
providing substantially deeper explanations of many points related to the above topics that could
not be explained fully within the CAISE’23 length limits.

**Organization.** Each successive section of this paper introduces ideas that can be applied
to CHSs but are not emphasized in typical terminology or methods of IS engineering. Section 2
summarizes the work system perspective that forms the basis of this paper’s ideas related to
CHSs. Section 3 identifies dimensions of smartness for systems and devices and degrees of
smartness along those dimensions. The rest of the paper presents different focal points that IS
engineering can use for making CHSs smarter.
Section 4 identifies possible directions for making CHSs smarter based on the nine
elements of the work system framework. Section 5 discusses design choices for making CHSs
smarter by creating or improving algorithmic agents that are applied to specific aspects of work
system operation. Ideas that flesh out that approach include a spectrum of roles that an
algorithmic agent may play in a work system, facets of work that may be addressed by
algorithmic agents, and responsibilities of algorithmic agents regarding specific facets of work.
Those ideas are combined in an agent-responsibility framework that can be applied when
analyzing or designing a CHS. Section 6 discusses different modes of engagement and different
patterns of interaction between human participants and algorithmic agents within CHSs. Once
again, those are design choices that could lead to smarter CHSs. Section 7 presents a taxonomy of
"knowledge objects" and shows that different types of knowledge objects might contribute to
making CHSs smarter. Section 8 identifies a series of criteria for evaluating both CHSs and
algorithmic agents, including some that do not appear frequently in IS engineering. Section 9 lists
some of this paper's suggestions for moving beyond typical concerns of IS engineering in efforts
to make cyber-human systems smarter. It discusses three overarching insights that apply
throughout this paper, and it concludes by identifying next steps in developing and using its ideas.
This paper's view of IS engineering. This paper will not try to resolve differing views
of the boundaries of IS engineering, whose lack of clear boundaries is shared by many other
topics and areas of practice ranging from artificial intelligence to digital transformation. It will
focus on topics related to activities that almost always should be viewed as part of IS engineering.
Those include identification of relevant problems, opportunities, goals, constraints, and other
issues; determination of requirements; description of system architecture at an appropriate level
of detail; and description of changes required in moving from the "as is" system to the "to be"
system. It will say little about other topics and activities that are already addressed in depth in
relation to IS engineering and IS development, e.g., programming or acquisition of software,
installation, testing, and additional documentation of hardware and software, implementation in
the organization or on a network, and ongoing maintenance and adaptations.

## 2. The Work System Perspective
As defined in [4] and elsewhere, a work system perspective that applies to all work
systems provides the conceptual basis of this paper’s presentation of ideas through which IS
engineering can make CHSs smarter. That perspective evolved over decades, as has happened
with broadly applicable perspectives that are recognized more widely, e.g., general systems
theory [5, 6], sociotechnical design [7, 8] and service-dominant logic [9. 10, 11]. Its core is work
system theory [12] (WST – Fig. 1), which includes the definition of work system, the work
system framework, and the work system life cycle model. The work system perspective includes
extensions of its WST core that contribute directly to this paper’s approach to making CHSs
smarter and also has spawned other extensions that will not be discussed. The extensions
discussed here include dimensions and degrees of smartness for systems and devices, facets of
work, roles of algorithmic agents, an agent-responsibility framework, modes of engagement
between people and algorithmic agents within CHSs, patterns of interaction within CHSs, a
taxonomy of knowledge objects, and a series of evaluation criteria. Examples of extensions that
will not be discussed include a theory of workarounds, a service value chain model, a system
interaction theory, design principles for sociotechnical work systems, a set of work system
axioms, a set of alternative work system metamodels, and a new way of describing IS usage that
links directly to many IS user satisfaction issues.

### 2.1 Definition of Work System
A system in which human participants and/or machines perform work (processes and activities)
using information, technology, and other resources to produce specific product/services for internal
and/or external customers and/or for themselves.

Development of the work system perspective started with four editions of an information
system textbook whose underlying goal was to provide a set of ideas that would have been useful
to the staff and customers of a successful manufacturing software firm where I worked in the
1980s.The Preface of the second edition started by describing an attempt to develop “a new way
to synthesize and explain ideas about information systems,” thereby “helping students become
able to recognize, described, analyze, and design information systems from a business
professional’s viewpoint.” [13, p. iii]

Ideas in those textbooks evolved into an attempt to create a systems analysis method for
business professionals, which was mentioned in various ways in articles during 1999-2005 and
then was presented in depth in a self-published book [14] as an initial version of the work system
method (WSM). WSM guides the high-level analysis of a work system by identifying the
problem or opportunity at an appropriate level of detail, summarizing the “as is” work system
using a “work system snapshot,” analyzing the situation in whatever depth is appropriate,
summarizing a proposed “to be” work system, and explaining why the related project is or is not
worth pursuing. Practitioners’ ability to use WSM for analyzing work systems was demonstrated
by production of over 700 management briefings, mostly by employed MBA and EMBA students
during 2003-2017. Those briefings used various versions of WSM that were tailored to the
requirements of specific courses (e.g., [15]). The ideas underlying WSM were formalized as work
system theory (WST) [12, 16], which applies equally to work systems in general and to ISs,
projects, and other special cases of work system.

Ideas related to WST and WSM have been presented many times. The following
discussion focuses on key points that minimize misunderstanding of this paper’s approach for
visualizing and increasing the smartness of CHSs.

### 2.2 Work System View of an Enterprise
An enterprise (or major business unit or highly coordinated supply chain crossing
enterprises) can be viewed as a set of work systems whose operation and interactions maintains
the enterprise, obtains and applies resources, and produces product/services for customers and
economic results for the enterprise. By that view, digital transformation of an enterprise can be
viewed as an enterprise-level transformation in which IT -related changes enable strategically
significant changes in mission-critical work systems.
As noted in a discussion of general systems theory [6], the concept of system is a lens for
understanding situations. Different observers trying to understand the same enterprise or business
unit) might identify the entire situation as a work system or might see it as a set of interacting
work systems. For analysis and design purposes it is often useful to describe a larger work system
and then break it into separate work systems for discussion or deeper analysis. For example, after
thinking about a factory as a single large work system that uses resources to produce finished
items, it is often useful to look at specific parts of the factory as separate work systems whose
internal product/services feed other work systems within the factory and/or provide
product/services for customers outside of the factory.

### 2.3 Information Systems and Other Special Cases of Work System
The distinction between sociotechnical work system systems (with human participants
performing activities) and totally automated work system is the beginning of a series of special
cases that inherit properties from more general types of work systems.
An information system (IS) is a work system whose essential activities are devoted to
processing information, i.e., capturing, storing, retrieving, deleting, transmitting, manipulating,
and displaying information. ("Essential activities" is highlighted because specific ISs may include
physical activities related to equipment or paper that does not affect the essence of the IS as an
IS.) This definition differs from 20 previous definitions of IS noted in [18] and was one of 34
definitions of IS noted in [19]. It differs from assuming an IS is a tool that is "used" (e.g., [20,
21]) or that an IS exists to produce representations of real world systems [22]. An example is a
sociotechnical accounting IS in which accountants decide how specific transactions and assets
will be handled for tax purposes and then produce quarterly or yearend financial statements. This
is an IS because its activities are devoted to processing information. It is supported by a totally
automated IS that performs accounting calculations and generates accounting reports. In both
cases, thoughtful analysis, design, or improvement of an IS that serves an essential role for
another work system requires considering how IS changes will affect that work system.
Projects, service systems, self-service systems, and some supply chains are other
important special cases. Projects are work systems that are designed to produce specific
product/services and then go out of existence. Thus, work system ideas apply to projects even
though detailed description of a large project requires project-specific ideas such as work-
breakdown-structures, planned start and end dates of tasks, and assignment of resources to tasks.
A software development project or other project that creates or improves an IS is a work system
on its own right. It is also a project because it produces specific product/services and then goes
out of existence. Self-service systems are work systems whose customers perform work system
activities using resources such as websites that are provided by owners of the work system. Some
supply chains can be viewed as interorganizational work systems that cross enterprises. A very
small enterprise might be viewed as a single work system, although it is typically more useful to
say that enterprises operate and serve their customers through the operation and interactions of
multiple work systems.

### 2.4 Work System Method
Making a CHS smarter calls for analyzing the CHS and deciding how to improve it. Ideas
from the work system method (WSM) provide a broad outline that is similar to typical IS
engineering approaches even if some of the terms may sound a bit different. WSM evolved as its
basic ideas were used by successive cohorts of MBA and EMBA students producing management
briefings based on outlines provided for their coursework. Different courses used different
versions of WSM outlines, but the fundamental approach was always organized around the
following steps.

1. Identify the smallest work system that has the problem or opportunity at hand.
2. Summarize the "as-is" work system using a work system snapshot, a stylized one-page
   summary that that identifies six central work system elements.
3. Evaluate the work system's operation using perceived strengths and weaknesses,
   metrics, key incidents, social relations, and other factors.
4. Drill down further as necessary using any relevant ideas, including both WSM tools,
   e.g., [14, 23, 24] and other tools and approaches that are not specifically related to the
   work system perspective, e.g., design thinking and Six Sigma methods.
5. Propose changes and summarize the proposed changes by producing a work system
   snapshot of a proposed “to be” work system that should perform well.
6. Describe likely performance improvements and explain the extent to which the effort
   of creating the new work system or making the proposed changes seems justified.

That set of generic steps provides guidance for analyzing almost any work system. Looking at a
work system in detail requires ideas that support deeper understandings of what a work system is
and how work systems change over time.

### 2.5 Work System Framework: A Basic Understanding of a Work System
The nine elements of the work system framework (Fig. 1) are the elements of a basic
understanding of a work system's form, function, and environment during a period when it is
stable enough to retain its identity even though incremental changes may occur, such as minor
personnel substitutions or technology upgrades. Ignoring any of the nine elements increases the
likelihood that an understanding of a specific work system will omit important issues. The work
system framework is doubly relevant to ISs because ISs are work systems and because many ISs
exist to support work systems that must be understood in order to understand those ISs fully.
The work system elements processes and activities, participants, information, and
technologies are completely within the work system. Customers and product/services may be
partially inside and partially outside because customers often participate in activities within a work
system and because product/services take shape within a work system. Environment,
infrastructure, and strategies are outside of a work system even though they have direct effects
within a work system and may be affected by major changes in significant work systems. Five bi-
directional arrows within Fig. 1 highlight the desirability of alignment between pairs of elements,
such as information and processes and activities.
The following clarifications are often useful: Customers refers to people or organizations
that receive and use a work system's product/services. This includes internal and external
customers. Work system participants who produce specific product/services for their own use (e.g.,
salespeople maintaining personal databases of client information) can also be viewed as customers.
Use of the term product/services bypasses controversies about special characteristics of products
vs. services, especially since many services have features such as standardization that are often
associated with products and many products have features such as customization that are often
associated with services. Use of the term processes and activities recognizes that activities in
some work systems are not structured as processes with well-defined sequences of activities.
Participants are people who perform at least one of the work system activities that contribute to
producing the work system's product/services. Some participants may use computers and IT
extensively, whereas others may use little or no technology. Information includes codified or
non-codified informational entities that are used, created, captured, transmitted, stored, retrieved,
deleted, manipulated, updated, and/or displayed by the work system's processes and activities.
This includes information processed by computers and other information that is never
computerized. The distinction between data and information is unimportant for describing a work
system since a work system's data/information is created, used, or processed by that work system.
Technologies are physical entities such as engines and computers and abstract entities such as
software, algorithms, and methods that are used or adapted by participants to perform activities or
that perform activities autonomously after being launched. Infrastructure refers to
human, informational, and technical resources that are viewed as shared by multiple work systems instead
of being associated primarily with one work system. An example of human infrastructure is an IT
group that can be viewed as a resource used by multiple work systems. Environment includes
factors and forces in the organizational, cultural, competitive, technical, regulatory, and
demographic context that are relevant because they affect the work system's effectiveness and
efficiency. “Elements of the work system framework” will be referred to as “work system
elements” even though the last three elements are viewed as outside of a work system and often
are controlled elsewhere.

### 2.6 Work System Life Cycle Model (WSLC): How Work Systems Evolve
The work system life cycle (WSLC) in Fig. 1 builds on the work system framework by
describing in general terms how a work system evolves over time through planned and unplanned
change regardless of whether waterfall, agile, prototyping, off-the-shelf applications, shadow IT,
or other development approaches are used. Planned change occurs through formal projects that
perform activities associated with the initiation, development, and implementation phases.
Unplanned change occurs through adaptations and workarounds, often in the operation and
maintenance phase. Thus, the WSLC is much more than a model of a project that starts, produces
an outcome, and then ends. Instead, it assumes that work systems evolve through an iterative
process involving four phases and related workarounds and adaptations.
The WSLC outlines how the initial version of a work system is created and how
transitions occur between two successive versions of the same work system. The phases of the
work system life cycle model are named so that they apply to any work system, regardless of
whether IT is involved. The WSLC's project-oriented phases (initiation, development, and
implementation) lead to an operation and maintenance phase. The inward facing arrows in the
WSLC in Fig. 1 say that unanticipated adaptations and workarounds may occur in any phase,
especially operation and maintenance. Adaptations and workarounds can be viewed as unplanned
change in a work system. The decision diamond in the WSLC says that the work system's
operation may continue even if adaptations occur, that a work system may be terminated, and that
a work system may be redesigned starting with a new initiation phase that starts a new project.
The triangular shading within the operation and maintenance phase indicates that the work system
framework provides a basis for describing and analyzing the operation and maintenance phase.
The WSLC's idealized phases (and related sub-phases) express a waterfall-like approach
to identifying what happens as a work system evolves iteratively. Initiation is the process of
defining the need for significant change in a work system and describing in general terms how the
work system changes will meet the need. Development is the process of defining and creating or
obtaining the tools, documentation, procedures, facilities, and any other physical and
informational resources needed before the desired changes can be implemented successfully in
the organization. Implementation is the process of making a new or modified system operational
in the organization, including planning for the rollout, training work system participants, and
converting from the old way of doing things to the new way. Operation and maintenance is the
ongoing operation of the work system after it has been implemented, plus small adjustments,
corrections of flaws, and enhancements.

### 2.7 Cyber-Human Systems and Algorithmic Agents
This paper treats cyber-human systems as work systems in which human participants and
algorithmic agents interact while fulfilling responsibilities that involve conscious attention by
human participants. For example, using a digital twin to try to solve a difficult problem could
involve a series of nontrivial interactions, quite different from simply selecting a document from
a list or obtaining cash from an ATM. Much of this paper uses the abbreviation CHS to
emphasize its focus on CHSs rather than other sociotechnical work systems that may involve only
simple interactions between people and software-driven devices. Typical examples of CHSs that
were mentioned in the Introduction include piloting an airplane using autopilot capabilities,
driving a car with hazard warning capabilities, robotic surgery, health monitoring using wearable
devices, controlling factory operations by using dashboards, using algorithmic agents to design
and evaluate engineering artifacts, and using algorithmic agents to expedite authoring of
documents.
The following definitions are important for avoiding confusion about what this paper
means by algorithmic agent.

**Algorithm.** A specification for achieving specified goals within stated or unstated
constraints by applying specific resources such as data inputs.

**Agent.** An entity that performs task(s) delegated by another entity. This definition
mirrors the view of agent that is used in agency theory [25, 26]. It differs from the view of
agents merely as actors, which appears in a current Al textbook [27]: "An agent is something that
acts in an environment; it does something. Agents include worms, dogs, thermostats, airplanes,
robots, humans, companies, and countries." In contrast with that view, this paper's definition of
agent assumes that actors (human or nonhuman entities that perform activities) may or may not
be agents. It assumes that interests and goals of any specific agent may or may not conform with
the interests and goals of an entity that delegates a task to that agent. It also assumes that the
agent may or may not have discretion in deciding how to control its actions.

**Algorithmic agent.** A physical or digital agent that operates by executing algorithms. A
human agent who makes decisions by literal application of rules might be considered an
algorithmic agent, but that case is not important when thinking about CHSs in which human
participants interact with automated physical or digital entities that operate based on algorithms.
The operation of an algorithmic agent can be viewed as a work system because algorithmic
agents perform work using information, technologies, and other resources to produce
product/services for their direct customers, which may be people or non-human entities.

## 3. Dimensions of Smartness for Systems and Devices
The term smart has been used in many completely inconsistent ways in relation to smart
cameras, smart cards, smart cities, smart contracts, smart databases, smart grids, smart highways,
smart houses, smart locks, smart manufacturing, smart meters, smart phones, smart power, and
smart toys (all of which appear as topics in Wikipedia). A serious discussion of making CHSs
smarter needs to go beyond assuming that the smartness of systems or devices is mostly about
having some capability to capture and manipulate information. That rather simplistic view of
smartness implies that most computerized devices and work systems should be considered smart.
It also seems to imply that smartness is a binary (yes/no) characteristic, which is not helpful for
thinking about how to make CHSs smarter.

A more useful view treats smartness as a design variable related to different types and
degrees of smartness. For example, it should recognize different categories of smartness just as
Gardner's "multiple intelligences" model [28] recognized different types of human intelligence
such as linguistic intelligence, interpersonal intelligence, and musical intelligence. [29] proposed
a step in that direction by saying that the smartness of purposefully designed entity X is a design
variable related to the extent to which X uses physical, informational, technical, and/or
intellectual resources for processing information, interpreting information, and/or learning from
information that may not be specified by its designers. That definition can be expanded into four
broad categories of smartness that are each related to 5 to 7 capabilities that might be built into
devices or systems:
- Information processing. Capture information, transmit information, store information,
  retrieve information, delete information, manipulate information, display information.
- Action in the world. Sensing, actuation, coordination, communication, control, physical
  action.
- Internal regulation. Self-detection, self-monitoring, self-diagnosis, self-correction, self-
  organization.
- Knowledge acquisition. Sensing or discovering, classifying, compiling, inferring or
  extrapolating from examples, inferring or extrapolating from abstractions, testing and
  evaluating.

A CHS might be made smarter (or less smart) in terms of any of those 23 capabilities. For
example, shortcomings in a specific CHS might call for developing a smarter approach to deleting
information or displaying information. Similarly, it might call for smarter self-monitoring or self-
diagnosis by either the sociotechnical or totally automated parts of the CHS. Note that other
researchers might have identified a different set of capabilities. The main point is that IS
engineering will be more effective in making CHSs smarter if it considers possibilities related to
multiple categories instead of simply ignoring such categories.

Discussions of making CHSs smarter call for an approach to describing the relative smartness of a
CHS with regard to any of the 23 capabilities. Fig. 2 illustrates the following dimension for
distinguishing between different degrees of smartness or any specific capability [29].
- Not smart at all. Does not perform activities that exhibit the capability.
- Scripted execution. Performs activities related to a specific capability according to
  prespecified instructions.
- Formulaic adaptation. Adaptation of capability-related activities based on prespecified
  inputs or conditions.
- Creative adaptation. Adaptation of capability-related activities based on unscripted or
  partially scripted analysis of relevant information or conditions.
- Unscripted or partially scripted invention. Invention of capability-related activities using
  unscripted or partially scripted execution of a workaround or new method.

Fig. 2 expresses the idea that most "smart" entities in current use are not very smart after
all because they perform only scripted execution for a limited number of capabilities. For
example, many current uses of machine learning are built on transforming a dataset into an
algorithm for making choices or predictions, but have no ability to process other kinds of data and
very limited ability to take action in the world, self-regulate, or acquire new knowledge
autonomously. Similarly, many nominally smart devices can capture data and use it in a scripted
way, but cannot perform other kinds of activities at a level that seems "smart," especially when
compared with the smartness of sentient robots in science fiction.

## 4. Typical challenges related to making cyber-human systems and other work systems smarter
Table 1 uses the elements of the work system framework (Fig. 1) to identify some of the
IS engineering challenges related to making CHSs smarter. Most of the challenges in Fig. 1 are
stated in a way that emphasizes their applicability to CHSs even though some form of most of the
challenges also applies to work systems that are not CHSs.

**Table 1. Typical IS engineering challenges related to making cyber human systems smarter**

| Work system element | Challenges related to making cyber-human systems (and other work systems) smarter |
|---------------------|------------------------------------------------------------------------------------|
| Technologies        | Providing technologies whose use increases the smartness of a CHS regardless of the extent to which the technologies themselves are smart.<br>Integrating smarter and less smart technologies within a CHS.<br>Assuring interoperability of technologies with other technologies that may or may not be part of the CHS |
| Information         | Capturing, transmitting, storing, retrieving, deleting, manipulating, or displaying information in smarter ways or in ways that make the CHS smarter.<br>Extending the idea of information in CHSs to include explicit knowledge that smarter CHSs can use. |
| Participants        | Anticipating and adjusting for predictable mistakes, workarounds, or other reasons why people may or may not perform work in exactly the way that designers or managers imagined it would be performed.<br>Anticipating and adjusting for human sensitivity issues in CHSs, e.g., people may dislike performing work in which machines play a major role, especially when a machine monitors human work closely or tells people what to do. |
| Processes and activities | Finding effective ways to integrate CHSs into activities in processes that may range from unstructured to semi-structured to highly structured.<br>Finding effective ways to support different facets of work in CHSs (e.g. making decisions, communicating, and coordinating) that may present many different challenges.<br>Making effective use of possibilities for different modes of involvement and interaction patterns between human participants and algorithmic agents within CHSs. |
| Product/services    | Making product/services smarter so that they provide greater benefit for customers while fitting within work practices and contexts of customers. |
| Customers           | Recognizing that customers often are involved in activities in CHSs and may not be trained about capabilities and quirks of algorithmic agents or other parts of the CHS. |
| Environment         | Recognizing that the surrounding competitive, political, legal, organizational, and technological environments may present highly relevant challenges even though those factors in the environment might seem far removed from the operation of specific CHSs and algorithmic agents. |
| Infrastructure      | Recognizing that human, informational, and technical infrastructures may not be adequate for CHSs that use smarter algorithmic agents. |
| Strategies          | Recognizing that strategies related to advanced technology uses may be little more than slogans. |

## 5. Roles of Algorithmic Agents and Responsibilities Related to Facets of Work

### 5.1 Roles of Algorithmic Agents
An important way to make CHSs smarter is to introduce or improve algorithmic agents
that perform tasks delegated by human work system participants or by automated entities. A close
look at the use of algorithmic agents applies three ideas: 1) Algorithmic agents may play different
types of roles within a work system. 2) Algorithmic agents may play roles in different facets of
work within a work system. 3) Responsibilities related to different facets of work may be
assigned to algorithmic agents.

Roles that algorithmic agents might play in supporting or performing work in a CHS can
be identified along a spectrum from the lowest to the highest degree of direct involvement of the
algorithmic agent in the execution of the CHS's activities. Shneiderman's human-centered Al
(HCAI) framework [30, 31] was a starting point for developing a spectrum of such roles. That
framework has two dimensions: low vs. high computer automation and low vs. high human
control. Deficiency or excess along either dimension may lead to worse results for organizations,
for CHS participants, and/or for customers. For current purposes, however, the low vs. high
distinctions in those dimensions provide too little detail to inspire vivid visualization and
discussion of how or why an algorithmic agent might be applied in a CHS's operation, how it
might affect the CHSs stakeholders, and how it might make the CHS smarter in terms of the
many types of capabilities mentioned in Section 3.

An iterative attempt to expand on Shneiderman's HCAI framework to make it more
useful for detailed description and analysis of WSs focused initially on the low vs. high
automation dimension. The three roles were identified initially: support, control, and perform.
Trial and error consideration of many familiar examples expanded those three roles into six types
of roles that an algorithmic agent might play for a work system (and hence a CHS). Specific
instances of each type might support HCAI values and aspirations or might oppose those values
and aspirations (e.g., micromanagement or surveillance capitalism). The following comments
about the six roles include examples that promote human-centric values and other examples that
seem contrary to those values:
- Monitor a work system. An algorithmic agent might monitor and measure aspects of
  work to assure that a CHS's processes and activities are appropriate for CHS participants. In
  some cases the algorithmic agent might generate alarms when digital traces of work start going
  out of accepted bounds regarding health, safety, and cognitive load. On the other hand, the
  algorithmic agent might monitor work so closely that people would feel micromanaged or
  disrespected
- Provide information. An algorithmic agent might provide information that helps people
  achieve their work goals safely and comfortably without infringing on privacy and other rights of
  people whose information is used. On the other hand, the algorithmic agent might provide real
  time comparisons that lead to toxic levels of competition between workers.
- Provide capabilities. An algorithmic agent might provide analytical, visualization, and
  computational capabilities that help CHS participants achieve their work objectives safely and
  with appropriate effort. On the other hand, new algorithmic agent capabilities might erode or
  eliminate the importance of skills that CHS participants had developed over many years (e.g., de-
  skilling of insurance underwriters by partial automation).
- Control activities. An algorithmic agent might control CHS activities directly to prevent
  specific activities from going out of bounds related to worker safety, time on the job, stress, and
  other variables that can be measured and used to control a CHS. On the other hand, an
  algorithmic agent's frequent feedback about performance gaps (e.g., rate of call completions in
  customer support centers) might increase anxiety about whether goals can be met.
- Coproduce activities. An algorithmic agent might be deployed in a division of
  responsibility in which the algorithmic agent and human CHS participants have complementary
  responsibilities for performing their parts of the work. In some instances the initiative for the
  next step might shift back and forth between the algorithmic agent and the CHS participants
  depending on the status of the work. On the other hand, giving the algorithmic agent a leading role might
  leave some CHS participants feeling that they are working for a machine.
- Execute activities. An algorithmic agent might execute activities that should not or
  cannot be delegated to people. For example, an algorithmic agent might perform activities that are
  difficult, dangerous, or impossible for people to perform as the CHS produces product/services.
  On the other hand, an algorithmic agent might automate activities that people could perform more
  effectively due to their ability to understand and evaluate exceptions and unexpected situations.

### 5.2 Facets of Work
One possible approach for trying to make a CHS smarter is to increase the smartness of
individual facets of work within that CHS. Facets of work are generic aspects of work that can be
observed or analyzed, such as making decisions, communicating, processing information, and
coordinating. The idea of facets of work is an extension of work system theory that is useful for
describing and analyzing the use of an algorithmic agent by a CHS. That idea grew out of
research for bringing richer and more evocative concepts to systems analysis and design to
facilitate interactions between analysts and stakeholders, as is explained in [32]. The notion of
“facet” is an analogy to how a cut diamond consists of a single thing with many facets that can be
observed or analyzed. Psychology, library science, information science, and computer science
have used the idea of facets, but with quite different meanings and connotations (e.g., [33, 34]).
All 18 of the facets of work in Table 2 potentially apply to any CHS, are associated with
specific concepts, bring evaluation criteria and design trade-offs, have sub-facets, and bring open-
ended questions for analysis and design [32]. Some facets overlap in many situations (e.g.,
making decisions and communication). The iterative design process that led to selection of the 18
facets might have led to a different set of facets, perhaps 14 or 27. Determination of whether or
not to include a type of activity as one of the 18 facets of work in [32] was based on the extent to
which that type of activity was associated with a nontrivial set of concepts, evaluation criteria,
design trade-offs, sub-facets, and open-ended questions that could be useful in analysis and
design. In relation to algorithmic agents, facets of work provide a way to be specific about
requirements for many types of capabilities that might be overlooked otherwise.

**Table 2. 18 facets of work**

| Making decisions | Communicating  | Providing information |
|------------------|----------------|-----------------------|
| Representing reality | Learning   | Coordinating         |
| Performing physical work | Providing service | Applying knowledge |
| Planning         | Improvising    | Performing support work |
| Creating value   | Thinking       | Controlling execution |
| Processing information | Interacting socially | Maintaining security |

There is no assumption that the facets of work should be independent. To the contrary,
the facet making decisions often involves other facets such as communicating, learning, and
processing information. The main point is that each facet can be viewed as part of lens for
thinking about where and how CHSs might use algorithmic agents.

### 5.3 Responsibilities Related to Specific Facets of Work
The agent-responsibility (AR) framework in Fig. 3 [35, 36] combines the facets of work
in Table 2 with the algorithmic agent roles introduced above. It assumes that algorithmic agent
usage occurs when an algorithmic agent performs one or more roles (the horizontal dimension)
related to one or more facets of work (the vertical dimension). For the sake of easy visualization,
the abbreviated version of the AR framework in Fig. 3 shows only 6 of the 18 facets in Table
2.
Combining the AR framework's two dimensions leads to pinpointing design issues
concerning the extent to which an algorithmic agent should have responsibilities involving roles
related to facets of work, e.g., monitoring decision making, providing capabilities used in
coordinating, or performing security-related activities automatically. The AR framework can be
used in many ways. For example, [35] and [36] show how different roles might apply to many
different facets of work in CHSs such as a hiring system, use of an electronic medical records
system, an ecommerce system, an automated auction, and the IS that partly controls a self-driving
car.

**Table 3. Applicability of different roles of algorithmic agents to different facets of work in the context of using an electronic medical record system**

| Facet              | Illustration of how a specific algorithmic agent (AA) role *(_role_)*
                       might be applied to a specific facet of work in the medical case study |
|--------------------|--------------------------------------------------------------------------|
| Making decisions   | *(_monitor_)* The AA might monitor clinical decisions to make sure that hospital standards are followed and to make sure that people from different socioeconomic classes are treated equitably. |
| Communicating      | *(_provide information_)* The AA might provide information that would expedite communication between overscheduled medical staff members. |
| Processing         | *(_provide capabilities_)* The AA might provide capabilities for data reduction and visualization to help information physicians process information they need without expending a great deal of effort. |
| Coordinating       | *(_control activities_)* The AA might control aspects of coordination between staff members by making sure that physician entries in problem lists for patients with complex medical conditions adhere to standards that typically help when other physicians follow the same patients. |
| Creating value     | *(_coproduce activities_)* The AA might help in creating value for both physicians and patients by helping them coproduce active monitoring of medical conditions and treatments that require follow-up and attention |
| Maintaining        | *(_execute activities_)* The AA might help in maintaining security and patient privacy by executing activities security that monitor the content of incoming and outgoing electronic messages that involve security- or privacy- related issues. |

## 6. Modes of Engagement and Patterns of Interaction between People and Devices

### 6.1 Alternatives Modes of Engagement within Cyber-Human Systems
The engagement between CHS participants and algorithmic agents can be described
along a spectrum of different forms of one-sided or shared initiative that reflects the division of
responsibility and initiative between human participants and algorithmic agents. That spectrum
will be called modes of engagement. In addition, specific interactions within a CHS may be
instances of a number of different interaction patterns. Accordingly, opportunities to make a
CHS smarter might include changing aspects of the mode of engagement that is used and/or
changing interaction patterns.

Fig. 4 illustrates alternative modes of engagement between human CHS participants and
algorithmic agents in CHSs. Alternatives within CHSs can be characterized as machine-in-the-
loop, mixed initiative interactions, and human-in-the-loop. The two-ways arrows in Fig. 4
indicate possibilities for incremental changes moving in one direction or another. Both ends of
the spectrum of possibilities in Fig. 4 involve no engagement, i.e., either all of the activities are
performed by algorithmic agents or all of the activities are performed by humans. In both of those
conditions, the relevant system would not be described as a CHS. Each of the five possibilities in
Fig. 4 is summarized briefly below.

**Table 4. Different modes of engagement that might be used in a hypothetical radiology example using an algorithmic agent called RDTool**

| Mode of engagement        | Hypothetical example of a mode of engagement (assuming sufficiently powerful technologies) |
|---------------------------|--------------------------------------------------------------------------------------------|
| No direct engagement      | RDTool captures and stores radiology images. The radiologist totally human-centered inspects those images later and makes the diagnosis with no process interaction with RDTool. |
| Machine-in the-loop       | RDTool captures the radiology images and displays them to the radiologist, who may request additional images during the same session. The radiologist makes the diagnosis when satisfied that additional imaging will not produce additional insights. |
| Mixed initiative interactions | RDTool and the radiologist work cooperatively. RDTool displays initial images and provides a tentative diagnosis. The radiologist considers the images and tentative diagnosis and asks for clarification of RDTool's rationale for its suggested diagnosis. RDTool may inquire about an aspect of the radiologist's question to determine the best way to proceed. |
| Human-in the-loop         | RDTool captures the radiology images and produces a tentative diagnosis. The radiologist may ask for more information or may simply confirm the diagnosis. |
| No direct engagement      | RDTool captures images and produces a diagnosis that is totally automated process considered to be definitive except in unusual situations. |

### 6.2 Patterns of Interaction between Work System Participants and Algorithmic Agents
In contrast with modes of engagement, interaction patterns apply to individual
interactions between human CHS participants and algorithmic agents. Interactions between a
human CHS participants and algorithmic agents may include unidirectional, mutual, or reciprocal
actions, effects, relationships, influences, or other interplay between people and the algorithmic
agent. Table 5 uses four categories to organize 16 of the 19 system interaction patterns that [40]
describes in detail. (Three others are not relevant to interactions between work system
participants and algorithmic agents.). Table 5 does not use Searle's widely cited "classification of
illocutory acts" (assertives, directives, commissives, expressives, declarations) [41] because
intuitively straightforward categories with finer granularity seem easier to use for IS engineering.

**Table 5. Sixteen Patterns of Interaction between Work System Participants and Algorithmic Agents**

| One-way patterns (unidirectional) | Coproduction patterns (bilateral) | Access and visibility patterns (unidirectional) | Unintentional impact patterns |
|-----------------------------------|-----------------------------------|-------------------------------------------------|-------------------------------|
| Inform                            | Converse                          | Monitor                                         | Spillover                     |
| Command                           | Negotiate                         | Hide                                            | Indirect interaction          |
| Request                           | Mediate                           | Protect                                         | Accidental interaction        |
| Commit                            | Share resource                    |                                                 |                               |
| Refuse                            | Supply resource                   |                                                 |                               |

The interaction patterns in Table 5 are analogous to software design patterns (solutions to
recurring software problems), an idea that was inspired by design patterns for architecture [42].
Features of software design patterns include: name, intent, problem, solution, entities involved in
the pattern, consequences, and implementation [43]. Similarly, most of the interaction patterns in
Table 5 can be described in detail in terms of roles and responsibilities of the work system and
algorithmic agent, cause or trigger of the interaction, desired outcome, typical process of the
activity, and alternative versions. Occasionally relevant aspects of interactions include constraints,
risks and risk factors, by-products, and verification of interaction.

Short examples illustrate the meaning of the interaction patterns:
- One-way patterns include inform, command, request, commit, and refuse [44]. For example,
  the algorithmic agent may inform a CHS participant about a condition that requires action; the
  algorithmic agent may command a CHs participant to act to avoid a breakdown; the algorithmic
  agent may request that a CHS participant take an appropriate action; the algorithmic agent may
  commit to an action based on an aspect of its internal state; the algorithmic agent may refuse to
  take an action that is infeasible due to its internal state.
- Coproduction patterns are bilateral patterns jointly enacted as groups of unidirectional
  interactions. These include converse, negotiate, mediate, share resource, and supply resource. The
  first three involve bilateral speech situations. The other two are about coordination as described by
  coordination theory [45]. For example, the algorithmic agent and CHS participant may converse or
  negotiate about how to proceed toward achieving a goal; the algorithmic agent may mediate in
  activities involving CHS participants; the algorithmic agent and CHS participant may share a
  physical resource such as a table or fixture; the algorithmic agent may supply a CHS participant
  with a resource such as an online tool.
- Access and visibility patterns are unidirectional interaction patterns concerning one entity
  achieving or blocking access to resources that may include information. These patterns include
  monitor, hide, and protect. For example, a CHS participant may monitor the algorithmic agent to
  make sure that it is fully operable. A CHS participant may hide information that might otherwise
  cause the algorithmic agent to malfunction, e.g., by performing a workaround required by an
  exception condition. A CHS participant may take physical actions that protect the algorithmic
  agent from harm such as turning off the algorithmic agent's power when a malfunction or damage
  seems likely.
- Unintentional impact patterns include spillover, indirect, and accidental interactions. A
  spillover interaction could occur when a CHS participant's inability to complete a task requires
  compensating action by an algorithmic agent. An indirect interaction occurs when a CHS
  participant's mistake creates a situation requiring action by the algorithmic agent. An accidental
  interaction occurs when a CHS participant accidentally causes the algorithmic agent to stop
  operating. Unintentional impacts may be difficult to anticipate, but ignoring the possibility that
  they will occur is certainly not beneficial.

Both modes of engagement and interaction patterns identify numerous choices for CHS
analysts and designers to discuss with CHS participants:
- **Modes of engagement:** Which modes of engagement apply to the planned or existing
  CHS? Is there any reason to believe that a different mode of engagement would lead to
  better results related to any of the smartness capabilities in Section 3? Is it practical to
  switch to a different mode of engagement, such as switching from human-in-the-loop to
  mixed initiative interaction, in order to address variability or complexity more efficiently
  or effectively?
- **Patterns of interaction:** Which patterns of interaction are used within the planned or
  existing CHS? Is it possible to use different patterns of interaction, e.g., going from a one-
  way pattern based on commands by a human participant to a coproduction pattern
  involving more meaningful two way interactions? What are the benefits and risks of
  making that type of change?

  ## 7. Different Types of Knowledge Objects that Might Be Applied Dynamically

Information processing and knowledge acquisition are two of the categories of smartness identified earlier. The taxonomy of knowledge objects (KOs) in Fig. 5 hints at ways to make CHSs and algorithmic agents smarter even though it is an extension of ideas developed for a different purpose. That purpose was participation in a debate about whether IS is a science [46, 47]. Trying to participate meaningfully called for establishing a view about what science means. The definition that seemed to make the most sense was the creation, evaluation, accumulation, dissemination, synthesis, and prioritization of KOs, including the reevaluation, improvement, or replacement of existing KOs by other KOs that are more effective for understanding aspects of the relevant domain.

The taxonomy of knowledge objects (KOs) in Fig. 5 evolved through three iterations built on that definition (e.g., [48, 49]). Although the term KO had been used earlier in IS and computer science (e.g., [50]), its use in this context emerged as a variation on Bereiter's [51, pp. 64-65] view of conceptual artifacts as "discussable ideas, ranging from theories, designs and plans down to concepts, like unemployment and gravity. Artifact conveys that these are human creations and that they are created for some purpose." Conceptual artifacts have origins and histories; can be described; can be compared with other artifacts; have varied uses; can be valued or judged worthless; may be modified or improved upon; may have unforeseen attributes, uses or defects that may be discovered; and may be understood and used differently by people with different levels of skill (p. 65). For current purposes the idea of knowledge object seemed more appropriate because KOs include both conceptual artifacts and potentially useful data, one of the categories highlighted in Fig. 5.

![Fig. 5: Taxonomy of knowledge objects](#)

Fig. 5 indicates that all five categories of concepts (concepts related to things, activities, characteristics, metrics, and phenomena) are KOs that define, explain, or are used in four other categories of KOs, data and three categories of conceptual artifacts: interpretations, generalizations, and methods. Fig. 5 says that the category of data includes facts, datasets, texts, conversations, images, and videos. Understanding and applying those types of data in ISs and elsewhere requires the use of concepts. The same can be said about interpretations, which include stories, opinions, metaphors, analogies, explanations, and situation-specific models, ontologies, and taxonomies. Similarly for generalizations, which include propositions, axioms/laws, principles, frameworks, theories, and domain-specific and domain-independent models, ontologies, and taxonomies. Likewise, concepts are essential for defining and explaining the techniques, tools, and practices that are constituents of methods. Notice that Fig. 5 assumes that data, information, and knowledge can be viewed as KOs, i.e., that knowledge is not restricted to abstractions. Also, Fig. 5 does not mention disciplines or discourses. It assumes that the utility of any KO in today's world is more important than its positioning in one discipline or another.

Table 6 illustrates the beginning of a compilation of KOs related to work systems and special cases such as sociotechnical work system and project. The four columns in Table 6 might serve a metadata-like role pointing to more detailed information about specific KOs such as full definitions, explanations, images, and videos. The columns in Table 6 include: (1) name of a KO; (2) the type of KO (from Fig. 5); (3) the most general type of work system to which the KO applies, e.g., efficiency applies to work systems in general, whereas scrum applies to projects or to software projects, depending on how scrum is defined; (4) the application level for a KO, i.e., whether a specific KO applies to a work system as a whole, to a specific work system element, or to a specific facet of a type of a work system or of an element of a type of work system.

### Table 6. Illustrative entries in a spreadsheet for compiling KOs

| Knowledge Object          | Type of KO           | lost general WS type | Applies to                     |
|---------------------------|----------------------|----------------------|--------------------------------|
| Scalability               | Characteristic      | WS in general        | WS as a whole                  |
| Precision                 | Characteristic      | WS in general        | Information                    |
| Accuracy                  | Performance variable | WS in general        | Information                    |
| Error rate                | Performance variable | WS in general        | Processes and activities       |
| Techno-stress             | Phenomenon           | Sociotechnical WS    | Participants                   |
| Start date                | Characteristic      | Project              | Processes and activities       |
| Escalation of commitment  | Phenomenon           | Project              | Project as a whole             |
| "Do the work efficiently"| Design principle    | WS in general        | Processes and activities       |
| UTAUT Theory              | Theory               | WS in general        | Technology                     |
| Cognitive load theory     | Theory               | Sociotechnical WS    | Participants                   |
| Absorptive capacity       | Phenomenon           | WS in general        | WS as a whole                  |
| Agile manifesto           | Design principles    | Software project     | Software project               |
| Understandability         | Performance variable | WS in general        | Communicating (a facet)        |
| Coordination theory       | Theory               | WS in general        | Coordinating (a facet)         |
| Responsiveness            | Performance variable | WS in general        | Providing service (a facet)    |
| Capturing information     | Action               | WS in general        | Processing information (a facet)|

As noted in [49], stakeholders and IT professionals analyzing and designing sociotechnical or totally automated work systems of any type might be able to access a greatly expanded version of Table 6 to ask questions such as the following at any point in the analysis:

- What characteristics of information might be relevant for this situation?
- What phenomena might affect this work system's efficiency?
- What are the sub-facets of processing information?
- Which roles could an IS play in this situation?
- What models could be used to think about ways to improve customers' perceptions of this work system's service-orientation?

In relation to making CHSs smarter, human CHS participants and algorithmic agents have quite different capabilities in regard to the types of KOs in Fig. 5, as illustrated in Table 6. People can make explicit use of abstract KOs that Fig. 5 categorizes as types of generalizations or methods. For example, when confronted with issues or obstacles they can think about which concepts, principles, or theories might be helpful. Thus, a way to make some CHSs smarter is to provide human participants with convenient, immediate access to codified knowledge including concepts, generalizations, or methods and techniques that they might be able to use effectively. Convenient access to structured or unstructured knowledge might be achieved using knowledge graphs, large language models fine-tuned using situation-specific knowledge, or other methods.

In contrast, most current algorithmic agents and computerized components of other parts of CHSs can only process data (the non-abstract category in Fig. 5). Without engaging in debates about the strengths and limits of current machine learning algorithms and generative Al capabilities (e.g., producing texts and images starting from user prompts), it seems fair to say that in the future it might be possible to make algorithmic agents smarter by developing capabilities for processing and applying abstractions. Even if that proves possible, it might be easier and more straightforward to provide greater knowledge support for human activities within CHSs, especially since the real goal in most situations is to make the entire CHS smarter rather than just making its algorithmic components smarter.

## 8. Evaluating Cyber-Human Systems and Algorithmic Agents

Both CHSs and algorithmic agents should be evaluated based on multiple criteria that address different types of issues. Big picture criteria such as efficiency, effectiveness, reliability, resilience, equity, engagement, empathy, explainability, and externalities (updated from [52]) apply to most nontrivial CHSs and to many algorithmic agents that they use. The first four evaluation criteria are fundamentally about how well a CHS or algorithmic agent achieves its operational goals. The other five are not as directly linked to operational goals but often affect CHS performance and/or perceptions of product/services that a CHS produces. Beyond those criteria, a full picture of the performance of a CHS or algorithmic agent requires metrics related to individual elements of the work system framework (e.g., accuracy and timeliness of the information in the CHS). Different metrics for the various work system elements have been discussed elsewhere, but only criteria that apply to an entire CHS will be mentioned here.

- **Efficiency.** Both a CHS and an algorithmic agent that supports it should be efficient and should support the efficiency of related work systems, i.e., the minimally wasteful production of the product/services of those work systems.
  
- **Effectiveness.** Both a CHS and an algorithmic agent that supports it should meet or exceed expectations regarding effectiveness in satisfying needs and expectations of their customers, which may be sociotechnical or totally automated work systems.
  
- **Reliability.** Both a CHS and an algorithmic agent that supports it should be reliable and should support the reliability of related work systems.
  
- **Resilience.** Both a CHS and an algorithmic agent that supports it should be able to respond quickly and efficiently to unanticipated conditions, exceptions, and mishaps and should support the resilience of related work systems.
  
- **Equity.** Both a CHS and an algorithmic agent that supports it should operate in ways that are fair to stakeholders including CHS participants, CHS customers, and others affected directly and indirectly. Equity often presents challenges because designers, managers, and others may be unaware of their own biases and biases built into the CHS and/or the algorithmic agent.
  
- **Engagement.** CHSs and algorithmic agents should engage CHS participants wherever that might maximize benefits from their insights or might make their work environments healthier, more satisfying, and more productive.
  
- **Empathy.** CHSs and algorithmic agents should reflect realistic consideration of the goals, capabilities, health, and comfort of CHS participants and customers that use the CHS's product/services. Lack of such empathy could have negative impacts on CHS participants, on the CHS's operational performance, on product/services that it produces, or on customers who receive and use its product/services.
  
- **Explainability.** Both a CHS and an algorithmic agent that supports it should be understandable by people who are affected by it and/or by product/services that it produces. This issue has been discussed widely in regard to Al applications whose outputs cannot be linked in an understandable way to inputs related to individuals, groups, or situations. Inadequate explainability results in confusions, errors, misuse of product/services, and possible harm to people who are affected directly or indirectly.
  
- **Externalities.** Widespread attention to sustainability is a strong reminder that the evaluation of both CHSs and algorithmic agents should also consider identifiable externalities that may affect people or property not directly involved with the CHS or work systems that it supports.

Considering any of the above criteria might lead to otherwise neglected ideas for making CHSs smarter. For example, explicit consideration of equity or empathy might increase a CHS's ability to monitor and correct any unwanted biases in its treatment of specific stakeholders. Likewise, explicit consideration of explainability might help the CHS minimize difficulties in communicating input requirements or coordination requests with work system participants.

## 9. Conclusion: Toward Smarter Cyber-Human Systems

This paper defined cyber-human system and presented many suggestions for moving beyond typical concerns of IS engineering in efforts to make cyber-human systems smarter. Those suggestions include:

- Visualize IT-enabled systems as work systems described by the work system perspective, which is built around the definition of work, the work system framework, and the work system life cycle model (Section 2).
- Visualize smartness of systems and devices in terms of continuous design variables rather than treating smart as a simplistic yes/no characterization (Section 3).
- Consider smartness-related challenges related to individual elements of the work system framework (Section 4).
- Consider different roles that an algorithmic agent might play in a work system (Section 5.1).
- Consider whether/how different facets of work might be monitored, supported, or automated by an algorithmic agent (Section 5.2).
- Consider different responsibilities that might be delegated to algorithmic agents for specific facets of work system (Section 5.3).
- Consider different modes of human-machine engagement (Section 6.1).
- Consider different patterns of human-machine interaction (Section 6.2).
- Consider possibilities of enabling systems and devices to use various types of knowledge objects, either implicitly or explicitly (Section 7).
- Consider a broad range of evaluation criteria that might influence design decisions. (Section 8).

Each of those suggestions was fleshed out to illuminate the meaning and implications of the main topics covered. For example, instead of merely saying "think about systems as work systems," Section 2 summarized work system theory (Fig. 1) and then said more about the definition of work system (Section 2.1), a work system view of an enterprise (Section 2.2.), information systems and other special cases of work system (Section 2.3.), the work system method (Section 2.4.), the work system framework (Section 2.5.), the work system life cycle model (Section 2.6.), and cyber-human systems and algorithmic agents (Section 2.7.). The main points in other areas also were unpacked in various ways that were illustrated using concepts, figures, tables, and lists. Every section of this paper tried to go deeper than just identifying high level topics that are associated with computing or with human-computer interaction.

### 9.1 Key insights related to smartness

In combination, the ideas presented here lead to three overarching insights related to the smartness of cyber-human systems, of the algorithmic agents that they contain, and of the broader work systems in which they exist:

1. **The work system perspective can serve as a (metaphorical) "common denominator" in attempts to make cyber-human systems smarter.** The work system perspective evolved over three decades starting with textbooks in the 1990s that tried to articulate a set of ideas and a systems analysis approach that apply to all IT-enabled systems in organizational settings and that could be used by business students. This paper emphasized application of newer versions of those ideas to cyber-human systems and algorithmic agents, which are special cases within the work system, including special systems such as sociotechnical systems.

   The work system perspective is like a common denominator across all of those special cases because all specific instances of those special cases can be described in detail using properties of work systems, work system elements, and extensions of work system theory. CHSs are sociotechnical work systems because at least some of the activities are performed by people. Algorithmic agents that account for the "cyber" part of CHSs are also work systems, i.e., work systems whose activities are totally automated and for which the participant slot in the work system framework is blank. Describing CHSs and algorithmic agents using a reasonably rigorous language that also applies to the work systems that they serve is a potentially useful extension of IS engineering practices because it provides new ways to articulate and evaluate both system requirements and operational systems. It also potentially facilitates collaboration between business professionals and IT experts because its ideas can be understood and applied to situations of mutual interest by both groups.

2. **The real goal is smarter work systems.** This paper has focused on making CHSs smarter, but with full recognition that smarter CHSs may not generate better results because CHSs are components of larger work systems. Better results should come from making those larger work systems more efficient, more effective, and, ideally, better in terms of other evaluation criteria summarized in Section 8 (reliability, resilience, equity, engagement, and so on). Pursuing greater smartness of a work system might be framed as any combination of changing work system elements (activities, participants, information, and so on), improving existing CHSs and algorithmic agents, establishing more effective roles for algorithmic agents, changing the way algorithmic agents support facets of CHSs or work systems that they support, changing modes of engagement or patterns of human-machine interaction, and/or by using knowledge objects in different ways. Because the topic is systems whose various parts should be aligned, there is no way to guarantee that any particular category of change is either uniquely important or a magic bullet that will lead to better results in all or even most situations. For example, moving toward human-in-the-loop might increase efficiency in some situations but it might reduce efficiency in other situations.

3. **Smartness is a series of design choices, not just as a buzzword.** It is easy to dismiss attempts to use "smart" as a buzzword at the beginning of two-word terms such as smart city, smart highway, smart factory, smart phone, and so on. This paper's attention to different degrees of smartness applied to different capabilities showed that careful consideration of the smartness of devices and systems leads to a large number of design choices related to many concerns. The focal points for many of those design choices include topics that are not typical in the practice of IS engineering or in research related to IS engineering. For example, the topic of smartness is expanded to include four categories of smartness (information processing, action in the world, internal regulation, knowledge acquisition) that each include between five and seven separate types of capabilities each of which might be made smarter (or less smart, if appropriate) in any specific cyber-human system. More generally, Fig. 2 illustrates why many purportedly "smart" systems and devices are not so smart after all. The various design choices discussed here suggest many directions for making those systems smarter.

### 9.2 Next Steps

This exploratory paper has presented many ideas related to making CHSs smarter, but has not demonstrated that those ideas are useful in practice. Doing that calls for a combination of using those ideas in practice and performing empirical research about how IS engineering currently deals with related topics.

- **Techniques and tools for systems analysis.** A possible step forward is to incorporate some of this paper's ideas into systems analysis techniques and tools. The simplest version of that approach is simply to ask questions such as whether it is possible to make a planned or existing CHS smarter and to use this paper's ideas about smartness to consider possibilities that might not have been considered otherwise. The same general approach can be used for thinking about increasing smartness by adding new roles of algorithmic agents, by focusing on specific facets of work that might be enhanced, by considering ways to change the responsibilities of specific algorithmic agents, and by changing existing modes of engagement and interaction patterns within CHSs. Many variations on those ideas could be incorporated into systems analysis tools. For example, existing templates for the work system method (Section 2.4) could be extended by adding new questions and tabular forms that focus on possible benefits of increasing smartness in various aspects of CHSs or work systems that they support. Another possibility is to develop interactive tools that model aspects of the operation of CHSs and that provide convenient ways to express alternatives related to issues mentioned throughout this paper. That type of approach would be practical mainly in situations where developers and stakeholders are willing to explore design options instead of rushing toward agile approaches that aim at continual production of code.

- **Empirical research on systems analysis.** Empirical research could use various combinations of survey methods, interviews, and direct observation to determine the extent to which metaphors and operational concepts related to smartness are active concerns in IS development efforts. It seems likely that trying to be efficient and agile will play a much stronger role in most situations. However, the tremendous amount of focus and energy directed toward artificial intelligence in its various forms might lead to greater interest in identifying different types of intelligence and different ways to make CHSs smarter. The rapid pace of Al-related developments seems likely to overwhelm almost any prediction about how these ideas might be applied directly in those projects.

- **How much depth is needed?** This paper assumes that the IS engineering community should be dissatisfied with treating smartness as a buzzword that does not communicate a clear or consistent idea. Just defining smart in the context of CHSs is not enough. The underlying ideas need to be revealed so that the smartness of devices and systems will be a useful idea for designing and improving systems.

  Revealing the underlying ideas does not imply that they all must be used, however, just as there is no need to use most spreadsheet capabilities in spreadsheet applications. Ideally, a deep understanding of what smartness means for CHSs should help designers, managers, and other stakeholders think about the smartness of CHSs in whatever level of depth is most helpful for their purposes. They should be able to identify the aspects of smartness that seem most relevant to their own concerns and should pursue those ideas. Recognition of the many aspects of smartness could help them visualize possibilities that are practical today, and not just at some point in the future.